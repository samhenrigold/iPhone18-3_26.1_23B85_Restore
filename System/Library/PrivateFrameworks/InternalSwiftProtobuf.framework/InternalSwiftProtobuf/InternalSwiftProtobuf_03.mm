uint64_t sub_1AC47F808(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Google_Protobuf_Api.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Api.methods.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Api.options.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_Api.version.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void Google_Protobuf_Api.sourceContext.getter(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = 0xC000000000000000;
  v7 = 0xE000000000000000;
  if (v3)
  {
    v8 = v1[11];
  }

  else
  {
    v8 = 0;
  }

  if (v3)
  {
    v7 = v1[12];
    v9 = v1[13];
  }

  else
  {
    v9 = 0;
  }

  if (v3)
  {
    v6 = v1[14];
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v6;
  sub_1AC480274(v2, v3, v4, v5);
}

double sub_1AC480184@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Api.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC4801C8(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Api.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Api.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = v5;
  *(v1 + 88) = v5;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

void sub_1AC480274(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1AC4578F4(a3, a4);
  }
}

void sub_1AC4802C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1AC4513F8(a3, a4);
  }
}

void (*Google_Protobuf_Api.sourceContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v1[11];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v1[12];
    v11 = v1[13];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v1[14];
  }

  *v3 = v10;
  v3[1] = v9;
  v3[2] = v11;
  v3[3] = v8;
  sub_1AC480274(v4, v5, v6, v7);
  return sub_1AC480398;
}

void sub_1AC480398(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = (*a1)[2];
  if (a2)
  {

    v8 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v8, v9);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v10, v11, v12, v13);
    v4[11] = v6;
    v4[12] = v5;
    v4[13] = v7;
    v4[14] = v3;

    v14 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v16, v17, v18, v19);
    v4[11] = v6;
    v4[12] = v5;
    v4[13] = v7;
    v4[14] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_Api.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
}

uint64_t Google_Protobuf_Api.mixins.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Google_Protobuf_Api.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

void Google_Protobuf_Api.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

double Google_Protobuf_Api.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = v1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t Google_Protobuf_Method.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Method.requestTypeURL.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_Method.responseTypeURL.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_Method.options.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Google_Protobuf_Method.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void Google_Protobuf_Method.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
}

double Google_Protobuf_Method.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Mixin.name.setter()
{
  OUTLINED_FUNCTION_69();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Mixin.root.setter()
{
  OUTLINED_FUNCTION_69();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void Google_Protobuf_Mixin.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

double Google_Protobuf_Mixin.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

uint64_t static Google_Protobuf_Api._protobuf_nameMap.getter()
{
  if (qword_1EB557CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557FE0);
}

uint64_t Google_Protobuf_Api.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    result = v3(v2, v1);
    if (v0 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_36_0();
        v14();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_7();
        sub_1AC480BB4(v15, v16, v17, v18);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC480C34(v10, v11, v12, v13);
        break;
      case 5:
        v6 = OUTLINED_FUNCTION_7();
        sub_1AC480CB4(v6, v7, v8, v9);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_7();
        sub_1AC480D34(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_7();
        sub_1AC480DB4(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC480BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847A4();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Method, v8, a3, a4);
}

uint64_t sub_1AC480C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC480CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4860B4();
  return v7(a2 + 88, &type metadata for Google_Protobuf_SourceContext, v8, a3, a4);
}

uint64_t sub_1AC480D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC48484C();
  return v7(a2 + 48, &type metadata for Google_Protobuf_Mixin, v8, a3, a4);
}

uint64_t sub_1AC480DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 56, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC480E34(void *a1)
{
  v3 = v1;
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  if (!*(*(v3 + 16) + 16) || (sub_1AC50CFCC(), !v2))
  {
    v7 = *(v3 + 24);
    if (!*(v7 + 16) || (sub_1AC50C78C(v7, 3), !v2))
    {
      v8 = *(v3 + 40);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        MEMORY[0x1AC5B48A0](4);
        sub_1AC51EEB8();
      }

      sub_1AC4811B0(v3, a1);
      if (!v2)
      {
        if (*(*(v3 + 48) + 16))
        {
          sub_1AC50CE2C();
        }

        v10 = *(v3 + 56);
        if (v10)
        {
          v11 = *(v3 + 64);
          MEMORY[0x1AC5B48A0](7);
          v12 = 1;
          if (v10 == 2)
          {
            v12 = 2;
          }

          if (v11)
          {
            v13 = v12;
          }

          else
          {
            v13 = v10;
          }

          MEMORY[0x1AC5B48A0](v13);
        }

        sub_1AC4937B8(a1, *(v3 + 72), *(v3 + 80));
      }
    }
  }
}

void Google_Protobuf_Api.traverse<A>(visitor:)()
{
  v4 = v1;
  OUTLINED_FUNCTION_51_1();
  v6 = v5;
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v7 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v8(), (v4 = v1) == 0))
  {
    if (!*(__dst[2] + 16) || (v9 = *(v2 + 280), sub_1AC4847A4(), OUTLINED_FUNCTION_28(), v9(), (v4 = v1) == 0))
    {
      if (!*(__dst[3] + 16) || (v10 = *(v2 + 280), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), v10(), (v4 = v1) == 0))
      {
        OUTLINED_FUNCTION_29();
        if (!v11 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v12(), (v4 = v1) == 0))
        {
          sub_1AC481280(__dst, v6, v3, v2);
          if (!v4)
          {
            if (*(__dst[6] + 16))
            {
              v13 = *(v2 + 280);
              sub_1AC48484C();
              OUTLINED_FUNCTION_28();
              v13();
            }

            if (__dst[7])
            {
              *&v19 = __dst[7];
              BYTE8(v19) = __dst[8];
              v14 = *(v2 + 128);
              sub_1AC4848A0();
              OUTLINED_FUNCTION_28();
              v14();
            }

            v21 = *&__dst[9];
            v19 = *&__dst[9];
            sub_1AC4848F4(&v21, &v18);
            OUTLINED_FUNCTION_36_0();
            UnknownStorage.traverse<A>(visitor:)(v15, v16, v17);
            sub_1AC4513F8(v19, *(&v19 + 1));
          }
        }
      }
    }
  }
}

void *sub_1AC4811B0(void *result, void *a2)
{
  v3 = result[12];
  if (v3)
  {
    v5 = result[11];
    v6 = result[13];
    v7 = result[14];
    MEMORY[0x1AC5B48A0](5);
    memcpy(__dst, a2, sizeof(__dst));

    sub_1AC4578F4(v6, v7);
    sub_1AC4F5320(__dst, v5, v3, v6, v7);
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    sub_1AC4802C0(v5, v3, v6, v7);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC481280(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 96);
  if (v4)
  {
    v7 = *(result + 88);
    v11 = *(result + 104);
    v10[0] = v7;
    v10[1] = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4860B4();
    return v8(v10, 5, &type metadata for Google_Protobuf_SourceContext, v9, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Api.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v96 = *(v3 + 48);
  v94 = *(v3 + 56);
  v93 = *(v3 + 64);
  v102 = *(v3 + 88);
  v97 = *(v3 + 96);
  v101 = *(v3 + 104);
  v98 = *(v3 + 112);
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v95 = v2[6];
  v92 = v2[7];
  v13 = v2[11];
  v12 = v2[12];
  v14 = v1 == *v2 && *(v3 + 8) == v2[1];
  v99 = v2[13];
  v100 = v2[14];
  if (!v14 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC479974(v4, v9) & 1) == 0 || (sub_1AC477E08(v5, v8) & 1) == 0)
  {
    return 0;
  }

  if (v6 != v11 || v7 != v10)
  {
    OUTLINED_FUNCTION_19();
    if ((sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v97)
  {
    if (v12)
    {
      v16 = v102 == v13 && v97 == v12;
      if (v16 || (OUTLINED_FUNCTION_19(), (sub_1AC51F3D8() & 1) != 0))
      {
        v17 = OUTLINED_FUNCTION_5_1();
        sub_1AC480274(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_22_0();
        sub_1AC480274(v21, v22, v99, v100);
        v23 = OUTLINED_FUNCTION_5_1();
        sub_1AC480274(v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_24();
        sub_1AC4578F4(v27, v28);
        sub_1AC4578F4(v99, v100);
        v29 = OUTLINED_FUNCTION_24();
        v30 = MEMORY[0x1AC5B4070](v29);
        sub_1AC4513F8(v99, v100);
        v31 = OUTLINED_FUNCTION_24();
        sub_1AC4513F8(v31, v32);
        v33 = OUTLINED_FUNCTION_22_0();
        sub_1AC4802C0(v33, v34, v99, v100);

        v35 = OUTLINED_FUNCTION_24();
        sub_1AC4513F8(v35, v36);
        v37 = OUTLINED_FUNCTION_5_1();
        sub_1AC4802C0(v37, v38, v39, v40);
        if ((v30 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      v78 = OUTLINED_FUNCTION_5_1();
      sub_1AC480274(v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_22_0();
      sub_1AC480274(v82, v83, v99, v100);
      v84 = OUTLINED_FUNCTION_5_1();
      sub_1AC480274(v84, v85, v86, v87);
      v88 = OUTLINED_FUNCTION_22_0();
      sub_1AC4802C0(v88, v89, v99, v100);

      v90 = OUTLINED_FUNCTION_24();
      sub_1AC4513F8(v90, v91);
      v63 = OUTLINED_FUNCTION_5_1();
LABEL_26:
      sub_1AC4802C0(v63, v64, v65, v66);
      return 0;
    }

    v45 = OUTLINED_FUNCTION_5_1();
    sub_1AC480274(v45, v46, v47, v48);
    OUTLINED_FUNCTION_101();
    sub_1AC480274(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_5_1();
    sub_1AC480274(v53, v54, v55, v56);

    v57 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v57, v58);
LABEL_25:
    v59 = OUTLINED_FUNCTION_5_1();
    sub_1AC4802C0(v59, v60, v61, v62);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_101();
    goto LABEL_26;
  }

  sub_1AC480274(v102, 0, v101, v98);
  if (v12)
  {
    OUTLINED_FUNCTION_101();
    sub_1AC480274(v41, v42, v43, v44);
    goto LABEL_25;
  }

  sub_1AC480274(v13, 0, v99, v100);
  sub_1AC4802C0(v102, 0, v101, v98);
LABEL_28:
  if ((sub_1AC47B418(v96, v95) & 1) != 0 && sub_1AC46DBAC(v94, v93, v92))
  {
    v67 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v67, v68);
    v69 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v69, v70);
    v71 = OUTLINED_FUNCTION_52();
    v72 = MEMORY[0x1AC5B4070](v71);
    v73 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v73, v74);
    v75 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v75, v76);
    return v72 & 1;
  }

  return 0;
}

uint64_t Google_Protobuf_Api.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC480E34(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

void *sub_1AC4817B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  v17 = OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30);
  sub_1AC514E88(v17);
  if (v8)
  {
    v18 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v18, v19, v20, v21, v22, v23, v24, v25, v29);
}

void *sub_1AC481800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v27);
  v17 = OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30);
  sub_1AC4838E0(v17);
  if (v8)
  {
    v18 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v18, v19, v20, v21, v22, v23, v24, v25, v29);
}

void *sub_1AC481860(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC512FD4();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC4818A8(void *a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  switch(a3 >> 62)
  {
    case 1uLL:
      v18 = a2;
      v19 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
LABEL_6:
      if (v18 != v19)
      {
        goto LABEL_7;
      }

      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22);
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22);
      }

LABEL_7:
      v10 = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22);
  }
}

void *sub_1AC48196C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC513D8C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC4819CC(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30);
}

void *sub_1AC481A34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4ACF3C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC481A7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4B8950();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC481ADC(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30);
}

void *sub_1AC481BEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4B7050();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC481C98(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v34 = v1;
  if (v1[4])
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    MEMORY[0x1AC5B48A0](2);
    memcpy(__srca, __dst, sizeof(__srca));
    v4 = (v2 + 32);
    v5 = v3 - 1;
    while (1)
    {
      memcpy(v45, v4, sizeof(v45));
      memcpy(v44, __srca, sizeof(v44));
      if (v45[3])
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485754(v45, v43);
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485754(v45, v43);
      }

      if (v45[5])
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51EEB8();
      }

      if (v45[7])
      {
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

      v6 = v45[8];
      if (v45[8])
      {
        v38 = v5;
        v39 = v4;
        v35 = v45[10];
        v36 = v45[9];
        v37 = v45[11];
        v7 = LOBYTE(v45[12]);
        v8 = BYTE1(v45[12]);
        v9 = v45[13];
        v10 = v45[14];
        v11 = v45[15];
        v12 = WORD2(v45[16]);
        v13 = LODWORD(v45[16]);
        MEMORY[0x1AC5B48A0](4);
        memcpy(v43, v44, 0x48uLL);
        if (v7 != 2)
        {
          MEMORY[0x1AC5B48A0](33);
          sub_1AC51F488();
        }

        if (v8 != 3)
        {
          MEMORY[0x1AC5B48A0](34);
          MEMORY[0x1AC5B48A0](v8);
        }

        if (v11)
        {
          v14 = v13 | (v12 << 32);
          MEMORY[0x1AC5B48A0](35);
          memcpy(v41, v43, 0x48uLL);
          if (v13 != 4)
          {
            MEMORY[0x1AC5B48A0](1);
            MEMORY[0x1AC5B48A0](v13);
          }

          if (BYTE1(v13) != 3)
          {
            MEMORY[0x1AC5B48A0](2);
            MEMORY[0x1AC5B48A0](BYTE1(v13));
          }

          if (BYTE2(v13) != 3)
          {
            MEMORY[0x1AC5B48A0](3);
            MEMORY[0x1AC5B48A0](BYTE2(v13));
          }

          if (BYTE3(v13) != 3)
          {
            MEMORY[0x1AC5B48A0](4);
            MEMORY[0x1AC5B48A0](qword_1AC520440[SBYTE3(v13)]);
          }

          if (BYTE4(v14) != 3)
          {
            MEMORY[0x1AC5B48A0](5);
            MEMORY[0x1AC5B48A0](BYTE4(v14));
          }

          if (BYTE5(v14) != 3)
          {
            MEMORY[0x1AC5B48A0](6);
            MEMORY[0x1AC5B48A0](BYTE5(v14));
          }

          sub_1AC4858A0(&v45[8], v40);
          v15 = OUTLINED_FUNCTION_100();
          sub_1AC485860(v15, v16, v11);
          sub_1AC5175D4(v41, 1000, 10001, v11);
          sub_1AC4937B8(v41, v9, v10);
          v5 = v38;
          v4 = v39;
          v22 = OUTLINED_FUNCTION_100();
          sub_1AC485714(v22, v23, v11);
          memcpy(v43, v41, 0x48uLL);
        }

        else
        {
          v17 = v45[9];
          v18 = v45[10];
          v19 = v45[13];
          v20 = v45[14];
          v21 = v45[15];

          sub_1AC4578F4(v17, v18);

          sub_1AC485860(v19, v20, v21);
          v5 = v38;
          v4 = v39;
        }

        if (*(v6 + 16))
        {
          sub_1AC50D0A4();
        }

        sub_1AC5175D4(v43, 1000, 0x20000000, v37);
        sub_1AC4937B8(v43, v36, v35);
        sub_1AC4575D8(&v45[8], &qword_1EB5580B8, &qword_1AC5203C0);
        memcpy(v44, v43, sizeof(v44));
      }

      if (BYTE6(v45[16]) != 2)
      {
        MEMORY[0x1AC5B48A0](5);
        sub_1AC51F488();
      }

      if (HIBYTE(v45[16]) != 2)
      {
        MEMORY[0x1AC5B48A0](6);
        sub_1AC51F488();
      }

      switch(v45[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_44;
        case 2:
          v24 = *(v45[0] + 16);
          v25 = *(v45[0] + 24);
LABEL_44:
          if (v24 != v25)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 3:
          goto LABEL_46;
        default:
          if ((v45[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_46;
          }

LABEL_45:
          sub_1AC51EC58();
LABEL_46:
          sub_1AC4857B0(v45);
          if (!v5)
          {
            memcpy(__dst, v44, sizeof(__dst));
            v1 = v34;
            goto LABEL_49;
          }

          memcpy(__srca, v44, sizeof(__srca));
          --v5;
          v4 += 136;
          break;
      }
    }
  }

LABEL_49:
  v26 = *(v1 + 7);
  v43[0] = *(v1 + 5);
  v43[1] = v26;
  v43[2] = *(v1 + 9);
  *(&v43[2] + 15) = *(v1 + 87);
  if (*&v43[0])
  {
    v45[0] = *&v43[0];
    v27 = *(v1 + 4);
    *&v45[1] = *(v1 + 3);
    *&v45[3] = v27;
    *&v45[5] = *(v1 + 5);
    *(&v45[6] + 7) = *(v1 + 95);
    MEMORY[0x1AC5B48A0](3);
    memcpy(v42, __dst, sizeof(v42));
    *__srca = v43[0];
    *&__srca[16] = v43[1];
    *&__srca[32] = v43[2];
    *&__srca[47] = *(&v43[2] + 15);
    sub_1AC485804(__srca, v41);
    sub_1AC4B9710();
    sub_1AC4575D8(v43, &qword_1EB5580B0, &qword_1AC5203B8);
    memcpy(__dst, v42, sizeof(__dst));
    v1 = v34;
  }

  v28 = v1[1];
  v29 = v1[2];
  switch(v29 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_56;
    case 2uLL:
      v30 = *(v28 + 16);
      v31 = *(v28 + 24);
LABEL_56:
      if (v30 != v31)
      {
        goto LABEL_57;
      }

      return memcpy(__src, __dst, 0x48uLL);
    case 3uLL:
      return memcpy(__src, __dst, 0x48uLL);
    default:
      if ((v29 & 0xFF000000000000) == 0)
      {
        return memcpy(__src, __dst, 0x48uLL);
      }

LABEL_57:
      sub_1AC51EC58();
      return memcpy(__src, __dst, 0x48uLL);
  }
}

void *sub_1AC482330(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4B9710();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482378(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4AE344();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC4823D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4A8AC4();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4A95A8();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482468(void *a1)
{
  OUTLINED_FUNCTION_63(__src);
  if (v1[3])
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_36_0();
    sub_1AC51EEB8();
  }

  v3 = *(v1 + 3);
  v12 = *(v1 + 2);
  v13 = v3;
  v14[0] = *(v1 + 4);
  *(v14 + 14) = *(v1 + 78);
  if (v12)
  {
    v16 = v12;
    v17 = *(v1 + 5);
    v18 = *(v1 + 7);
    *v19 = *(v1 + 9);
    *&v19[14] = *(v1 + 86);
    MEMORY[0x1AC5B48A0](2);
    v10[0] = v12;
    v10[1] = v13;
    v11[0] = v14[0];
    *(v11 + 14) = *(v14 + 14);
    sub_1AC4859C0(v10, &v9);
    sub_1AC4825D4(__src);
    sub_1AC4575D8(&v12, &qword_1EB5580C0, &unk_1AC520E20);
  }

  v4 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2uLL:
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
LABEL_10:
      if (v6 != v7)
      {
        goto LABEL_11;
      }

      return memcpy(a1, __src, 0x48uLL);
    case 3uLL:
      return memcpy(a1, __src, 0x48uLL);
    default:
      if ((v5 & 0xFF000000000000) == 0)
      {
        return memcpy(a1, __src, 0x48uLL);
      }

LABEL_11:
      sub_1AC51EC58();
      return memcpy(a1, __src, 0x48uLL);
  }
}

void *sub_1AC4825D4(void *a1)
{
  OUTLINED_FUNCTION_63(__src);
  v3 = v1[6];
  if (v3)
  {
    MEMORY[0x1AC5B48A0](1);
    memcpy(__dst, __src, sizeof(__dst));
    v4 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v4, v5);

    sub_1AC4BBFB4();
    v6 = OUTLINED_FUNCTION_100();
    sub_1AC485714(v6, v7, v3);
    memcpy(__src, __dst, sizeof(__src));
  }

  if (*(*v1 + 16))
  {
    sub_1AC50D0A4();
  }

  sub_1AC5175D4(__src, 1000, 0x20000000, v1[3]);
  sub_1AC4937B8(__src, v1[1], v1[2]);
  return memcpy(a1, __src, 0x48uLL);
}

void *sub_1AC48270C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4AA0CC();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482838(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4A49BC();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482898(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4BE6F8();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4ABE50();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC4829E4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  sub_1AC4A6904(a4);
  sub_1AC4937B8(v22, a2, a3);
  return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v21);
}

void *sub_1AC482B24(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30);
}

void *sub_1AC482B74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4A7D38();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482C1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4BD88C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482D3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
  sub_1AC4BF3B0();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28);
}

void *sub_1AC482D84(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_63(__src);
  v8 = *(a2 + 16);
  if (v8)
  {
    MEMORY[0x1AC5B48A0](1);
    memcpy(__dst, __src, sizeof(__dst));
    v9 = (a2 + 32);
    for (i = v8 - 1; ; --i)
    {
      memcpy(v18, v9, 0xB1uLL);
      memcpy(v15, __dst, sizeof(v15));
      sub_1AC485F9C(v18, v14);
      sub_1AC4A49BC();
      sub_1AC485FF8(v18);
      if (!i)
      {
        break;
      }

      memcpy(__dst, v15, sizeof(__dst));
      v9 += 184;
    }

    memcpy(__src, v15, sizeof(__src));
  }

  switch(a4 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_11;
    case 2uLL:
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);
LABEL_11:
      if (v11 != v12)
      {
        goto LABEL_12;
      }

      return memcpy(a1, __src, 0x48uLL);
    case 3uLL:
      return memcpy(a1, __src, 0x48uLL);
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return memcpy(a1, __src, 0x48uLL);
      }

LABEL_12:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return memcpy(a1, __src, 0x48uLL);
  }
}

void *sub_1AC482F98()
{
  OUTLINED_FUNCTION_51_1();
  v3 = v2;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_63(v17);
  if (v4 != 0.0)
  {
    v5 = sub_1AC4DF9DC(v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v13 = *(v1 + 16);
      v14 = *(v1 + 24);
LABEL_8:
      if (v13 != v14)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16);
      }

LABEL_9:
      OUTLINED_FUNCTION_23_0(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
      LODWORD(v5) = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16);
  }
}

void *sub_1AC483190()
{
  OUTLINED_FUNCTION_51_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_63(v17);
  if (v3)
  {
    OUTLINED_FUNCTION_56();
    v4 = sub_1AC4DF9DC(v12);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v13 = *(v1 + 16);
      v14 = *(v1 + 24);
LABEL_8:
      if (v13 != v14)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16);
      }

LABEL_9:
      OUTLINED_FUNCTION_23_0(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
      LODWORD(v4) = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  }
}

void *sub_1AC483458()
{
  OUTLINED_FUNCTION_65_0();
  v3 = v2;
  v11 = OUTLINED_FUNCTION_6_1(v4, v2, v5, v6, v7, v8, v9, v10, v23);
  if (v3)
  {
    v19 = OUTLINED_FUNCTION_56();
    MEMORY[0x1AC5B48A0](v19);
    v11 = sub_1AC51F488();
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_67();
      goto LABEL_8;
    case 2uLL:
      v20 = *(v1 + 16);
      v21 = *(v1 + 24);
LABEL_8:
      if (v20 != v21)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24);
      }

LABEL_9:
      LODWORD(v11) = OUTLINED_FUNCTION_50(v11);
      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24);
  }
}

uint64_t sub_1AC483590(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC480E34(v3);
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Method._protobuf_nameMap.getter()
{
  if (qword_1EB557CE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558000);
}

uint64_t Google_Protobuf_Method.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    result = v3(v2, v1);
    if (v0 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_36_0();
        v6();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_7();
        sub_1AC4837E0(v7, v8, v9, v10);
        break;
      case 7:
        v11 = OUTLINED_FUNCTION_7();
        sub_1AC483860(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC4837E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 64, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC483860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 72, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC4838E0(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_11_0();
  if (v5)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  OUTLINED_FUNCTION_11_0();
  if (v6)
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  if (*(v3 + 32))
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_11_0();
  if (v7)
  {
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  if (*(v3 + 56))
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  v8 = *(v3 + 64);
  if (!*(v8 + 16) || (sub_1AC50C78C(v8, 6), !v2))
  {
    v9 = *(v3 + 72);
    if (v9)
    {
      v10 = *(v3 + 80);
      MEMORY[0x1AC5B48A0](7);
      v11 = 1;
      if (v9 == 2)
      {
        v11 = 2;
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      MEMORY[0x1AC5B48A0](v12);
    }

    sub_1AC4937B8(a1, *(v3 + 88), *(v3 + 96));
  }
}

void Google_Protobuf_Method.traverse<A>(visitor:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v52 = *(v1 + 32);
  v7 = *(v1 + 40);
  v51 = *(v1 + 56);
  v49 = *(v1 + 64);
  v50 = *(v1 + 48);
  v48 = *(v1 + 72);
  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  OUTLINED_FUNCTION_29();
  if (v12)
  {
    v47 = v7;
    v13 = v8;
    v14 = v9;
    OUTLINED_FUNCTION_37();
    v15 = a1;
    v17 = v16;
    OUTLINED_FUNCTION_75();
    v18();
    if (v2)
    {
      return;
    }

    v10 = v17;
    a1 = v15;
    v9 = v14;
    v8 = v13;
    v7 = v47;
    v11 = v3;
  }

  v19 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v19 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_37();
    v20 = a1;
    v22 = v21;
    OUTLINED_FUNCTION_75();
    v23();
    if (v2)
    {
      return;
    }

    v10 = v22;
    a1 = v20;
    v11 = v3;
  }

  if (v52)
  {
    v3 = v7;
    OUTLINED_FUNCTION_37();
    v25 = v24;
    v27 = v26;
    v28();
    if (v2)
    {
      return;
    }

    v10 = v25;
    v7 = v3;
    v11 = v27;
  }

  v29 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v29 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    OUTLINED_FUNCTION_37();
    v31 = v30;
    OUTLINED_FUNCTION_75();
    v32();
    if (v2)
    {
      return;
    }

    v10 = v31;
    v11 = v3;
  }

  if (v51)
  {
    OUTLINED_FUNCTION_37();
    v34 = v33;
    v36 = v35;
    v37();
    if (v2)
    {
      return;
    }

    v10 = v34;
    v38 = v49;
    v11 = v36;
  }

  else
  {
    v38 = v49;
  }

  if (*(v38 + 16))
  {
    v39 = v8;
    v40 = *(v11 + 280);
    v41 = v10;
    v42 = v11;
    sub_1AC4847F8();
    OUTLINED_FUNCTION_37();
    v40();
    if (v2)
    {
      return;
    }

    v10 = v41;
    v8 = v39;
    v11 = v42;
  }

  v43 = v10;
  if (v48)
  {
    v44 = v8;
    v45 = *(v11 + 128);
    v46 = v11;
    sub_1AC4848A0();
    OUTLINED_FUNCTION_37();
    v45();
    if (v2)
    {
      return;
    }

    v8 = v44;
  }

  else
  {
    v46 = v11;
  }

  sub_1AC4578F4(v9, v8);
  UnknownStorage.traverse<A>(visitor:)(a1, v43, v46);
  sub_1AC4513F8(v9, v8);
}

uint64_t static Google_Protobuf_Method.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v34 = *(v3 + 56);
  v30 = *(v3 + 72);
  v29 = *(v3 + 80);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v33 = *(v2 + 56);
  v31 = *(v2 + 64);
  v32 = *(v3 + 64);
  v28 = *(v2 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v14 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    if (sub_1AC51F3D8() & 1) == 0 || ((v6 ^ v11))
    {
      return 0;
    }
  }

  if (v7 == v12 && v8 == v13)
  {
    if (v34 != v33)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (sub_1AC51F3D8() & 1) == 0 || ((v34 ^ v33))
    {
      return 0;
    }
  }

  if ((sub_1AC477E08(v32, v31) & 1) != 0 && sub_1AC46DBAC(v30, v29, v28))
  {
    v17 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v17, v18);
    v19 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v19, v20);
    v21 = OUTLINED_FUNCTION_52();
    v22 = MEMORY[0x1AC5B4070](v21);
    v23 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v23, v24);
    v25 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v25, v26);
    return v22 & 1;
  }

  return 0;
}

uint64_t Google_Protobuf_Method.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4838E0(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC48407C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4838E0(v3);
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Mixin._protobuf_nameMap.getter()
{
  if (qword_1EB557CE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558020);
}

uint64_t Google_Protobuf_Mixin.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    result = v3(v2, v1);
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_36_0();
      v6();
    }
  }

  return result;
}

void sub_1AC484254(uint64_t a1)
{
  OUTLINED_FUNCTION_11_0();
  if (v2)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  OUTLINED_FUNCTION_11_0();
  if (v3)
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  switch(v5 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2uLL:
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
LABEL_10:
      if (v6 != v7)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_Mixin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_51_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_29();
  if (!v6 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v7(), !v1))
  {
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v9(), !v1))
    {
      sub_1AC4578F4(v4, v5);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v10, v11, v12);
      sub_1AC4513F8(v4, v5);
    }
  }
}

uint64_t static Google_Protobuf_Mixin.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v6 || v5 != v7)
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    if ((sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  v10 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v10, v11);
  v12 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v12, v13);
  OUTLINED_FUNCTION_34_0();
  v14 = MEMORY[0x1AC5B4070]();
  v15 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v15, v16);
  v17 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v17, v18);
  return v14 & 1;
}

uint64_t Google_Protobuf_Mixin.hashValue.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC484254(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC48467C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC484254(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

BOOL sub_1AC48470C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return v4 == v5;
}

unint64_t sub_1AC4847A4()
{
  result = qword_1EB558040;
  if (!qword_1EB558040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558040);
  }

  return result;
}

unint64_t sub_1AC4847F8()
{
  result = qword_1EB558048;
  if (!qword_1EB558048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558048);
  }

  return result;
}

unint64_t sub_1AC48484C()
{
  result = qword_1EB558050;
  if (!qword_1EB558050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558050);
  }

  return result;
}

unint64_t sub_1AC4848A0()
{
  result = qword_1EB558058;
  if (!qword_1EB558058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558058);
  }

  return result;
}

unint64_t sub_1AC484950(uint64_t a1)
{
  result = sub_1AC484978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484978()
{
  result = qword_1EB558060;
  if (!qword_1EB558060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558060);
  }

  return result;
}

unint64_t sub_1AC4849F8()
{
  result = qword_1EB558068;
  if (!qword_1EB558068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558068);
  }

  return result;
}

unint64_t sub_1AC484A4C()
{
  result = qword_1EB558070;
  if (!qword_1EB558070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558070);
  }

  return result;
}

unint64_t sub_1AC484AA4()
{
  result = qword_1EB558078;
  if (!qword_1EB558078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558078);
  }

  return result;
}

unint64_t sub_1AC484AF8(uint64_t a1)
{
  result = sub_1AC484B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484B20()
{
  result = qword_1EB558080;
  if (!qword_1EB558080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558080);
  }

  return result;
}

unint64_t sub_1AC484BA0()
{
  result = qword_1EB558088;
  if (!qword_1EB558088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558088);
  }

  return result;
}

unint64_t sub_1AC484BF8()
{
  result = qword_1EB558090;
  if (!qword_1EB558090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558090);
  }

  return result;
}

unint64_t sub_1AC484C4C(uint64_t a1)
{
  result = sub_1AC484C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484C74()
{
  result = qword_1EB558098;
  if (!qword_1EB558098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558098);
  }

  return result;
}

uint64_t sub_1AC484CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC484D30()
{
  result = qword_1EB5580A0;
  if (!qword_1EB5580A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580A0);
  }

  return result;
}

unint64_t sub_1AC484D88()
{
  result = qword_1EB5580A8;
  if (!qword_1EB5580A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C14_SourceContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC484DFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1AC484E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC484EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1AC484EEC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AC484F64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AC484FA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1AC484FFC@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>)
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v9 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v8 = a3;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);
LABEL_9:
      result = sub_1AC485234(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a1 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        result = MEMORY[0x1AC5B4BA0](v4);
        __break(1u);
      }

      return result;
    default:
      __s2 = a3;
      v11 = a4;
      v12 = BYTE2(a4);
      v13 = BYTE3(a4);
      v14 = BYTE4(a4);
      v15 = BYTE5(a4);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a4)) == 0;
      goto LABEL_10;
  }
}

char *sub_1AC485168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AC51EB78();
  v11 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC51EB98();
  sub_1AC484FFC(&v13, v11, a4, a5);
  sub_1AC4513F8(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return (v12 & 1);
}

char *sub_1AC485234(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1AC51EB78();
  v8 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1AC51EB98();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_1AC4852EC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC48532C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

void sub_1AC48541C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || a4 != -1)
  {
    sub_1AC485440(a1, a2, a3, a4 & 1);
  }
}

void sub_1AC485440(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_1AC4578F4(v8, v9);
}

void sub_1AC4854E8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || a4 != -1)
  {
    sub_1AC48550C(result, a2, a3, a4 & 1);
  }
}

void sub_1AC48550C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_1AC4513F8(v8, v9);
}

uint64_t sub_1AC485714(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC485860(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4858A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5580B8, &qword_1AC5203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC4860B4()
{
  result = qword_1EB5580C8;
  if (!qword_1EB5580C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, ...)
{

  return sub_1AC51EC58();
}

uint64_t OUTLINED_FUNCTION_64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{

  return sub_1AC484FFC((v12 - 128), v9, v10, v11);
}

void OUTLINED_FUNCTION_90()
{

  JUMPOUT(0x1AC5B48D0);
}

void OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  sub_1AC4513F8(v14, a14);
}

void OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  sub_1AC4513F8(a19, a21);
}

uint64_t OUTLINED_FUNCTION_108_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  return sub_1AC4578F4(v14, a14);
}

void OUTLINED_FUNCTION_109_0()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1)
{

  return sub_1AC51EBA8();
}

void *OUTLINED_FUNCTION_111(void *a1)
{

  return memcpy(a1, v1, 0x67uLL);
}

uint64_t OUTLINED_FUNCTION_112()
{
}

void OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  sub_1AC48541C(a1, a2, v2, 255);
}

void *OUTLINED_FUNCTION_114(void *a1)
{

  return memcpy(a1, v1, 0x67uLL);
}

void sub_1AC486360(uint64_t a1)
{
  v4 = a1;
  if (BYTE1(a1) < a1)
  {
    v5 = -(a1 - BYTE1(a1));
  }

  else
  {
    v5 = BYTE1(a1) - a1;
  }

  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5 + 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC45AE04(v6 + v5 + 1, 1);
  OUTLINED_FUNCTION_17_2();
  v8 = sub_1AC48904C(&v20, v7 + 32, v3, v4);
  if (v8 <= v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 1)
  {
    v10 = *(v1 + 16);
    v11 = __OFADD__(v10, v8);
    v12 = v10 + v8;
    if (v11)
    {
      __break(1u);
LABEL_17:
      v13 = (v9 + 1);
      if (((v9 + 1) & 0x100) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    *(v1 + 16) = v12;
  }

  if (v8 != v3)
  {
LABEL_10:
    *v2 = v1;
    return;
  }

LABEL_13:
  if (v23)
  {
    goto LABEL_10;
  }

  v4 = *(v1 + 16);
  LODWORD(v3) = v21;
  v9 = v22;
  LODWORD(v12) = v22 == v21;
  if (v22 != v21)
  {
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:
  v14 = *(v1 + 24) >> 1;
  if (v14 < v4 + 1)
  {
    v19 = v12;
    v16 = v13;
    v17 = v9;
    sub_1AC45A78C();
    v9 = v17;
    v13 = v16;
    LODWORD(v12) = v19;
    v1 = v18;
    v14 = *(v18 + 24) >> 1;
  }

  while (1)
  {
    if (v4 >= v14)
    {
      *(v1 + 16) = v4;
      goto LABEL_18;
    }

    *(v1 + v4 + 32) = v9;
    if (v12)
    {
      *(v1 + 16) = v4 + 1;
      goto LABEL_10;
    }

    LODWORD(v12) = v13 == v3;
    if (v13 == v3)
    {
      v15 = 0;
      goto LABEL_25;
    }

    v15 = v13 + 1;
    if (((v13 + 1) & 0x100) != 0)
    {
      break;
    }

LABEL_25:
    ++v4;
    v9 = v13;
    v13 = v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1AC4864FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_1();
  if (__OFADD__(v9, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v7;
  sub_1AC45AE04(v9 + v6, 1);
  v12 = *v4;
  if (v5 == v10)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v12;
      return;
    }

    __break(1u);
  }

  v13 = *(v12 + 16);
  if ((*(v12 + 24) >> 1) - v13 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v12 + v13 + 32), (v11 + v10), v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v12 + 16) = v16;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1AC4865D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC48EEE0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1AC486674(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC48EEF8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F0, &unk_1AC5205C0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

double AsyncSequence<>.binaryProtobufDelimitedMessages<A>(of:extensions:partial:options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v23 = a8;
  v13 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v18 = *v17;
  v19 = *(v17 + 8);
  (*(v20 + 16))(&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v21);
  sub_1AC450324(a2, v26);
  v24 = v18;
  v25 = v19;
  *&result = AsyncMessageSequence.init(base:extensions:partial:options:)(v26, v13, &v24, a5, a6, a7, v23, x8_0).n128_u64[0];
  return result;
}

__n128 AsyncMessageSequence.init(base:extensions:partial:options:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v16 = *(a3 + 8);
  OUTLINED_FUNCTION_7_1();
  (*(v17 + 32))(a8);
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v18 = type metadata accessor for AsyncMessageSequence(0, v23);
  v19 = a8 + v18[13];
  result = *a1;
  v21 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v21;
  *(v19 + 32) = *(a1 + 32);
  *(a8 + v18[14]) = a2;
  v22 = a8 + v18[15];
  *v22 = v15;
  *(v22 + 8) = v16;
  return result;
}

uint64_t AsyncMessageSequence.AsyncIterator.iterator.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1AC51F228();
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t AsyncMessageSequence.AsyncIterator.iterator.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_1AC51F228();
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t AsyncMessageSequence.AsyncIterator.options.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 60));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_1AC486AC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a4;
  v29 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, AssociatedTypeWitness);
  sub_1AC51F228();
  OUTLINED_FUNCTION_0();
  (*(v22 + 8))(a9);
  OUTLINED_FUNCTION_7_1();
  (*(v23 + 32))(a9, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(a9, 0, 1, AssociatedTypeWitness);
  v30[0] = a5;
  v30[1] = a6;
  v30[2] = a7;
  v30[3] = a8;
  v24 = type metadata accessor for AsyncMessageSequence.AsyncIterator(0, v30);
  v25 = a9 + v24[13];
  result = *a2;
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  *(v25 + 32) = *(a2 + 32);
  *(a9 + v24[14]) = a3;
  v28 = a9 + v24[15];
  *v28 = v17;
  *(v28 + 8) = v29;
  return result;
}

uint64_t sub_1AC486C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_1AC486C34()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *(v1 + 32);
  v3 = *(v1 + 16);
  v0[6] = 0;
  v0[7] = 0;
  v0[5] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(v2, 1, AssociatedTypeWitness))
  {
    v5 = v0[1];

    return v5(0, 1);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    v0[9] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_3_3(v8);

    return MEMORY[0x1EEE6D8C8](v0 + 11, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1AC486D78()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1AC487150;
  }

  else
  {
    v7 = sub_1AC486E78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC486E78()
{
  v34 = v2;
  v4 = *(v2 + 48);
  if (*(v2 + 89))
  {
    if (v4)
    {
LABEL_3:
      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_0();
      (*(v5 + 8))(AssociatedTypeWitness);
      OUTLINED_FUNCTION_12_1();
      __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
      v9 = sub_1AC4878A4();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v9);
      *v10 = 1;
      goto LABEL_6;
    }

LABEL_14:
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X3, X16 }
  }

  if (v4 >= 0x1D)
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_0();
    (*(v11 + 8))(AssociatedTypeWitness);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
    v15 = sub_1AC488590();
    OUTLINED_FUNCTION_11(&type metadata for SwiftProtobufError, v15);
    v17 = v16;
    v31 = 1;
    OUTLINED_FUNCTION_23_1();
    v33 = 119;
    type metadata accessor for SwiftProtobufError.Storage();
    swift_allocObject();
    *v17 = sub_1AC4F9648(&v31, v3 + 86, 0x80000001AC52DFA0, v32);
LABEL_6:
    swift_willThrow();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(v2 + 56) | ((*(v2 + 88) & 0x7F) << v4);
  if ((*(v2 + 88) & 0x80) == 0)
  {
    goto LABEL_14;
  }

  *(v2 + 48) = v4 + 7;
  *(v2 + 56) = v20;
  v21 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v2 + 64) = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness))
  {
    goto LABEL_3;
  }

  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_21_1();
  *(v2 + 72) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_3_3(v22);
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x1EEE6D8C8](v24, v25, v26);
}

uint64_t AsyncMessageSequence.AsyncIterator.readBytes(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_1AC48718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = MEMORY[0x1E69E7CC0];
  v4 = v3[3];
  if (v4 >= 0x1000000)
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = v3[3];
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v4)
    {
LABEL_16:

      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X2, X16 }
    }

    v6 = sub_1AC51F098();
    *(v6 + 16) = v5;
    bzero((v6 + 32), v5);
    v7 = v3[3];
    while (1)
    {
      v3[6] = v7;
      v8 = *(v6 + 16);
      v9 = v8 >= v7 ? v7 : *(v6 + 16);
      v3[8] = 0;
      v3[9] = v6;
      v3[7] = v9;
      if (v9)
      {
        break;
      }

      if (v7 >= v8)
      {

        sub_1AC466118(v14);
      }

      else
      {
        v10 = sub_1AC487838(0, 0, v6);
        sub_1AC4864FC(v10, v11, v12, v13);
      }

      v16 = v3[6];
      v15 = v3[7];
      v17 = __OFSUB__(v16, v15);
      v7 = v16 - v15;
      if ((v7 < 0) ^ v17 | (v7 == 0))
      {
        goto LABEL_16;
      }
    }

    v20 = v3[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness))
    {

      v22 = sub_1AC4878A4();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v22);
      *v23 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    v3[10] = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_4_2(v26);
    OUTLINED_FUNCTION_16_2();
  }

  return MEMORY[0x1EEE6D8C8](a1, a2, a3);
}

uint64_t sub_1AC487400()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    v7 = sub_1AC48776C;
  }

  else
  {
    v7 = sub_1AC487508;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AC487508()
{
  v1 = *(v0 + 96);
  if (*(v0 + 97))
  {
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AC48857C();
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v6 = *(v0 + 64);
  v7 = *(v5 + 16);
  if (v6 >= v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + v6 + 32) = v1;
    v8 = v6 + 1;
    for (i = *(v0 + 56); ; *(v0 + 56) = i)
    {
      *(v0 + 64) = v8;
      *(v0 + 72) = v5;
      if (v8 != i)
      {
        break;
      }

      if (i >= v7)
      {

        sub_1AC466118(v14);
      }

      else
      {
        v10 = sub_1AC487838(0, i, v5);
        sub_1AC4864FC(v10, v11, v12, v13);
      }

      v16 = *(v0 + 48);
      v15 = *(v0 + 56);
      v17 = v16 - v15;
      if (v16 <= v15)
      {

        OUTLINED_FUNCTION_16_2();

        __asm { BRAA            X2, X16 }
      }

      v8 = 0;
      *(v0 + 48) = v17;
      v7 = *(v5 + 16);
      if (v7 >= v17)
      {
        i = v17;
      }

      else
      {
        i = *(v5 + 16);
      }
    }

    v18 = *(v0 + 40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness))
    {
LABEL_16:

      v20 = sub_1AC4878A4();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v20);
      *v21 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    *(v0 + 80) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_4_2(v26);
    OUTLINED_FUNCTION_16_2();
  }

  return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, v3, v4);
}

uint64_t sub_1AC48776C()
{
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_10_3();

  return v0();
}

uint64_t sub_1AC4877C8(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1AC51F098();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

unint64_t sub_1AC487838(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1AC4878A4()
{
  result = qword_1EB5580D0;
  if (!qword_1EB5580D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580D0);
  }

  return result;
}

uint64_t AsyncMessageSequence.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v4;
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v1;
  v5[1] = sub_1AC487990;

  return sub_1AC486C20(v3);
}

uint64_t sub_1AC487990(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_14_1();
  v6 = v5;
  OUTLINED_FUNCTION_6_2();
  *v7 = v6;
  v8 = *v3;
  *v7 = *v3;
  *(v6 + 144) = v9;
  *(v6 + 152) = v2;

  if (v2)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v6 + 184) = a2;
    v12 = OUTLINED_FUNCTION_20_1();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC487ACC()
{
  v41 = v0;
  if (*(v0 + 184))
  {
    v2 = *(v0 + 128);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1AC51F228();
    OUTLINED_FUNCTION_0();
    (*(v4 + 8))(v2);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, AssociatedTypeWitness);
    OUTLINED_FUNCTION_12_1();
LABEL_3:
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_10_3();
    goto LABEL_7;
  }

  v12 = *(v0 + 144);
  if (v12 >> 31)
  {
    v13 = *(v0 + 128);
    v14 = swift_getAssociatedTypeWitness();
    sub_1AC51F228();
    OUTLINED_FUNCTION_0();
    (*(v15 + 8))(v13);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
    v19 = sub_1AC488590();
    OUTLINED_FUNCTION_11(&type metadata for SwiftProtobufError, v19);
    v21 = v20;
    v38 = 0;
    OUTLINED_FUNCTION_23_1();
    v40 = 178;
    type metadata accessor for SwiftProtobufError.Storage();
    swift_allocObject();
    *v21 = sub_1AC4F9648(&v38, v1 | 0xC, 0x80000001AC52DF60, v39);
    swift_willThrow();
    goto LABEL_6;
  }

  if (!v12)
  {
    v29 = *(v0 + 152);
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    v32 = *(v0 + 112);
    v33 = *(v31 + 24);
    *(v0 + 104) = MEMORY[0x1E69E7CC0];
    sub_1AC450324(v30 + *(v31 + 52), v0 + 56);
    v34 = *(v30 + *(v31 + 56));
    v35 = (v30 + *(v31 + 60));
    v36 = *v35;
    LOBYTE(v35) = *(v35 + 8);
    *&v39[0] = v36;
    BYTE8(v39[0]) = v35;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    Message.init<A>(serializedBytes:extensions:partial:options:)(v0 + 104, v0 + 56, v34, v39, v33, v37, *(v31 + 40), &protocol witness table for <A> [A], v32);
    if (!v29)
    {
      v8 = OUTLINED_FUNCTION_22_2();
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_9_1();
LABEL_7:
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X1, X16 }
  }

  v24 = swift_task_alloc();
  *(v0 + 160) = v24;
  *v24 = v0;
  v24[1] = sub_1AC487DD8;
  OUTLINED_FUNCTION_18_1();

  return AsyncMessageSequence.AsyncIterator.readBytes(_:)(v25, v26);
}

uint64_t sub_1AC487DD8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v8 = v7;
  *(v5 + 168) = v1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 176) = a1;
    v11 = OUTLINED_FUNCTION_20_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC487F0C()
{
  v18 = v0;
  v0[12] = v0[22];
  v1 = v0[21];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = *(v3 + 24);
  sub_1AC450324(v2 + *(v3 + 52), (v0 + 2));
  v6 = *(v2 + *(v3 + 56));
  v7 = (v2 + *(v3 + 60));
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  v16 = v8;
  v17 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  Message.init<A>(serializedBytes:extensions:partial:options:)((v0 + 12), (v0 + 2), v6, &v16, v5, v9, *(v3 + 40), &protocol witness table for <A> [A], v4);
  if (!v1)
  {
    v11 = OUTLINED_FUNCTION_22_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_10_3();

  return v10();
}

uint64_t sub_1AC488028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC4880D0;

  return AsyncMessageSequence.AsyncIterator.next()();
}

uint64_t sub_1AC4880D0()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;

  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t sub_1AC4881B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1AC488284;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1AC488284()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_10_3();

  return v7();
}

double AsyncMessageSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v19 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_1AC51F168();
  sub_1AC450324(v3 + *(a1 + 52), v22);
  v15 = *(v3 + *(a1 + 56));
  v16 = v3 + *(a1 + 60);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v20 = v17;
  v21 = v16;
  *&result = sub_1AC486AC0(v14, v22, v15, &v20, v6, *(a1 + 24), v11, *(a1 + 40), a2).n128_u64[0];
  return result;
}

uint64_t sub_1AC488508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = AsyncMessageSequence.makeAsyncIterator()(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v2, a1, v4);
}

unint64_t sub_1AC488590()
{
  result = qword_1EB5580D8[0];
  if (!qword_1EB5580D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5580D8);
  }

  return result;
}

void sub_1AC48860C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1AC488A0C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AC4886AC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1AC488808(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v17 + 32) = 0;
              *v17 = 0u;
              *(v17 + 16) = 0u;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1AC488A0C(uint64_t a1)
{
  if (!qword_1EB558160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB558168, qword_1AC520588);
    v1 = sub_1AC51F228();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB558160);
    }
  }
}

void sub_1AC488A70(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1AC51F228();
  if (v1 <= 0x3F)
  {
    sub_1AC488A0C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AC488B30(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(result - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if (v7 < 0x7FFFFFFE)
    {
      v18 = *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v6, result);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v10 = ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v10 <= 3)
    {
      v11 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = a1[v10];
        if (!a1[v10])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v14 = *&a1[v10];
        if (!*&a1[v10])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *&a1[v10];
        if (!v14)
        {
          goto LABEL_31;
        }

LABEL_27:
        v15 = (v14 - 1) << (8 * v10);
        if (v10 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1AC488CEC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = 0;
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (v9)
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v13 = ((v12 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v11 >= a2)
  {
    switch(v8)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v10 < 0x7FFFFFFE)
          {
            v21 = &a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v21 + 32) = 0;
              *v21 = 0u;
              *(v21 + 16) = 0u;
              *v21 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v21 + 24) = a2;
            }
          }

          else if (v10 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2 + 1, v9, AssociatedTypeWitness);
          }

          else
          {
            if (v12 <= 3)
            {
              v18 = ~(-1 << (8 * v12));
            }

            else
            {
              v18 = -1;
            }

            if (v12)
            {
              v19 = v18 & (~v10 + a2);
              if (v12 <= 3)
              {
                v20 = v12;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v12);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v11 + a2;
    bzero(a1, v13);
    if (v13 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v13 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v8)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1AC488FF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1AC51EF98();
    OUTLINED_FUNCTION_15_3(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1AC5B43A0](15, a1 >> 16);
    OUTLINED_FUNCTION_15_3(v3);
    return v4 | 8;
  }
}

uint64_t sub_1AC48904C(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
    v5 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_14:
    v6 = a4;
LABEL_16:
    *result = a4;
    *(result + 2) = v6;
    *(result + 3) = v5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v5 = 1;
        a3 = v4;
        goto LABEL_16;
      }

      v5 = v6 == (a4 & 0xFF00) >> 8;
      if (v6 == (a4 & 0xFF00) >> 8)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 + 1;
        if (((v6 + 1) & 0x100) != 0)
        {
          goto LABEL_18;
        }
      }

      *(a2 + v4++) = v6;
      v6 = v8;
      if (v7 == a3)
      {
        v6 = v8;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC48910C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
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

uint64_t sub_1AC489160(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 72) = a2;
    }
  }

  return result;
}

void sub_1AC4891EC(_DWORD *a1)
{
  if (*(v1 + 33) == 5)
  {
    v4 = sub_1AC4677EC(a1);
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489228()
{
  OUTLINED_FUNCTION_2_3();
  if (v5)
  {
    OUTLINED_FUNCTION_17_0();
    v9 = sub_1AC453530(v8);
    if (v1)
    {
      return;
    }

    if (v9)
    {
      if ((v9 & 3) == 0)
      {
        v13 = v2[1];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          v14 = v9 >> 2;
          v15 = *(*v3 + 16);
          v16 = __OFADD__(v15, v9 >> 2);
          v17 = v15 + (v9 >> 2);
          if (v16)
          {
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_82_0(v17);
          while (1)
          {
            v18 = v13 < 4;
            v13 -= 4;
            if (v18)
            {
              break;
            }

            v19 = *(*v2)++;
            v2[1] = v13;
            if ((OUTLINED_FUNCTION_69_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_4();
              sub_1AC48F1A4();
              v0 = v22;
            }

            v20 = *(v0 + 16);
            v21 = v20 + 1;
            if (v20 >= *(v0 + 24) >> 1)
            {
              v14 = v20 + 1;
              OUTLINED_FUNCTION_21_2();
              v0 = v23;
              sub_1AC48F1A4();
              OUTLINED_FUNCTION_96_0();
            }

            *(v0 + 16) = v21;
            *(v0 + 4 * v20 + 32) = v19;
            *v3 = v0;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v10 = sub_1AC48D31C();
      v11 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v10);
      OUTLINED_FUNCTION_15(v11, v12);
      return;
    }

    goto LABEL_19;
  }

  if (v4 == 5)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC4677EC(v6);
    if (!v1)
    {
      sub_1AC4D9ACC();
      v7 = OUTLINED_FUNCTION_19_2();
      sub_1AC4D9A3C(v7);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_77_0();
LABEL_19:
      OUTLINED_FUNCTION_33_0();
    }
  }
}

void sub_1AC489398()
{
  OUTLINED_FUNCTION_2_3();
  if (v5)
  {
    OUTLINED_FUNCTION_17_0();
    v9 = sub_1AC453530(v8);
    if (v1)
    {
      return;
    }

    if (v9)
    {
      if ((v9 & 7) == 0)
      {
        v13 = v2[1];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          v14 = v9 >> 3;
          v15 = *(*v3 + 16);
          v16 = __OFADD__(v15, v9 >> 3);
          v17 = v15 + (v9 >> 3);
          if (v16)
          {
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_82_0(v17);
          while (1)
          {
            v18 = v13 < 8;
            v13 -= 8;
            if (v18)
            {
              break;
            }

            v19 = *(*v2)++;
            v2[1] = v13;
            if ((OUTLINED_FUNCTION_69_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_4();
              sub_1AC48F268();
              v0 = v22;
            }

            v20 = *(v0 + 16);
            v21 = v20 + 1;
            if (v20 >= *(v0 + 24) >> 1)
            {
              v14 = v20 + 1;
              OUTLINED_FUNCTION_21_2();
              v0 = v23;
              sub_1AC48F268();
              OUTLINED_FUNCTION_96_0();
            }

            *(v0 + 16) = v21;
            *(v0 + 8 * v20 + 32) = v19;
            *v3 = v0;
            if (!--v14)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v10 = sub_1AC48D31C();
      v11 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v10);
      OUTLINED_FUNCTION_15(v11, v12);
      return;
    }

    goto LABEL_19;
  }

  if (v4 == 1)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC456830(v6);
    if (!v1)
    {
      OUTLINED_FUNCTION_90_0();
      sub_1AC4D9AE4();
      v7 = OUTLINED_FUNCTION_19_2();
      sub_1AC4D9A54(v7);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_83_0();
LABEL_19:
      OUTLINED_FUNCTION_33_0();
    }
  }
}

void sub_1AC48956C(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v3 = sub_1AC453530(a1);
    if (!v2)
    {
      OUTLINED_FUNCTION_102_0(v3);
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC4897A8(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v3 = sub_1AC453530(a1);
    if (!v2)
    {
      OUTLINED_FUNCTION_98_1(v3);
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489D88(_DWORD *a1)
{
  if (*(v1 + 33) == 5)
  {
    v2 = v1[1];
    v3 = v2 < 4;
    v4 = v2 - 4;
    if (v3)
    {
      v5 = sub_1AC48D31C();
      v6 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v5);
      OUTLINED_FUNCTION_15(v6, v7);
    }

    else
    {
      v8 = *(*v1)++;
      v1[1] = v4;
      *a1 = v8;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489FE0(void *a1)
{
  if (*(v1 + 33) == 1)
  {
    v2 = v1[1];
    v3 = v2 < 8;
    v4 = v2 - 8;
    if (v3)
    {
      v5 = sub_1AC48D31C();
      v6 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v5);
      OUTLINED_FUNCTION_15(v6, v7);
    }

    else
    {
      v8 = *(*v1)++;
      v1[1] = v4;
      *a1 = v8;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

_BYTE *sub_1AC48A444(_BYTE *result, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = a3;
    if (a3 < 0x80)
    {
      LOBYTE(v6) = a3;
    }

    else
    {
      do
      {
        *result++ = v5 | 0x80;
        v6 = v5 >> 7;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
    }

    *result++ = v6;
    if (a4 < 0x80)
    {
      LOBYTE(v8) = a4;
    }

    else
    {
      do
      {
        *result++ = a4 | 0x80;
        v8 = a4 >> 7;
        v9 = a4 >> 14;
        a4 >>= 7;
      }

      while (v9);
    }

    *result = v8;
    v10 = *(a5 + 16);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        ++result;
        v12 = *(a5 + 32 + 4 * i);
        if (v12 >= 0x80)
        {
          do
          {
            *result++ = v12 | 0x80;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }

        *result = v12;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC48A4F0()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 + 16);
  v27 = v8;
  v20(v14, v8, v9);
  OUTLINED_FUNCTION_42_0(v14, 1, v6);
  if (v21)
  {
    (*(v4 + 16))(v6, v4);
    OUTLINED_FUNCTION_42_0(v14, 1, v6);
    if (!v21)
    {
      (*(v11 + 8))(v14, v9);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v6);
  }

  sub_1AC48A748(v19, *(v2 + 40), v6, v4);
  if (v1 || (v22 & 1) == 0)
  {
    (*(v16 + 8))(v19, v6);
  }

  else
  {
    v23 = v27;
    v24 = OUTLINED_FUNCTION_67_0();
    v25(v24);
    (*(v16 + 32))(v23, v19, v6);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    *(v2 + 32) = 1;
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC48A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 33) == 3)
  {
    sub_1AC4506F4(a1);
    if (!v5)
    {
      sub_1AC4530E8(v4, v19);
      v24 = a2;
      v25 = 0;
      v21 = 1;
      sub_1AC45AC74(v26, *(&v26 + 1));
      v26 = xmmword_1AC5205D0;
      (*(a4 + 64))(v19, &type metadata for BinaryDecoder, &off_1F211C348, a3, a4);
      if (v23 == a2 && v22 == 4)
      {
        v11 = *(&v26 + 1);
        if (*(&v26 + 1) >> 60 != 15)
        {
          v12 = v26;
          v27 = *(a4 + 56);
          sub_1AC4578F4(v26, *(&v26 + 1));
          v13 = v27(v18, a3, a4);
          sub_1AC51EC98();
          v13(v18, 0);
          sub_1AC45AC74(v12, v11);
        }

        v14 = *(v4 + 8);
        v15 = v14 - v20;
        if (__OFSUB__(v14, v20))
        {
          __break(1u);
        }

        else
        {
          v16 = __OFSUB__(v14, v15);
          v17 = v20;
          if (!v16)
          {
            *v4 += v15;
            *(v4 + 8) = v17;
            sub_1AC451450();
            sub_1AC45466C(v19);
            return;
          }
        }

        __break(1u);
      }

      else
      {
        sub_1AC48D31C();
        swift_allocError();
        *v10 = 1;
        swift_willThrow();
        sub_1AC45466C(v19);
      }
    }
  }
}

void sub_1AC48A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_5();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  (*(v34 + 16))(v35, v34);
  sub_1AC48A748(v33, *(v20 + 40), v27, v25);
  if (v21 || (v36 & 1) == 0)
  {
    (*(v29 + 8))(v33, v27);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_67_0();
    v38(v37);
    sub_1AC51F108();
    sub_1AC51F0D8();
    (*(v29 + 8))(v33, v27);
    OUTLINED_FUNCTION_33_0();
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC48AAD4()
{
  OUTLINED_FUNCTION_60();
  v3 = v0;
  v122 = v4;
  v6 = v5;
  v8 = v7;
  v119 = v9;
  v11 = *(v10 + 8);
  v125 = v8;
  v126 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v116 = v13;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v110 - v15;
  v16 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v146 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v118 = v19 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v121 = &v110 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v110 - v25;
  OUTLINED_FUNCTION_95_0();
  sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_80_0();
  if (*(v3 + 33) != 2)
  {
    goto LABEL_10;
  }

  v115 = v33;
  v127 = v16;
  v120 = v31;
  v124 = v32;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, AssociatedTypeWitness);
  v117 = v26;
  OUTLINED_FUNCTION_12_1();
  v40 = __swift_storeEnumTagSinglePayload(v37, v38, v39, v6);
  v41 = sub_1AC453530(v40);
  if (v1)
  {
LABEL_9:
    (*(v146 + 8))(v117, v127);
    v50 = OUTLINED_FUNCTION_70_0();
    v51(v50);
    goto LABEL_10;
  }

  v42 = v41;
  v114 = v3;
  if (v41 >= 0x7FFFFFFF)
  {
    v49 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v49);
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v43 = v114;
  v44 = v114[1];
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v83 = v44 >= v42;
  v45 = v44 - v42;
  if (!v83)
  {
    v46 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v46);
    OUTLINED_FUNCTION_53_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v47, v48);
    goto LABEL_9;
  }

  v52 = v6;
  v113 = v28;
  v53 = *v114;
  *v114 += v42;
  *(v43 + 8) = v45;
  sub_1AC4530E8(v43, v129);
  v112 = v130[7];
  LODWORD(v111) = v131;
  sub_1AC452928(v130, v128, &qword_1EB557F98, &qword_1AC520460);
  v137 = 1;
  memset(v138, 0, sizeof(v138));
  v139 = 0;
  v140 = 1;
  v144 = xmmword_1AC5205D0;
  v145 = xmmword_1AC5205D0;
  v133 = v53;
  v134 = v42;
  v135 = v53;
  v136 = 0;
  sub_1AC454060(v128, v138 + 8, &qword_1EB557F98, &qword_1AC520460);
  v141 = v112;
  v142 = v111;
  v54 = v132;
  v55 = sub_1AC45466C(v129);
  v143 = v54;
  v135 = v53;
  v136 = 0;
  if (!v42)
  {
    v77 = v113;
    v55 = v115;
LABEL_46:
    v90 = v55;
    (*(v77 + 16))();
    OUTLINED_FUNCTION_20_2();
    if (v76)
    {
      OUTLINED_FUNCTION_91_0();
      v91();
      OUTLINED_FUNCTION_20_2();
      v92 = v121;
      v93 = v118;
      if (!v76)
      {
        (*(v77 + 8))(v90, v120);
      }
    }

    else
    {
      (*(v116 + 32))(v123, v90, AssociatedTypeWitness);
      v92 = v121;
      v93 = v118;
    }

    v94 = v117;
    (*(v146 + 16))(v93, v117, v127);
    OUTLINED_FUNCTION_24_2(v93);
    if (v76)
    {
      OUTLINED_FUNCTION_91_0();
      v95(v52);
      OUTLINED_FUNCTION_24_2(v93);
      if (!v76)
      {
        (*(v146 + 8))(v93, v127);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_1();
      (*(v96 + 32))(v92, v93, v52);
    }

    OUTLINED_FUNCTION_64_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_95_0();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v146 + 8))(v94, v127);
    v97 = OUTLINED_FUNCTION_70_0();
    v98(v97);
    sub_1AC45466C(&v133);
    *(v114 + 32) = 1;
    goto LABEL_10;
  }

  v112 = (v146 + 8);
  v110 = (v146 + 16);
  v111 = v126 + 32;
  while (1)
  {
    v61 = v53 + 1;
    v62 = *v53;
    v63 = v42 - 1;
    if ((v62 & 0x8000000000000000) != 0)
    {
      v65 = 7;
      v64 = v127;
      while (v63 >= 1 && v65 <= 0x3F)
      {
        OUTLINED_FUNCTION_31_0();
        if ((v67 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_79_0(v66);
          if (v83)
          {
            break;
          }

          goto LABEL_20;
        }
      }

LABEL_56:
      v99 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v99);
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_59(v100, v101);
      v102 = OUTLINED_FUNCTION_52_0();
      v103(v102, v64);
LABEL_57:
      (*(v113 + 8))(v124, v120);
      goto LABEL_58;
    }

    v133 = v53 + 1;
    v134 = v42 - 1;
    v64 = v127;
LABEL_20:
    v68 = v62 & 7;
    if (v62 < 8 || v68 > 5)
    {
      goto LABEL_56;
    }

    v70 = v62 >> 3;
    if (v68 == 4)
    {
      OUTLINED_FUNCTION_71();
      goto LABEL_56;
    }

    HIBYTE(v137) = v68;
    *&v138[0] = v70;
    if (v70 != 2)
    {
      break;
    }

    v72 = v52;
    v73 = v117;
    sub_1AC464AFC(v117, v72, v122, v56, v57, v58, v59, v60, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
    v74 = v127;
    (*v110)(v2, v73, v127);
    LODWORD(v73) = __swift_getEnumTagSinglePayload(v2, 1, v72);
    v75 = *v112;
    (*v112)(v2, v74);
    v76 = v73 == 1;
    v52 = v72;
    if (!v76)
    {
      goto LABEL_32;
    }

    v55 = v115;
    if (!v68)
    {
      v75(v117, v127);
      goto LABEL_57;
    }

    v77 = v113;
LABEL_42:
    v53 = v133;
    v42 = v134;
    v135 = v133;
    v136 = 0;
    if (v134 <= 0)
    {
      if (!v134)
      {
        goto LABEL_46;
      }

      v84 = sub_1AC48D31C();
      v85 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v84);
      OUTLINED_FUNCTION_94_0(v85, v86);
      v87 = OUTLINED_FUNCTION_52_0();
      v89 = v127;
      goto LABEL_62;
    }
  }

  if (v70 == 1)
  {
    OUTLINED_FUNCTION_101_0();
    OUTLINED_FUNCTION_97_0();
    v71();
LABEL_32:
    v77 = v113;
LABEL_41:
    v55 = v115;
    goto LABEL_42;
  }

  v78 = v61 - v53;
  v79 = __OFADD__(v63, v78);
  v80 = v63 + v78;
  if (v79)
  {
    goto LABEL_65;
  }

  v133 = v53;
  v134 = v80;
  v77 = v113;
  if (v80 >= 1)
  {
    sub_1AC453530(v55);
    OUTLINED_FUNCTION_99_0();
    v64 = v127;
    if (!v76 && v83 || ((v82 = v81 & 7, v81 >= 8) ? (v83 = v82 >= 6) : (v83 = 1), v83))
    {
      v104 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v104);
      OUTLINED_FUNCTION_36_1();
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_46_0(v81, v82);
    goto LABEL_41;
  }

  v107 = sub_1AC48D31C();
  OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v107);
  OUTLINED_FUNCTION_53_1();
LABEL_61:
  OUTLINED_FUNCTION_59(v105, v106);
  v87 = OUTLINED_FUNCTION_52_0();
  v89 = v64;
LABEL_62:
  v88(v87, v89);
  v108 = OUTLINED_FUNCTION_70_0();
  v109(v108);
LABEL_58:
  sub_1AC45466C(&v133);
LABEL_10:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

void sub_1AC48B378()
{
  OUTLINED_FUNCTION_60();
  v5 = v1;
  v6 = v0;
  v108 = v7;
  v9 = v8;
  v11 = v10;
  v105 = v12;
  v14 = *(v13 + 8);
  v111 = v11;
  v112 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v103 = v16;
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v100 - v18;
  v128 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_75_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_86_0(v23, v24, v25, v26, v27, v28, v29, v30, v100);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_95_0();
  sub_1AC51F228();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_80_0();
  if (*(v6 + 33) != 2)
  {
    goto LABEL_10;
  }

  v106 = v20;
  v107 = v34;
  v113 = v36;
  v110 = v35;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_1();
  v43 = __swift_storeEnumTagSinglePayload(v40, v41, v42, v9);
  v44 = sub_1AC453530(v43);
  if (v1)
  {
LABEL_9:
    v52 = OUTLINED_FUNCTION_40_0();
    v53(v52, v128);
    v54 = OUTLINED_FUNCTION_45_0();
    v55(v54);
    goto LABEL_10;
  }

  v45 = v44;
  if (v44 >= 0x7FFFFFFF)
  {
    v51 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v51);
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v46 = *(v6 + 8);
  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  v77 = v46 >= v44;
  v47 = v46 - v44;
  if (!v77)
  {
    v48 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v48);
    OUTLINED_FUNCTION_53_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v49, v50);
    goto LABEL_9;
  }

  v102 = *v6;
  *v6 = &v102[v44];
  *(v6 + 8) = v47;
  sub_1AC4530E8(v6, v115);
  v101 = v116[7];
  HIDWORD(v100) = v117;
  sub_1AC452928(v116, v114, &qword_1EB557F98, &qword_1AC520460);
  OUTLINED_FUNCTION_7_2();
  *(v56 + 128) = xmmword_1AC5205D0;
  *(v56 + 144) = xmmword_1AC5205D0;
  v119 = v102;
  v120 = v45;
  v121 = v102;
  v122 = 0;
  sub_1AC454060(v114, v57 + 48, &qword_1EB557F98, &qword_1AC520460);
  v125 = v101;
  v126 = BYTE4(v100);
  v101 = v118;
  v58 = sub_1AC45466C(v115);
  v59 = v102;
  v127 = v101;
  v121 = v102;
  v122 = 0;
  if (!v45)
  {
LABEL_41:
    (*(v113 + 16))(v3, v110, v107);
    OUTLINED_FUNCTION_20_2();
    if (v75)
    {
      OUTLINED_FUNCTION_91_0();
      v85();
      v86 = v113;
      OUTLINED_FUNCTION_20_2();
      if (!v75)
      {
        (*(v86 + 8))(v3, v107);
      }
    }

    else
    {
      (*(v103 + 32))(v109, v3, AssociatedTypeWitness);
    }

    v87 = v128;
    (*(v106 + 16))(v2, v4, v128);
    OUTLINED_FUNCTION_24_2(v2);
    if (v75)
    {
      (*(v108 + 16))(v9);
      v87 = v128;
      OUTLINED_FUNCTION_24_2(v2);
      if (!v75)
      {
        (*(v106 + 8))(v2, v128);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_1();
      (*(v88 + 32))(v104, v2, v9);
    }

    OUTLINED_FUNCTION_64_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_95_0();
    v89 = sub_1AC51ED88();
    OUTLINED_FUNCTION_104_0(v89);
    v90 = OUTLINED_FUNCTION_40_0();
    v91(v90, v87);
    v92 = OUTLINED_FUNCTION_45_0();
    v93(v92);
    sub_1AC45466C(&v119);
    *(v6 + 32) = 1;
    goto LABEL_10;
  }

  v101 = v112 + 32;
  do
  {
    v60 = v59 + 1;
    v61 = *v59;
    v62 = v45 - 1;
    if ((v61 & 0x8000000000000000) != 0)
    {
      v64 = 7;
      v63 = v113;
      while (v62 >= 1 && v64 <= 0x3F)
      {
        OUTLINED_FUNCTION_31_0();
        if ((v66 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_79_0(v65);
          if (v77)
          {
            break;
          }

          goto LABEL_20;
        }
      }

LABEL_51:
      v94 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v94);
      OUTLINED_FUNCTION_36_1();
LABEL_52:
      OUTLINED_FUNCTION_59(v95, v96);
      v97 = OUTLINED_FUNCTION_40_0();
      v98(v97, v128);
      (*(v63 + 8))(v110, v107);
      goto LABEL_53;
    }

    v119 = v59 + 1;
    v120 = v45 - 1;
    v63 = v113;
LABEL_20:
    v67 = v61 & 7;
    if (v61 < 8 || v67 > 5)
    {
      goto LABEL_51;
    }

    v69 = v61 >> 3;
    if (v67 == 4)
    {
      OUTLINED_FUNCTION_71();
      goto LABEL_51;
    }

    v123 = v67;
    v124 = v69;
    if (v69 == 2)
    {
      v1 = v5;
      sub_1AC450BB0(v4, v9, v108);
      goto LABEL_29;
    }

    if (v69 == 1)
    {
      OUTLINED_FUNCTION_101_0();
      OUTLINED_FUNCTION_97_0();
      v58 = v70();
LABEL_29:
      v5 = v1;
      goto LABEL_38;
    }

    v71 = v60 - v59;
    v72 = __OFADD__(v62, v71);
    v73 = v62 + v71;
    if (v72)
    {
      goto LABEL_56;
    }

    v119 = v59;
    v120 = v73;
    if (v73 < 1)
    {
      v99 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v99);
      OUTLINED_FUNCTION_53_1();
      goto LABEL_52;
    }

    v1 = v5;
    sub_1AC453530(v58);
    OUTLINED_FUNCTION_99_0();
    v63 = v113;
    if (!v75 && v77)
    {
      goto LABEL_51;
    }

    v76 = v74 & 7;
    v77 = v74 < 8 || v76 >= 6;
    if (v77)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_46_0(v74, v76);
    v5 = 0;
LABEL_38:
    v59 = v119;
    v45 = v120;
    v121 = v119;
    v122 = 0;
  }

  while (v120 > 0);
  if (!v120)
  {
    goto LABEL_41;
  }

  v78 = sub_1AC48D31C();
  v79 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v78);
  OUTLINED_FUNCTION_94_0(v79, v80);
  v81 = OUTLINED_FUNCTION_40_0();
  v82(v81, v128);
  v83 = OUTLINED_FUNCTION_45_0();
  v84(v83);
LABEL_53:
  sub_1AC45466C(&v119);
LABEL_10:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

void sub_1AC48BA88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_28_0();
  v6 = *(v0 + 72);
  if (!v6)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_5;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v18[1] = v2;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v6);
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  (*(v10 + 8))(&v19, v9, v8, v7, v6, v10);
  (*(v12 + 8))(v15, v6);
  if (!*(&v20 + 1))
  {
LABEL_5:
    sub_1AC45A718(&v19, &qword_1EB5581F8, &unk_1AC520DD0);
    goto LABEL_6;
  }

  sub_1AC458DF0(&v19, v22);
  v16 = sub_1AC48DCB4(&v19, v7);
  sub_1AC48BC50(v17, v1, v22);
  (v16)(&v19, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC48BC50(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC452928(a1, v15, &qword_1EB558200, &unk_1AC520780);
  v7 = v16;
  result = sub_1AC45A718(v15, &qword_1EB558200, &unk_1AC520780);
  if (!v7)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v15, a2, &type metadata for BinaryDecoder, &off_1F211C348, v11, v12);
    if (v3)
    {
      return result;
    }

    result = sub_1AC454060(v15, a1, &qword_1EB558200, &unk_1AC520780);
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  result = (*(v10 + 40))(a2, &type metadata for BinaryDecoder, &off_1F211C348, v9, v10);
  if (!v3)
  {
LABEL_7:
    if (*(a2 + 32) == 1)
    {
      sub_1AC452928(a1, v15, &qword_1EB558200, &unk_1AC520780);
      v13 = v16;
      result = sub_1AC45A718(v15, &qword_1EB558200, &unk_1AC520780);
      if (!v13)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v14 = 5;
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1AC48BE20()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  while (1)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC450760();
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    if (v8 == 1 && *(v1 + 33) == 3)
    {
      v10 = *(v1 + 120);
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        sub_1AC51F388();
        __break(1u);
        return;
      }

      *(v1 + 120) = v11;
      if (v11 < 0)
      {
        v18 = sub_1AC48D31C();
        OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v18);
        OUTLINED_FUNCTION_59(v19, 6);
        return;
      }

      sub_1AC4530E8(v1, v23);
      v26 = 1;
      v27 = 0;
      v25 = 1;
      sub_1AC48BFE8(v7, v5, v3);
      if (v12)
      {
        if (v12 != 1)
        {
          v20 = sub_1AC48D31C();
          v21 = OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v20);
          OUTLINED_FUNCTION_16_3(v21, v22);
          sub_1AC45466C(v23);
          return;
        }
      }

      else
      {
        v13 = *(v1 + 8);
        v14 = v13 - v24;
        if (__OFSUB__(v13, v24))
        {
          goto LABEL_21;
        }

        v15 = __OFSUB__(v13, v14);
        v16 = v24;
        if (v15)
        {
          goto LABEL_22;
        }

        *v1 += v14;
        *(v1 + 8) = v16;
        *(v1 + 32) = 1;
      }

      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

      *(v1 + 120) = v17;
      if (*(v1 + 104) < v17)
      {
        goto LABEL_23;
      }

      sub_1AC45466C(v23);
    }
  }
}

void sub_1AC48BFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v96 = a2;
  v97 = a3;
  v101 = a1;
  v98 = 0;
  v131 = *MEMORY[0x1E69E9840];
  v130 = 0;
  v6 = 0xF000000000000000;
  memset(v129, 0, sizeof(v129));
  v7 = &unk_1AC520DD0;
  v8 = 1;
  v95 = xmmword_1AC5205D0;
LABEL_2:
  v99 = v6;
  v100 = (v6 >> 60);
  while (1)
  {
    while (1)
    {
      sub_1AC450760();
      if (v4 || (v10 & 1) != 0)
      {
        goto LABEL_90;
      }

      if (v9 != 3)
      {
        break;
      }

      sub_1AC452928(v129, &v110, &qword_1EB5581F8, v7);
      if (!v111)
      {
        v9 = sub_1AC45A718(&v110, &qword_1EB5581F8, v7);
        v26 = *(v5 + 33);
        if (v100 >= 0xF)
        {
          if (v26 != 2)
          {
            goto LABEL_98;
          }

          v59 = v7;
          v60 = sub_1AC453530(v9);
          v61 = v60;
          if (v60 >= 0x7FFFFFFF)
          {
            sub_1AC48D31C();
            swift_allocError();
            v89 = 3;
            goto LABEL_106;
          }

          v62 = *(v5 + 8);
          if ((v62 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
          }

          v34 = v62 >= v60;
          v63 = v62 - v60;
          if (!v34)
          {
            sub_1AC48D31C();
            swift_allocError();
            v89 = 1;
LABEL_106:
            *v88 = v89;
            swift_willThrow();
            goto LABEL_98;
          }

          v64 = *v5;
          *v5 += v60;
          *(v5 + 8) = v63;
          if (v60)
          {
            if (v60 <= 0xE)
            {
              *(&v115 + 6) = 0;
              *&v115 = 0;
              BYTE14(v115) = v60;
              memcpy(&v115, v64, v60);
              v66 = v115;
              v61 = BYTE14(v115);
              v68 = v92 & 0xF00000000000000 | DWORD2(v115) | (WORD6(v115) << 32) | (BYTE14(v115) << 48);
              v67 = v68;
            }

            else
            {
              sub_1AC51EBB8();
              swift_allocObject();
              v65 = sub_1AC51EB68();
              v66 = v61 << 32;
              v67 = v65 | 0x4000000000000000;
              v68 = v92;
            }

            *(v5 + 32) = 1;
            v92 = v68;
            if (v61 > 0x7F)
            {
              if (v61 >> 21)
              {
                if (v61 >> 28)
                {
                  v70 = 5;
                }

                else
                {
                  v70 = 4;
                }
              }

              else if (v61 >= 0x4000)
              {
                v70 = 3;
              }

              else
              {
                v70 = 2;
              }
            }

            else
            {
              v70 = 1;
            }

            v69 = 0;
            switch(v67 >> 62)
            {
              case 1uLL:
                LODWORD(v69) = HIDWORD(v66) - v66;
                if (__OFSUB__(HIDWORD(v66), v66))
                {
                  goto LABEL_114;
                }

                v69 = v69;
                break;
              case 2uLL:
                v74 = *(v66 + 16);
                v73 = *(v66 + 24);
                v15 = __OFSUB__(v73, v74);
                v69 = v73 - v74;
                if (!v15)
                {
                  break;
                }

                goto LABEL_113;
              case 3uLL:
                break;
              default:
                v69 = BYTE6(v67);
                break;
            }
          }

          else
          {
            v69 = 0;
            v66 = 0;
            *(v5 + 32) = 1;
            v67 = 0xC000000000000000;
            v70 = 1;
          }

          v75 = v70 + v69;
          if (__OFADD__(v70, v69))
          {
            goto LABEL_110;
          }

          if (v75)
          {
            if (v75 < 15)
            {
              if (v75 < 0)
              {
                goto LABEL_112;
              }

              v78 = 0;
              v79 = v93 & 0xF00000000000000 | ((v70 + v69) << 48);
              v93 = v79;
            }

            else
            {
              v100 = v67;
              v76 = v66;
              sub_1AC51EBB8();
              swift_allocObject();
              v77 = sub_1AC51EB88();
              if (v75 >= 0x7FFFFFFF)
              {
                sub_1AC51EC18();
                v78 = swift_allocObject();
                *(v78 + 16) = 0;
                *(v78 + 24) = v75;
                v79 = v77 | 0x8000000000000000;
              }

              else
              {
                v78 = v75 << 32;
                v79 = v77 | 0x4000000000000000;
              }

              v66 = v76;
              v67 = v100;
            }
          }

          else
          {
            v78 = 0;
            v79 = 0xC000000000000000;
          }

          *&v115 = v78;
          *(&v115 + 1) = v79;
          sub_1AC48D7BC(&v115, v66, v67);
          v6 = *(&v115 + 1);
          v98 = v115;
          v7 = v59;
          v8 = 1;
          goto LABEL_2;
        }

        if (v26 != 2)
        {
          goto LABEL_90;
        }

        v11 = *(v5 + 24);
        if (v11)
        {
          goto LABEL_18;
        }

        v30 = *(v5 + 8);
        v12 = *(v5 + 16);
        v31 = *v5 - v12;
        v15 = __OFADD__(v30, v31);
        v16 = v30 + v31;
        if (v15)
        {
          goto LABEL_107;
        }

        goto LABEL_24;
      }

      sub_1AC458DF0(&v110, &v115);
      v17 = *(&v116 + 1);
      v18 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      v20 = sub_1AC48DCB4(v126, v19);
      v22 = v21;
      sub_1AC452928(v21, &v110, &qword_1EB558200, &unk_1AC520780);
      v23 = v111;
      sub_1AC45A718(&v110, &qword_1EB558200, &unk_1AC520780);
      if (v23)
      {
        v24 = *(v22 + 24);
        if (!v24)
        {
          goto LABEL_115;
        }

        v25 = *(v22 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v22, *(v22 + 24));
        (*(v25 + 40))(v5, &type metadata for BinaryDecoder, &off_1F211C348, v24, v25);
      }

      else
      {
        v27 = *(&v116 + 1);
        v28 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        (*(v28 + 32))(&v110, v5, &type metadata for BinaryDecoder, &off_1F211C348, v27, v28);
        sub_1AC454060(&v110, v22, &qword_1EB558200, &unk_1AC520780);
      }

      if (*(v5 + 32) != 1)
      {
        (v20)(v126, 0);
        sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v98, v99);
        v86 = &v115;
        goto LABEL_94;
      }

      sub_1AC452928(v22, &v110, &qword_1EB558200, &unk_1AC520780);
      v29 = v111;
      sub_1AC45A718(&v110, &qword_1EB558200, &unk_1AC520780);
      if (!v29)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v87 = 5;
        swift_willThrow();
        (v20)(v126, 0);
        sub_1AC45AC74(v98, v99);
        sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
        v86 = &v115;
        goto LABEL_94;
      }

      (v20)(v126, 0);
      __swift_destroy_boxed_opaque_existential_1(&v115);
      v7 = &unk_1AC520DD0;
      v8 = 1;
    }

    if (v9 == 2)
    {
      if (*(v5 + 33) || (v35 = sub_1AC453530(2), *(v5 + 32) = 1, !v35))
      {
LABEL_90:
        sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v98, v99);
        return;
      }

      v36 = *(v5 + 72);
      if (!v36)
      {
        sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v98, v99);
        v117 = 0;
        v115 = 0u;
        v116 = 0u;
LABEL_102:
        sub_1AC45A718(&v115, &qword_1EB5581F8, &unk_1AC520DD0);
        return;
      }

      v37 = *(v5 + 80);
      v38 = __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
      v94 = &v91;
      v39 = *(v36 - 8);
      MEMORY[0x1EEE9AC00](v38);
      v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v41);
      (*(v37 + 8))(&v115, v96, v97, v35, v36, v37);
      (*(v39 + 8))(v41, v36);
      v7 = &unk_1AC520DD0;
      sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
      if (!*(&v116 + 1))
      {
        sub_1AC45AC74(v98, v99);
        goto LABEL_102;
      }

      sub_1AC458DF0(&v115, v126);
      v42 = sub_1AC47782C(v126, v129);
      if (v100 <= 0xE)
      {
        v108 = 0;
        MEMORY[0x1EEE9AC00](v42);
        v43 = v101;
        *(&v91 - 6) = v5;
        *(&v91 - 5) = v43;
        v44 = v97;
        *(&v91 - 4) = v96;
        *(&v91 - 3) = v44;
        v46 = v98;
        v45 = v99;
        *(&v91 - 2) = v126;
        *(&v91 - 1) = &v108;
        switch(v45 >> 62)
        {
          case 1uLL:
            v71 = v46 >> 32;
            if (v46 >> 32 < v46)
            {
              goto LABEL_111;
            }

            v72 = v46;
LABEL_55:
            sub_1AC46B604(v72, v71, sub_1AC48E040);
LABEL_56:
            sub_1AC45AC74(v46, v45);
            goto LABEL_57;
          case 2uLL:
            v72 = *(v46 + 16);
            v71 = *(v46 + 24);
            goto LABEL_55;
          case 3uLL:
            goto LABEL_56;
          default:
            v102 = v46;
            v103 = v45;
            v104 = BYTE2(v45);
            v105 = BYTE3(v45);
            v106 = BYTE4(v45);
            v47 = BYTE6(v45);
            v107 = BYTE5(v45);
            if (!BYTE6(v45))
            {
              goto LABEL_56;
            }

            v100 = &v91;
            sub_1AC4530E8(v5, &v110);
            v48 = v112[7];
            v49 = v113;
            sub_1AC452928(v112, v109, &qword_1EB557F98, &qword_1AC520460);
            memset(v118, 0, sizeof(v118));
            v119 = 0;
            v120 = 1;
            v124 = v95;
            v125 = v95;
            *&v115 = &v102;
            *(&v115 + 1) = v47;
            *&v116 = &v102;
            *(&v116 + 1) = 0;
            sub_1AC454060(v109, v118 + 8, &qword_1EB557F98, &qword_1AC520460);
            v121 = v48;
            v122 = v49;
            v50 = v114;
            sub_1AC45466C(&v110);
            v123 = v50;
            LOWORD(v117) = 512;
            v51 = v127;
            v52 = v128;
            __swift_project_boxed_opaque_existential_1(v126, v127);
            v53 = (*(v52 + 8))(v51, v52);
            v94 = sub_1AC48DCB4(v109, v53);
            v55 = v54;
            sub_1AC452928(v54, &v110, &qword_1EB558200, &unk_1AC520780);
            v56 = v111;
            sub_1AC45A718(&v110, &qword_1EB558200, &unk_1AC520780);
            if (v56)
            {
              v57 = *(v55 + 24);
              if (!v57)
              {
                __break(1u);
                return;
              }

              v58 = *(v55 + 32);
              __swift_mutable_project_boxed_opaque_existential_1(v55, *(v55 + 24));
              (*(v58 + 40))(&v115, &type metadata for BinaryDecoder, &off_1F211C348, v57, v58);
              v8 = v99;
            }

            else
            {
              v80 = v127;
              v81 = v128;
              __swift_project_boxed_opaque_existential_1(v126, v127);
              (*(v81 + 32))(&v110, &v115, &type metadata for BinaryDecoder, &off_1F211C348, v80, v81);
              sub_1AC454060(&v110, v55, &qword_1EB558200, &unk_1AC520780);
              v8 = v99;
            }

            v82 = v117;
            if (v117 == 1)
            {
              sub_1AC452928(v55, &v110, &qword_1EB558200, &unk_1AC520780);
              v83 = v111;
              sub_1AC45A718(&v110, &qword_1EB558200, &unk_1AC520780);
              if (!v83)
              {
                goto LABEL_108;
              }
            }

            (v94)(v109, 0);
            sub_1AC45466C(&v115);
            sub_1AC45AC74(v98, v8);
            v108 = v82;
            v7 = &unk_1AC520DD0;
LABEL_57:
            v8 = 1;
            if ((v108 & 1) == 0)
            {
              sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
              v86 = v126;
              goto LABEL_94;
            }

            v98 = 0;
            v6 = 0xF000000000000000;
            break;
        }
      }

      else
      {
        v6 = v99;
      }

      __swift_destroy_boxed_opaque_existential_1(v126);
      goto LABEL_2;
    }

    v11 = *(v5 + 24);
    if (v11)
    {
LABEL_18:
      *v5 = v11;
      goto LABEL_31;
    }

    v13 = *(v5 + 8);
    v12 = *(v5 + 16);
    v14 = *v5 - v12;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      sub_1AC48D31C();
      swift_allocError();
      *v90 = 5;
      swift_willThrow();
      (v94)(v109, 0);
      sub_1AC45466C(&v115);
      sub_1AC45AC74(v98, v8);
      sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
      v86 = v126;
LABEL_94:
      __swift_destroy_boxed_opaque_existential_1(v86);
      return;
    }

LABEL_24:
    *v5 = v12;
    *(v5 + 8) = v16;
    if (v16 < 1)
    {
      break;
    }

    v32 = sub_1AC453530(v9);
    if (v32 >= 0xFFFFFFFF || ((v33 = v32 & 7, v32 >= 8) ? (v34 = v33 >= 6) : (v34 = 1), v34))
    {
      sub_1AC48D31C();
      swift_allocError();
      v85 = 3;
      goto LABEL_97;
    }

    *(v5 + 33) = v33;
    *(v5 + 40) = v32 >> 3;
    sub_1AC467A40(v32);
    *(v5 + 24) = *v5;
LABEL_31:
    *(v5 + 32) = 1;
  }

  sub_1AC48D31C();
  swift_allocError();
  v85 = 1;
LABEL_97:
  *v84 = v85;
  swift_willThrow();
  sub_1AC45AC74(v98, v99);
LABEL_98:
  sub_1AC45A718(v129, &qword_1EB5581F8, &unk_1AC520DD0);
}

uint64_t sub_1AC48CEE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  if (result)
  {
    v9 = result;
    v10 = a2 - result;
    if (a2 - result >= 1)
    {
      v36 = a8;
      sub_1AC4530E8(a3, v22);
      v12 = v23[7];
      v13 = v24;
      sub_1AC452928(v23, v21, &qword_1EB557F98, &qword_1AC520460);
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      v30 = 1;
      v34 = xmmword_1AC5205D0;
      v35 = xmmword_1AC5205D0;
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v9;
      v26[3] = 0;
      sub_1AC454060(v21, v28 + 8, &qword_1EB557F98, &qword_1AC520460);
      v31 = v12;
      v32 = v13;
      v14 = v25;
      sub_1AC45466C(v22);
      v33 = v14;
      v27 = 512;
      v15 = a7[3];
      v16 = a7[4];
      __swift_project_boxed_opaque_existential_1(a7, v15);
      v17 = (*(v16 + 8))(v15, v16);
      v18 = sub_1AC48DCB4(v22, v17);
      sub_1AC48BC50(v19, v26, a7);
      (v18)(v22, 0);
      if (v8)
      {
        return sub_1AC45466C(v26);
      }

      else
      {
        v20 = v27;
        result = sub_1AC45466C(v26);
        *v36 = v20;
      }
    }
  }

  return result;
}

_BYTE *sub_1AC48D09C(_BYTE *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    LOBYTE(v4) = 0;
    switch(a4 >> 62)
    {
      case 1uLL:
        LODWORD(v5) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v5 = v5;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_13;
      case 2uLL:
        v7 = *(a3 + 16);
        v6 = *(a3 + 24);
        v8 = __OFSUB__(v6, v7);
        v5 = v6 - v7;
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        break;
      case 3uLL:
        goto LABEL_11;
      default:
        v5 = BYTE6(a4);
LABEL_7:
        if (v5 < 0x80)
        {
          LOBYTE(v4) = v5;
        }

        else
        {
          do
          {
            *result++ = v5 | 0x80;
            v4 = v5 >> 7;
            v9 = v5 >> 14;
            v5 >>= 7;
          }

          while (v9);
        }

LABEL_11:
        *result = v4;
        return sub_1AC46448C(a3, a4);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC48D31C()
{
  result = qword_1EB557A78;
  if (!qword_1EB557A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557A78);
  }

  return result;
}

uint64_t sub_1AC48D370(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      swift_bridgeObjectRetain_n();
      sub_1AC4578F4(v5, v4);
      sub_1AC4513F8(v5, v4);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      v22 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v22 < v5)
      {
        goto LABEL_29;
      }

      if (sub_1AC51EB78() && __OFSUB__(v5, sub_1AC51EBA8()))
      {
        goto LABEL_30;
      }

      sub_1AC51EBB8();
      swift_allocObject();
      v23 = sub_1AC51EB58();

      v21 = v23;
LABEL_16:
      v24 = v22 < v5;
      v25 = v22 - v5;
      if (v24)
      {
        goto LABEL_26;
      }

      result = sub_1AC51EB78();
      if (!result)
      {
        goto LABEL_32;
      }

      v26 = result;
      v27 = sub_1AC51EBA8();
      v28 = v5 - v27;
      if (__OFSUB__(v5, v27))
      {
        goto LABEL_28;
      }

      v29 = sub_1AC51EB98();
      if (v29 >= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v29;
      }

      sub_1AC48A444((v26 + v28), v26 + v28 + v30, a2, a3, a4);

      result = swift_bridgeObjectRelease_n();
      v20 = v21 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_23;
    case 2uLL:
      swift_bridgeObjectRetain_n();
      sub_1AC4578F4(v5, v4);
      sub_1AC4513F8(v5, v4);
      *&v37 = v5;
      *(&v37 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v11 = *(v37 + 16);
      v12 = *(v37 + 24);

      result = sub_1AC51EB78();
      if (!result)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_1AC51EBA8();
      v15 = v11 - v14;
      if (__OFSUB__(v11, v14))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (v16)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v18 = sub_1AC51EB98();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      sub_1AC48A444((v13 + v15), v13 + v15 + v19, a2, a3, a4);
      result = swift_bridgeObjectRelease_n();
      v20 = *(&v37 + 1) | 0x8000000000000000;
      *a1 = v37;
LABEL_23:
      a1[1] = v20;
      return result;
    case 3uLL:
      *(&v37 + 7) = 0;
      *&v37 = 0;
      sub_1AC48A444(&v37, &v37, a2, a3, a4);

    default:
      swift_bridgeObjectRetain_n();
      sub_1AC4513F8(v5, v4);
      *&v37 = v5;
      WORD4(v37) = v4;
      BYTE10(v37) = BYTE2(v4);
      BYTE11(v37) = BYTE3(v4);
      BYTE12(v37) = BYTE4(v4);
      BYTE13(v37) = BYTE5(v4);
      BYTE14(v37) = BYTE6(v4);
      sub_1AC48A444(&v37, &v37 + BYTE6(v4), a2, a3, a4);
      v8 = v37;
      v9 = DWORD2(v37) | ((WORD6(v37) | (BYTE14(v37) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v8;
      a1[1] = v9;
      return result;
  }
}

void sub_1AC48D7BC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(v4, v3);
      sub_1AC4513F8(v4, v3);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v14 < v4)
      {
        goto LABEL_15;
      }

      if (sub_1AC51EB78() && __OFSUB__(v4, sub_1AC51EBA8()))
      {
        goto LABEL_16;
      }

      sub_1AC51EBB8();
      swift_allocObject();
      v15 = sub_1AC51EB58();

      v13 = v15;
LABEL_10:
      if (v14 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_1AC4578F4(a2, a3);

      sub_1AC48DBF4(v4, v4 >> 32, v13, a2, a3);

      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      v12 = v13 | 0x4000000000000000;
LABEL_12:
      *a1 = v4;
      a1[1] = v12;
      return;
    case 2uLL:
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(v4, v3);
      sub_1AC4513F8(v4, v3);
      *&v16 = v4;
      *(&v16 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v4 = v16;
      v10 = *(v16 + 16);
      v11 = *(v16 + 24);
      sub_1AC4578F4(a2, a3);
      sub_1AC48DBF4(v10, v11, *(&v16 + 1), a2, a3);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      v12 = *(&v16 + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&v16 + 7) = 0;
      *&v16 = 0;
      sub_1AC48D09C(&v16, &v16, a2, a3);
      sub_1AC4513F8(a2, a3);
      return;
    default:
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4513F8(v4, v3);
      *&v16 = v4;
      WORD4(v16) = v3;
      BYTE10(v16) = BYTE2(v3);
      BYTE11(v16) = BYTE3(v3);
      BYTE12(v16) = BYTE4(v3);
      BYTE13(v16) = BYTE5(v3);
      BYTE14(v16) = BYTE6(v3);
      sub_1AC48D09C(&v16, &v16 + BYTE6(v3), a2, a3);
      v8 = v16;
      v9 = DWORD2(v16) | ((WORD6(v16) | (BYTE14(v16) << 16)) << 32);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      *a1 = v8;
      a1[1] = v9;
      return;
  }
}

void sub_1AC48DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1AC51EB78();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_1AC51EBA8();
  v12 = a1 - v11;
  if (__OFSUB__(a1, v11))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v15 = sub_1AC51EB98();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  sub_1AC48D09C((v10 + v12), v10 + v12 + v16, a4, a5);
  sub_1AC4513F8(a4, a5);
}

void (*sub_1AC48DCB4(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1AC48E00C(v4);
  v4[9] = sub_1AC48DDA4(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AC48DD44;
}

void sub_1AC48DD44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1AC48DDA4(void *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v7;
  v7[15] = a2;
  v7[16] = v3;
  v8 = *v3;
  v9 = sub_1AC45AA38(a2);
  *(v7 + 144) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558208, &unk_1AC520790);
  if (sub_1AC51F338())
  {
    v13 = sub_1AC45AA38(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[17] = v11;
  if (v12)
  {
    sub_1AC458DF0((*(*v4 + 56) + 40 * v11), v7);
  }

  else
  {
    v7[4] = 0;
    *v7 = 0u;
    *(v7 + 1) = 0u;
  }

  return sub_1AC48DEDC;
}

void sub_1AC48DEDC(uint64_t *a1)
{
  v1 = *a1;
  sub_1AC452928(*a1, *a1 + 80, &qword_1EB558200, &unk_1AC520780);
  v2 = *(v1 + 144);
  if (*(v1 + 104))
  {
    v3 = *(v1 + 128);
    sub_1AC458DF0((v1 + 80), v1 + 40);
    v4 = *v3;
    v5 = *(v1 + 136);
    if (v2)
    {
      sub_1AC458DF0((v1 + 40), *(v4 + 56) + 40 * v5);
    }

    else
    {
      v6 = *(v1 + 120);
      sub_1AC458DF0((v1 + 40), v1 + 80);
      sub_1AC4F095C(v5, v6, v1 + 80, v4);
    }
  }

  else
  {
    sub_1AC45A718(v1 + 80, &qword_1EB558200, &unk_1AC520780);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
      sub_1AC51F358();
    }
  }

  sub_1AC45A718(v1, &qword_1EB558200, &unk_1AC520780);

  free(v1);
}

uint64_t (*sub_1AC48E00C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AC48E034;
}

void OUTLINED_FUNCTION_50_0(uint64_t a1)
{

  sub_1AC46781C(a1, sub_1AC4677EC);
}

void OUTLINED_FUNCTION_56_0()
{
  *(v0 + 16) = v2;
  *(v0 + 4 * v4 + 32) = v3;
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, v1);
}

char *OUTLINED_FUNCTION_84_1@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 72) = v2;
  v6 = *v1;
  *v1 += v3;
  *(v1 + 8) = a1;

  return sub_1AC453E68(v6, v3);
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a27 = v28;
  a28 = a1;

  return sub_1AC45466C(&a27);
}

uint64_t OUTLINED_FUNCTION_107_0@<X0>(_BYTE *a2@<X1>, char a5@<W8>)
{
  *a2 = a5;

  return swift_willThrow();
}

uint64_t BinaryDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC48E30C()
{
  result = qword_1EB558218;
  if (!qword_1EB558218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for BinaryDecodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t BinaryDelimited.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t static BinaryDelimited.serialize(message:to:partial:)(void *a1, void *a2, char a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  v22 = 0;
  result = Message.serializedBytes<A>(partial:options:)(a3, &v22, v6, v8, v7, &protocol witness table for <A> [A]);
  if (!v3)
  {
    v10 = v23;
    v11 = *(v23 + 16);
    v12 = sub_1AC4519B4(v11);
    v13 = __OFADD__(v12, v11);
    v14 = (v12 + v11);
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v15 = sub_1AC4890F8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }
    }

    sub_1AC48857C();
    v15 = v21;
LABEL_4:
    sub_1AC48E84C((v15 + 32), v15 + 32 + *(v15 + 16), v10);

    if (*(v15 + 16))
    {
      v16 = [a2 write:v15 + 32 maxLength:v14];

      if (v16 == v14)
      {
        return result;
      }

      if (v16 == -1)
      {
        if (![a2 streamError])
        {
          v19 = sub_1AC4878A4();
          OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v19);
          *v20 = 0;
        }

        return swift_willThrow();
      }
    }

    else
    {

      if (!v14)
      {
        return result;
      }
    }

    v17 = sub_1AC4878A4();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v17);
    *v18 = 1;
    return swift_willThrow();
  }

  return result;
}

_BYTE *sub_1AC48E84C(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(a3 + 16);
    LOBYTE(v4) = v3;
    if (v3 >= 0x80)
    {
      v5 = *(a3 + 16);
      do
      {
        *result++ = v5 | 0x80;
        v4 = v5 >> 7;
        v6 = v5 >> 14;
        v5 >>= 7;
      }

      while (v6);
    }

    *result = v4;
    if (v3)
    {
      return memmove(result + 1, (a3 + 32), v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static BinaryDelimited.parse<A>(messageType:from:extensions:partial:options:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = a3;
  v14 = *a4;
  v15 = *(a4 + 8);
  (*(a6 + 16))(a5, a6);
  v16 = v14;
  v17 = v15;
  static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(a7, a1, a2, v10, &v16, a5, a6);
  if (v7)
  {
    (*(*(a5 - 8) + 8))(a7, a5);
  }
}

void static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = sub_1AC48ECD0(a2);
  if (v7)
  {
    return;
  }

  v17 = v16;
  if (!v16)
  {
    return;
  }

  if (v16 >> 31)
  {
    v18 = sub_1AC48D31C();
    OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v18);
    *v19 = 3;
    swift_willThrow();
    return;
  }

  v43 = a6;
  v44 = a7;
  v52 = MEMORY[0x1E69E7CC0];
  v20 = sub_1AC4890F8();
  v47 = a4;
  v48 = v15;
  v45 = v14;
  v46 = v12;
  while (1)
  {
    if (*(v20 + 16) >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = *(v20 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC48857C();
      v20 = v37;
    }

    if (!*(v20 + 16) || (v22 = [v12 read:v20 + 32 maxLength:v21]) == 0)
    {

      v38 = sub_1AC4878A4();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v38);
      *v39 = 1;
LABEL_34:
      swift_willThrow();
      goto LABEL_35;
    }

    v23 = v22;
    if (v22 == -1)
    {

      if (![v12 streamError])
      {
        v41 = sub_1AC4878A4();
        OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v41);
        *v42 = 0;
      }

      goto LABEL_34;
    }

    v24 = *(v20 + 16);
    if (v22 >= v24)
    {
      break;
    }

    if (v22 < 0)
    {
      goto LABEL_38;
    }

    sub_1AC4864FC(v25, v20 + 32, 0, (2 * v23) | 1);
LABEL_28:
    v36 = v17 <= v23;
    v17 -= v23;
    if (v36)
    {
      v51 = v52;
      v49 = v14;
      v50 = v48;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
      Message.merge<A>(serializedBytes:extensions:partial:options:)(&v51, a3, a4 & 1, &v49, v43, v40, v44, &protocol witness table for <A> [A]);

LABEL_35:

      return;
    }
  }

  v26 = a3;
  v27 = a1;
  v28 = v52;
  v29 = *(v52 + 16);
  if (!__OFADD__(v29, v24))
  {

    if (!swift_isUniquelyReferenced_nonNull_native() || (v30 = *(v52 + 24) >> 1, v30 < v29 + v24))
    {
      sub_1AC45A78C();
      v28 = v31;
      v30 = *(v31 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      v32 = *(v28 + 16);
      if (v30 - v32 < v24)
      {
        goto LABEL_40;
      }

      memcpy((v28 + v32 + 32), (v20 + 32), v24);

      if (v24)
      {
        v33 = *(v28 + 16);
        v34 = __OFADD__(v33, v24);
        v35 = v33 + v24;
        if (v34)
        {
          goto LABEL_41;
        }

        *(v28 + 16) = v35;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_39;
      }
    }

    v52 = v28;
    a1 = v27;
    a3 = v26;
    a4 = v47;
    v14 = v45;
    v12 = v46;
    goto LABEL_28;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_1AC48ECD0(void *a1)
{
  v2 = swift_slowAlloc();
  v3 = 0;
  v4 = 0;
  while (1)
  {
    result = [a1 read:v2 maxLength:1];
    if (!result)
    {
      if (v3)
      {
        v10 = sub_1AC4878A4();
        OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v10);
        v9 = 1;
LABEL_10:
        *v8 = v9;
      }

      else
      {
        v13 = sub_1AC488590();
        OUTLINED_FUNCTION_11(&type metadata for SwiftProtobufError, v13);
        v4 = v14;
        v19 = 1;
        *&v15 = 0xD000000000000010;
        *(&v15 + 1) = 0x80000001AC52E0A0;
        v16 = 0xD00000000000002BLL;
        v17 = 0x80000001AC52E0C0;
        v18 = 242;
        type metadata accessor for SwiftProtobufError.Storage();
        swift_allocObject();
        *v4 = sub_1AC4F9648(&v19, 0xD000000000000093, 0x80000001AC52E0F0, &v15);
      }

      goto LABEL_15;
    }

    if (result != 1)
    {
      break;
    }

    v4 |= (*v2 & 0x7F) << v3;
    if ((*v2 & 0x80) == 0)
    {
      MEMORY[0x1AC5B4D30](v2, -1, -1);
      return v4;
    }

    v6 = v3 >= 0x39;
    v3 += 7;
    if (v6)
    {
      v7 = sub_1AC48D31C();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDecodingError, v7);
      v9 = 3;
      goto LABEL_10;
    }
  }

  if (result == -1)
  {
    if (![a1 streamError])
    {
      v11 = sub_1AC4878A4();
      OUTLINED_FUNCTION_11(&type metadata for BinaryDelimited.Error, v11);
      *v12 = 0;
    }

LABEL_15:
    swift_willThrow();
    MEMORY[0x1AC5B4D30](v2, -1, -1);
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1AC48EF10()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558290, &qword_1AC528230);
    v7 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_5();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1AC48EFD8()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558278, &qword_1AC520A38);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_14_3(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[48 * v2] <= v9)
    {
      memmove(v9, v10, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC48F0C0()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558280, &qword_1AC520A40);
    v7 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC48F1A4()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558268, &qword_1AC520A28);
    v7 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v7);
    OUTLINED_FUNCTION_6_3(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1AC48F268()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_5_3();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558260, &qword_1AC520A20);
    v7 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v7);
    OUTLINED_FUNCTION_6_3(v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1AC48F32C()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558240, &qword_1AC520A00);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1AC48F3FC()
{
  OUTLINED_FUNCTION_8_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_3();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  OUTLINED_FUNCTION_4_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558288, &qword_1AC520A48);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_14_3(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || v0 + 32 + 40 * v2 <= (v7 + 32))
    {
      memmove((v7 + 32), (v0 + 32), 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F0, &unk_1AC5205C0);
    swift_arrayInitWithCopy();
  }
}

char *sub_1AC48F51C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1AC48F544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

char *sub_1AC48F564(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

char *sub_1AC48F584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

unint64_t sub_1AC48F5AC()
{
  result = qword_1EB558220;
  if (!qword_1EB558220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDelimited(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for BinaryDelimited(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BinaryDelimited.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryDelimited.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC48F874(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (__OFSUB__(a3 - a2, result - a2))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncoder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryEncoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t BinaryEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC48F9C0()
{
  result = qword_1EB5582A8;
  if (!qword_1EB5582A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5582A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BinaryEncodingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryEncodingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1AC48FCAC()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_1AC4519B4((2 * v1) ^ (v1 >> 63));
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    v12 = __OFADD__(*v0, v11);
    v13 = *v0 + v11;
    if (!v12)
    {
      OUTLINED_FUNCTION_11_4(v13);
      return;
    }
  }

  __break(1u);
}

void sub_1AC48FD18(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 6;
  v5 = 7;
  v6 = 8;
  if ((8 * a2) >> 28)
  {
    v6 = 9;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 5;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC48FD68()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 10;
      }

      else if (v14 > 0x7F)
      {
        v17 = v14 >> 28 ? 5 : 4;
        if (v14 < 0x200000)
        {
          v17 = 3;
        }

        v16 = v14 >= 0x4000 ? v17 : 2;
      }

      else
      {
        v16 = 1;
      }

      v18 = __OFADD__(v11, v16);
      v11 += v16;
      if (v18)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = 0;
LABEL_28:
  v19 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_33;
  }

  v20 = v19 + v11;
  if (__OFADD__(v19, v11))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = __OFADD__(*v0, v20);
  v21 = *v0 + v20;
  if (!v18)
  {
    OUTLINED_FUNCTION_6_4(v21);
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1AC48FE44()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 >= 0x80)
      {
        v17 = v14 >> 14;
        v18 = v14 >> 28 ? 5 : 4;
        v16 = v14 >= 0x200000 ? v18 : 3;
        if (!v17)
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }

      v19 = __OFADD__(v11, v16);
      v11 += v16;
      if (v19)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = 0;
LABEL_26:
  v20 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_31;
  }

  v21 = v20 + v11;
  if (__OFADD__(v20, v11))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v19 = __OFADD__(*v0, v21);
  v22 = *v0 + v21;
  if (!v19)
  {
    OUTLINED_FUNCTION_6_4(v22);
    return;
  }

LABEL_33:
  __break(1u);
}

void sub_1AC48FF18()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 < 0x80)
      {
        v16 = 1;
        goto LABEL_27;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = 10;
        goto LABEL_27;
      }

      if (v14 >> 35)
      {
        if (v14 >> 49)
        {
          v14 >>= 28;
          v16 = 8;
LABEL_25:
          if (!(v14 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v16;
          goto LABEL_27;
        }

        v16 = 6;
        if (v14 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v14 >= 0x200000)
        {
          v16 = 4;
          goto LABEL_25;
        }

        v16 = 2;
        if (v14 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v13)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = 0;
LABEL_31:
  v18 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v18 + v11;
  if (__OFADD__(v18, v11))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = __OFADD__(*v0, v19);
  v20 = *v0 + v19;
  if (!v17)
  {
    OUTLINED_FUNCTION_6_4(v20);
    return;
  }

LABEL_38:
  __break(1u);
}

void sub_1AC490020()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 32);
    v13 = *(v1 + 16);
    while (1)
    {
      v14 = *v12++;
      v15 = (2 * v14) ^ (v14 >> 31);
      if (v15 >= 0x80)
      {
        if (v15 >> 14)
        {
          if (v15 >= 0x200000)
          {
            v16 = v15 >> 28 ? 5 : 4;
          }

          else
          {
            v16 = 3;
          }
        }

        else
        {
          v16 = 2;
        }
      }

      else
      {
        v16 = 1;
      }

      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = 0;
LABEL_25:
  v18 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_30;
  }

  v19 = v18 + v11;
  if (__OFADD__(v18, v11))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = __OFADD__(*v0, v19);
  v20 = *v0 + v19;
  if (!v17)
  {
    OUTLINED_FUNCTION_6_4(v20);
    return;
  }

LABEL_32:
  __break(1u);
}