double sub_183FB1AE0(char a1, unint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 >= -1022)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

unint64_t sub_183FB1B8C(uint64_t a1)
{
  result = sub_183FB1BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_183FB1BB4()
{
  result = qword_1EA854880;
  if (!qword_1EA854880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854880);
  }

  return result;
}

uint64_t _CGRenderingBufferProviderInit<>.init<A>(info:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v22 = sub_183FB1EBC;
  v23 = v10;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_183FB1EC8;
  v21 = &block_descriptor_0;
  v11 = _Block_copy(&v18);
  swift_unknownObjectRetain();

  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v22 = sub_183FB1FAC;
  v23 = v12;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_183FB1FB8;
  v21 = &block_descriptor_6;
  v13 = _Block_copy(&v18);

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v22 = sub_183FB2018;
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_183FB2024;
  v21 = &block_descriptor_12;
  v15 = _Block_copy(&v18);

  v16 = CGRenderingBufferProviderCreate(a1, a2, v11, v13, v15);
  swift_unknownObjectRelease();
  _Block_release(v15);
  _Block_release(v13);
  _Block_release(v11);
  if (v16)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FB1E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = *(a4 + 8);
    swift_unknownObjectRetain();
    v7 = v5(a3, a4);
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

uint64_t sub_183FB1EC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_183FB1F30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = *(a5 + 16);
    swift_unknownObjectRetain();
    v7(a2, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_183FB1FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_183FB2018(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_183FB2024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_183FB2078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = _CGRenderingBufferProviderInit<>.init<A>(info:size:)(a1, a2, a5, a3, a4);
  *a6 = result;
  return result;
}

BOOL sub_183FB20FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  if (CGRectEqualToRect(v37, v46))
  {
    return 1;
  }

  sub_183FB27D0(a1, a2, a3, a4, a6, a7, a8, a9);
  v35 = v17;
  v18 = v17;
  v38.origin.x = a6;
  v38.origin.y = a7;
  v38.size.width = a8;
  v38.size.height = a9;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a6;
  v39.origin.y = a7;
  v39.size.width = a8;
  v39.size.height = a9;
  MaxX = CGRectGetMaxX(v39);
  v40.origin.x = a6;
  v40.origin.y = a7;
  v40.size.width = a8;
  v40.size.height = a9;
  MinY = CGRectGetMinY(v40);
  v41.origin.x = a6;
  v41.origin.y = a7;
  v41.size.width = a8;
  v41.size.height = a9;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  v20 = CGRectGetMinX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v21 = CGRectGetMaxX(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v22 = CGRectGetMinY(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  v23 = CGRectGetMaxY(v45);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v24 = fabs(MinX);
  v25 = fabs(MaxX);
  if (v24 <= v25)
  {
    v24 = v25;
  }

  v26 = fabs(MinY);
  v27 = fabs(MaxY);
  if (v26 <= v27)
  {
    v26 = v27;
  }

  if (v24 <= v26)
  {
    v24 = v26;
  }

  v28 = fabs(v20);
  v29 = fabs(v21);
  if (v28 <= v29)
  {
    v28 = v29;
  }

  v30 = fabs(v22);
  v31 = fabs(v23);
  if (v30 > v31)
  {
    v31 = v30;
  }

  if (v28 > v31)
  {
    v31 = v28;
  }

  if (v24 > v31)
  {
    v31 = v24;
  }

  if (v31 <= 1.0)
  {
    v31 = 1.0;
  }

  return v35 <= v31 * a5;
}

__C::CGRect __swiftcall CGRect.init(x:y:width:height:)(Swift::Int x, Swift::Int y, Swift::Int width, Swift::Int height)
{
  v4 = x;
  v5 = y;
  v6 = width;
  v7 = height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

void __swiftcall CGRect.init(dictionaryRepresentation:)(__C::CGRect_optional *__return_ptr retstr, CFDictionaryRef dictionaryRepresentation)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  v4 = CGRectMakeWithDictionaryRepresentation(dictionaryRepresentation, &v8);

  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = vdupq_n_s64(v5);
  v7 = vandq_s8(v8.size, v6);
  retstr->value.origin = vandq_s8(v8.origin, v6);
  retstr->value.size = v7;
  retstr->is_nil = !v4;
}

__n128 CGRect.divided(atDistance:from:)@<Q0>(CGRectEdge edge@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&slice, 0, sizeof(slice));
  memset(&v12, 0, sizeof(v12));
  v15.origin.x = a4;
  v15.origin.y = a5;
  v15.size.width = a6;
  v15.size.height = a7;
  CGRectDivide(v15, &slice, &v12, a3, edge);
  result = v12.origin;
  size = v12.size;
  v11 = slice.size;
  *a2 = slice.origin;
  *(a2 + 16) = v11;
  *(a2 + 32) = result;
  *(a2 + 48) = size;
  return result;
}

uint64_t CGRect.customMirror.getter(double a1, double a2, double a3, double a4)
{
  v8 = sub_184390378();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - v13;
  *v22 = a1;
  *&v22[1] = a2;
  *&v22[2] = a3;
  *&v22[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0, &qword_1843985B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1843982F0;
  *(v15 + 32) = 0x6E696769726FLL;
  *(v15 + 40) = 0xE600000000000000;
  type metadata accessor for CGPoint(0);
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 72) = v16;
  *(v15 + 80) = 1702521203;
  *(v15 + 88) = 0xE400000000000000;
  type metadata accessor for CGSize(0);
  *(v15 + 120) = v17;
  *(v15 + 96) = a3;
  *(v15 + 104) = a4;
  v18 = *MEMORY[0x1E69E75B8];
  v19 = sub_184390368();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v14, v18, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E75D8], v8);
  type metadata accessor for CGRect(0);
  return sub_184390398();
}

void CGRect.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 10;
}

__n128 sub_183FB2708@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 10;
  return result;
}

uint64_t sub_183FB2734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_184390358();
  sub_183F58A9C(v1, v2, v3, v4);
  return sub_184390338();
}

void sub_183FB27D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetWidth(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectGetHeight(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetWidth(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetHeight(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMinX(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMinX(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinY(v23);
}

BOOL CGRectNearlyEqualToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (qword_1EA853EA8 != -1)
  {
    v16 = a4;
    swift_once();
    a4 = v16;
  }

  return sub_183FB20FC(a5, a6, a7, a8, *&qword_1EA853EB0, a1, a2, a3, a4);
}

Swift::Bool __swiftcall CGRectNearlyEqualToRect(_:_:)(__C::CGRect a1, __C::CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.size.width;
  v7 = a1.origin.y;
  v8 = a1.origin.x;
  if (qword_1EA853EA8 != -1)
  {
    v10 = a1.size.height;
    swift_once();
    a1.size.height = v10;
  }

  return sub_183FB20FC(x, y, width, height, *&qword_1EA853EB0, v8, v7, v6, a1.size.height);
}

uint64_t sub_183FB2C28(uint64_t a1)
{
  result = sub_183F3FF48(&qword_1EA853F00, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_183FB2C84@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v24 = vdupq_n_s64(0x7FF8000000000000uLL);
  v25 = v24;
  v19 = v24;
  v4 = MEMORY[0x1E69E7CC0];
  v26.i64[0] = MEMORY[0x1E69E7CC0];
  v26.i64[1] = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      v7 = a1 + v6;
      v8 = *(a1 + v6);
      v9 = v19;
      v10 = v19;
      if (*v8.i64 < *(a1 + v6 + 8))
      {
        v11 = *(v7 + 16);
        v12 = vdup_n_s32(*v11.i64 < *(v7 + 24));
        v13.i64[0] = v12.u32[0];
        v13.i64[1] = v12.u32[1];
        v14 = vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL));
        v9 = vbslq_s8(v14, v11, v19);
        v10 = vbslq_s8(v14, v8, v19);
      }

      v20[0] = v10;
      v20[1] = v9;
      v21 = v4;
      v22 = v4;
      v23 = v4;
      Region.formUnion(_:)(v20);

      v6 += 32;
      --v5;
    }

    while (v5);

    v16 = v24;
    v17 = v25;
    v18 = v26;
    v4 = v27;
  }

  else
  {

    v18 = vdupq_n_s64(v4);
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    v17 = v16;
  }

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3].i64[0] = v4;
  return result;
}

uint64_t sub_183FB2DC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v48 = vdupq_n_s64(0x7FF8000000000000uLL);
  v49 = v48;
  v31 = v48;
  *&v50 = MEMORY[0x1E69E7CC0];
  *(&v50 + 1) = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 8);
  v27 = *(result + 16);
  v36 = *(result + 56);
  v37 = *(result + 32);
  v34 = *(result + 48);
  v35 = *(result + 72);
  v28 = *result;
  v29 = *(result + 88);
  v5 = (*result & 0xFFFFFFFFFFFFFLL) == 0 || (~*result & 0x7FF0000000000000) != 0;
  v33 = *(result + 48) + 32;
  v32 = *(result + 32) + 32;
  v6 = *(result + 40) + 32;
  v30 = *(result + 40);
  while (1)
  {
    if (v5 && !*(v37 + 16))
    {
      if (v3 == 2)
      {
LABEL_34:

        v24 = v51;
        v25 = v49;
        *a2 = v48;
        *(a2 + 16) = v25;
        *(a2 + 32) = v50;
        *(a2 + 48) = v24;
        return result;
      }

      if (v3 | v2)
      {
        goto LABEL_43;
      }

      v9 = 1;
      v10 = v28;
      v11 = v4;
      v12 = v27;
      v13 = __OFADD__(v3, 2);
      v3 += 2;
      if (v13)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v7 = *(v34 + 16);
      if (v3 == v7)
      {
        goto LABEL_34;
      }

      if (v3 >= v7)
      {
        goto LABEL_37;
      }

      if (v3 + 1 >= v7)
      {
        goto LABEL_38;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v8 = *(v37 + 16);
      if (v2 >= v8)
      {
        goto LABEL_40;
      }

      if (v2 + 1 >= v8)
      {
        goto LABEL_41;
      }

      v9 = 0;
      v10 = *(v33 + 8 * v3);
      v11 = *(v33 + 8 * (v3 + 1));
      v12 = *(v32 + 8 * v2);
      v13 = __OFADD__(v3, 2);
      v3 += 2;
      if (v13)
      {
        goto LABEL_36;
      }
    }

    if ((v5 & v9 & 1) == 0)
    {
      break;
    }

    v13 = __OFADD__(v2, 2);
    v2 += 2;
    if (v13)
    {
      goto LABEL_42;
    }

LABEL_31:
    v46[0] = v10;
    v46[1] = v11;
    v47 = v12;
    v36(&v43, v46);
    v16 = v43;
    v17 = v44;
    v18 = v45;
    v38 = v43;
    v39 = v44;
    LOBYTE(v40) = v45;
    result = v35(&v38);
    if (result)
    {
      v38 = v16;
      v39 = v17;
      LOBYTE(v40) = v18;
      v29(&v43, &v38);
      v19 = v31;
      v20 = v31;
      if (*v43.i64 < *&v43.i64[1])
      {
        v21 = vdup_n_s32(*v44.i64 < *&v44.i64[1]);
        v22.i64[0] = v21.u32[0];
        v22.i64[1] = v21.u32[1];
        v23 = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
        v19 = vbslq_s8(v23, v44, v31);
        v20 = vbslq_s8(v23, v43, v31);
      }

      v38 = v20;
      v39 = v19;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = MEMORY[0x1E69E7CC0];
      v42 = MEMORY[0x1E69E7CC0];
      Region.formUnion(_:)(&v38);
    }
  }

  v14 = *(v30 + 16);
  if (v2 >= v14)
  {
    goto LABEL_31;
  }

  v15 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v3 < *(v6 + 4 * v15))
    {
      v2 = v15;
      goto LABEL_31;
    }

    if (v14 == ++v15)
    {
      v2 = *(v30 + 16);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
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
  return result;
}

double finity.getter()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double sub_183FB3158()
{
  result = -8.98846567e307;
  xmmword_1EA854888 = xmmword_18439ACF0;
  return result;
}

double PartialRangeFrom<>.bounded.getter(double result)
{
  if (qword_1EA854108 != -1)
  {
    v1 = result;
    swift_once();
    return v1;
  }

  return result;
}

uint64_t sub_183FB31DC()
{
  if (qword_1EA854108 != -1)
  {
    return swift_once();
  }

  return result;
}

double PartialRangeUpTo<>.bounded.getter()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double sub_183FB3298()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EA854888;
}

double Region.init<A>(rects:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1843900A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8548D0, &qword_18439AD00);
  v12 = sub_1843900E8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  MEMORY[0x1865EC6A0](a2, a3);
  swift_getWitnessTable();
  sub_184390178();
  (*(v9 + 8))(v11, v8);
  swift_getWitnessTable();
  v15 = sub_183F94370(v14, v12, v20);
  (*(*(a2 - 8) + 8))(a1, a2, v15);
  v16 = v21;
  result = *v20;
  v18 = v20[1];
  v19 = v20[2];
  *a4 = v20[0];
  *(a4 + 16) = v18;
  *(a4 + 32) = v19;
  *(a4 + 48) = v16;
  return result;
}

void sub_183FB351C(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_183F728C4(*a1, a1[1], a1[2]);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_183FB3550(char *a1)
{
  v59 = a1;
  v76[2] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[4];
  v63 = v1 + 4;
  v4 = (v2 & 0xFFFFFFFFFFFFFLL) != 0 && (~v2 & 0x7FF0000000000000) == 0;
  if (!v4 && *(v3 + 16) == 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v3 + 16);
  }

  v7 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v60 = v1 + 6;
  *v71 = v2;
  *&v71[8] = *(v1 + 1);
  *&v71[24] = v7;
  *&v72 = v3;
  *(&v72 + 1) = v8;
  v73 = v9;
  v58 = sub_183FA4388(0, v6);
  v10 = v59;

  v11 = v1 + 5;

  v12 = v6;

  v75 = v59;
  v13 = v1;
  v14 = sub_183FA5A00();
  v15 = *(v1[5] + 16);
  if (v6)
  {
    if (v6 - 1 >= v15)
    {
      goto LABEL_80;
    }

    v62 = *(*v11 + 4 * (v6 - 1) + 32);
  }

  else
  {
    v62 = 0;
  }

  v16 = v6 * v58;
  if ((v6 * v58) >> 64 != (v6 * v58) >> 63)
  {
    goto LABEL_71;
  }

  if (v6 >> 60)
  {
    goto LABEL_82;
  }

  v61 = v15;
  if (8 * v6 >= 1025)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v58 = v11;
    v57[2] = v57;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v14);
    v19 = v57 - v18;
    if (v12 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v53 = swift_slowAlloc();
        HIBYTE(v56) = v12 == v15;
        LOBYTE(v56) = 1;
        sub_183FA8818(v53, v12, v16, v19, v12, v13, 0, 0, v74, sub_183FB8158, v74, v16, v56, v62, 0, v12, 0);
        MEMORY[0x1865EFCB0](v53, -1, -1);
        goto LABEL_61;
      }
    }

    v20 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v11 = (v57 - v21);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    if (v16 >> 60)
    {
      goto LABEL_84;
    }

    if ((8 * v16) >= 1025)
    {
      v20 = swift_stdlib_isStackAllocationSafe();
      if ((v20 & 1) == 0)
      {
        break;
      }
    }

    v57[1] = v57;
    MEMORY[0x1EEE9AC00](v20);
    v23 = v57 - v22;
    v69 = 0;
    v70 = 0;
    v24 = *(v13 + 6);
    v25 = v13[1];
    *v71 = *v13;
    *&v71[16] = v25;
    v72 = v13[2];
    v73 = v24;
    v76[0] = v24 + 32;
    v76[1] = 0;

    sub_183F70628(v71, &v64);
    sub_183FB4774(v71, v10, v23, v16, &v69, v16, 1, v76, v19, v12, &v70, v11, v12, 0);
    sub_183F81130(v71);

    v26 = v12;
    v27 = v69;
    if ((v69 & 0x8000000000000000) != 0)
    {
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
    }

    v28 = v26;
    v57[0] = v57;
    if (v26 != v61)
    {
      sub_183F7DC7C(0, v62, v23, v69);
      v32 = v70;
      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      v33 = v28;
      sub_183F7DC7C(0, v28, v19, v70);
      v16 = v58;
      goto LABEL_29;
    }

    v29 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v63;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v27 <= *(*v29 + 24) >> 1)
      {
        sub_183F7DC7C(0, v62, v23, v27);
        goto LABEL_34;
      }
    }

    else if (!v27)
    {
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    }

    v34 = sub_183EA76E4(v27, 0);
    memcpy(v34 + 4, v23, 8 * v27);
LABEL_33:
    v35 = v60;

    *v35 = v34;
LABEL_34:
    v32 = v70;
    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v32)
      {
LABEL_39:
        v36 = sub_183EA76E4(v32, 0);
        memcpy(v36 + 4, v19, 8 * v32);
      }

      else
      {
        v36 = MEMORY[0x1E69E7CC0];
      }

      *v31 = v36;
      goto LABEL_42;
    }

    if (v32 > *(*v31 + 24) >> 1)
    {
      goto LABEL_39;
    }

    sub_183F7DC7C(0, v28, v19, v32);
LABEL_42:
    v16 = v58;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v32)
      {
LABEL_46:
        v37 = sub_183F9BAB8(v32, 0);
        memcpy(v37 + 4, v11, 4 * v32);
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      *v16 = v37;
      goto LABEL_49;
    }

    if (v32 > *(*v16 + 24) >> 1)
    {
      goto LABEL_46;
    }

    v33 = v28;
LABEL_29:
    sub_183F7DCA8(0, v33, v11, v32);
LABEL_49:
    v15 = v27 - v62;
    v4 = v27 == v62;
    v12 = v28;
    if (v4)
    {
      goto LABEL_61;
    }

    v10 = *v16;
    v38 = *(*v16 + 16);
    if (v38 < v32)
    {
      goto LABEL_85;
    }

    if (v32 == v38)
    {
      goto LABEL_61;
    }

    if (v32 >= v38)
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_183F9C14C(v10);
    }

    while (v32 < *(v10 + 2))
    {
      v39 = &v10[4 * v32];
      v40 = *(v39 + 8);
      v41 = __OFADD__(v40, v15);
      v42 = v40 + v15;
      if (v41)
      {
        goto LABEL_68;
      }

      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (HIDWORD(v42))
      {
        goto LABEL_70;
      }

      ++v32;
      *(v39 + 8) = v42;
      if (v38 == v32)
      {
        *v16 = v10;
        goto LABEL_61;
      }
    }

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
    v14 = swift_stdlib_isStackAllocationSafe();
    if ((v14 & 1) == 0)
    {
      v52 = swift_slowAlloc();
      sub_183FA6E10(v52, v12, v12, v16, v13, 0, 0, sub_183FB8158, 1uLL, v74, v16, 1u, v12 == v15, v62, 0, v12, 0);
      MEMORY[0x1865EFCB0](v52, -1, -1);
      goto LABEL_61;
    }
  }

  v54 = swift_slowAlloc();
  HIBYTE(v55) = v12 == v15;
  LOBYTE(v55) = 1;
  sub_183FA9018(v54, v16, v19, v12, v11, v12, v13, 0, 0, sub_183FB8158, v74, v16, v55, v62, 0, v12, 0);
  MEMORY[0x1865EFCB0](v54, -1, -1);
LABEL_61:
  v43 = *v63;
  if (*(*v63 + 16))
  {
    v44 = *(v13 + 2);
    v45 = *(v13 + 3);
    v64 = *v13;
    v65 = v44;
    v66 = v45;
    v67 = v43;
    v68 = *(v13 + 40);
    sub_183FA5744();
    v48 = *(v43 + 16);
    if (!v48)
    {
      goto LABEL_81;
    }

    v50 = *(v43 + 32);
    v49 = v43 + 32;
    v51 = v50;
    if (v12 == v61)
    {
      v45 = *(v49 + 8 * v48 - 8);
    }
  }

  else
  {
    v46 = 0x7FF8000000000000;
    v47 = 0x7FF8000000000000;
    v51 = 0x7FF8000000000000;
    v45 = 0x7FF8000000000000;
  }

  *v13 = v46;
  *(v13 + 1) = v47;
  *(v13 + 2) = v51;
  *(v13 + 3) = v45;
  sub_183FA5EA0();
}

void Region.apply<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v85 = a2;
  v84 = a1;
  v96[2] = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = v3[4];
  v83 = v3 + 4;
  v7 = (v5 & 0xFFFFFFFFFFFFFLL) != 0 && (~v5 & 0x7FF0000000000000) == 0;
  v8 = *(v6 + 16);
  v9 = !v7 && v8 == 0;
  v10 = (v3 + 5);
  v11 = v3[5];
  v12 = v3[3];
  *v89 = v5;
  v13 = v3[6];
  v82 = v3 + 6;
  if (v9)
  {
    v14 = 2;
  }

  else
  {
    v14 = v8;
  }

  *&v89[8] = *(v3 + 1);
  *&v89[24] = v12;
  v90 = v6;
  *&v91 = v11;
  *(&v91 + 1) = v13;
  v15 = sub_183FA4388(0, v14);

  v93 = v85;
  v94 = v86;
  v95 = v84;
  v16 = sub_183FA5A00();
  v17 = *(*v10 + 16);
  if (v14)
  {
    if (v14 - 1 >= v17)
    {
      goto LABEL_79;
    }

    v18 = *(*v10 + 4 * (v14 - 1) + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = v14 * v15;
  if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
  {
    goto LABEL_70;
  }

  if (v14 >> 60)
  {
    goto LABEL_81;
  }

  if ((8 * v14) >= 1025)
  {
    goto LABEL_71;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v16);
    if (v14 >= 0x101)
    {
      v59 = &v74 - v21;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v60 = swift_slowAlloc();
        BYTE1(v69) = v14 == v17;
        LOBYTE(v69) = 1;
        sub_183FA8818(v60, v14, v19, v59, v14, v4, 0, 0, v92, sub_183FB79F8, v92, v19, v69, v18, 0, v14, 0);
        MEMORY[0x1865EFCB0](v60, -1, -1);
        v40 = v83;
        goto LABEL_60;
      }
    }

    v22 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v19 >> 60)
    {
      goto LABEL_83;
    }

    v81 = v18;
    v79 = v24;
    if ((8 * v19) >= 1025)
    {
      v61 = &v74 - v23;
      v62 = v25;
      v22 = swift_stdlib_isStackAllocationSafe();
      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    v80 = v10;
    v78 = &v74;
    v77 = &v74;
    v26 = MEMORY[0x1EEE9AC00](v22);
    v28 = &v74 - v27;
    v87 = 0;
    v88 = 0;
    v30 = v4[5];
    v29 = v4[6];
    v31 = v4[4];
    v96[0] = v29 + 32;
    v96[1] = 0;
    v32 = *(v4 + 1);
    *v89 = *v4;
    *&v89[16] = v32;
    v90 = v31;
    *&v91 = v30;
    *(&v91 + 1) = v29;
    MEMORY[0x1EEE9AC00](v26);
    *(&v74 - 12) = v28;
    *(&v74 - 11) = v19;
    v64 = &v87;
    v65 = v19;
    LOBYTE(v66) = 1;
    v67 = v96;
    v68 = v33;
    v75 = v33;
    v69 = v14;
    v70 = &v88;
    v76 = v34;
    v71 = v34;
    v72 = v14;
    v73 = 0;
    swift_retain_n();

    sub_183FB5A70(v89, sub_183FAADE0, (&v74 - 14), v84, v85, v86);

    v35 = v87;
    if ((v87 & 0x8000000000000000) != 0)
    {
      __break(1u);
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
    }

    if (v14 != v17)
    {
      v38 = v81;
      sub_183F7DC7C(0, v81, v28, v87);
      v39 = v88;
      v10 = v80;
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }

      v40 = v83;
      sub_183F7DC7C(0, v14, v75, v88);
LABEL_28:
      sub_183F7DCA8(0, v14, v76, v39);
      v18 = v35 - v38;
      if (!v18)
      {
        goto LABEL_60;
      }

      goto LABEL_49;
    }

    v36 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v80;
    v38 = v81;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v35 <= *(*v36 + 24) >> 1)
      {
        sub_183F7DC7C(0, v81, v28, v35);
        goto LABEL_34;
      }
    }

    else if (!v35)
    {
      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    }

    v41 = sub_183EA76E4(v35, 0);
    memcpy(v41 + 4, v28, 8 * v35);
LABEL_33:

    *v36 = v41;
LABEL_34:
    v39 = v88;
    if ((v88 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    v40 = v83;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v39 <= *(*v40 + 24) >> 1)
      {
        sub_183F7DC7C(0, v14, v75, v39);
        goto LABEL_42;
      }
    }

    else if (!v39)
    {
      v42 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

    v42 = sub_183EA76E4(v39, 0);
    memcpy(v42 + 4, v75, 8 * v39);
LABEL_41:

    *v40 = v42;
LABEL_42:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v39 <= *(*v10 + 24) >> 1)
      {
        goto LABEL_28;
      }

LABEL_46:
      v43 = sub_183F9BAB8(v39, 0);
      memcpy(v43 + 4, v76, 4 * v39);
      goto LABEL_48;
    }

    if (v39)
    {
      goto LABEL_46;
    }

    v43 = MEMORY[0x1E69E7CC0];
LABEL_48:

    *v10 = v43;
    v18 = v35 - v38;
    if (!v18)
    {
      goto LABEL_60;
    }

LABEL_49:
    v19 = *v10;
    v44 = *(*v10 + 16);
    if (v44 < v39)
    {
      goto LABEL_84;
    }

    if (v39 == v44)
    {
      goto LABEL_60;
    }

    if (v39 >= v44)
    {
      goto LABEL_85;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_183F9C14C(v19);
    }

    while (v39 < *(v19 + 16))
    {
      v45 = v19 + 4 * v39;
      v46 = *(v45 + 32);
      v47 = __OFADD__(v46, v18);
      v48 = v46 + v18;
      if (v47)
      {
        goto LABEL_67;
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (HIDWORD(v48))
      {
        goto LABEL_69;
      }

      ++v39;
      *(v45 + 32) = v48;
      if (v44 == v39)
      {
        *v10 = v19;
        goto LABEL_60;
      }
    }

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
    v16 = swift_stdlib_isStackAllocationSafe();
    if ((v16 & 1) == 0)
    {
      v58 = swift_slowAlloc();
      sub_183FA6E10(v58, v14, v14, v19, v4, 0, 0, sub_183FB79F8, 1uLL, v92, v19, 1u, v14 == v17, v18, 0, v14, 0);
      MEMORY[0x1865EFCB0](v58, -1, -1);
      v40 = v83;
      goto LABEL_60;
    }
  }

  v63 = swift_slowAlloc();
  BYTE1(v68) = v14 == v17;
  LOBYTE(v68) = 1;
  sub_183FA9018(v63, v19, v62, v14, v61, v14, v4, 0, 0, sub_183FB79F8, v92, v19, v68, v81, 0, v14, 0);
  MEMORY[0x1865EFCB0](v63, -1, -1);
  v40 = v83;
LABEL_60:
  v49 = *v40;
  if (*(*v40 + 16))
  {
    v50 = v4[2];
    v51 = v4[3];
    *v89 = *v4;
    *&v89[16] = v50;
    *&v89[24] = v51;
    v90 = v49;
    v91 = *(v4 + 5);
    sub_183FA5744();
    v54 = *(v49 + 16);
    if (!v54)
    {
      goto LABEL_80;
    }

    v56 = *(v49 + 32);
    v55 = v49 + 32;
    v57 = v56;
    if (v14 == v17)
    {
      v51 = *(v55 + 8 * v54 - 8);
    }
  }

  else
  {
    v52 = 0x7FF8000000000000;
    v53 = 0x7FF8000000000000;
    v57 = 0x7FF8000000000000;
    v51 = 0x7FF8000000000000;
  }

  *v4 = v52;
  v4[1] = v53;
  v4[2] = v57;
  v4[3] = v51;
  sub_183FA5EA0();
}

uint64_t sub_183FB4774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v149 = a8;
  v150 = a3;
  v151 = a7;
  v153 = a6;
  v157 = a5;
  v147 = a14;
  v144 = a12;
  v146 = a11;
  v145 = a9;
  v187 = *MEMORY[0x1E69E9840];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (v132 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v141 = v132 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v132 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v132 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v152 = v132 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v142 = v132 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v132 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v143 = (v132 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v138 = v132 - v41;
  v154 = v42;
  MEMORY[0x1EEE9AC00](v40);
  v44 = v132 - v43;
  v45 = *a1;
  v46 = *a1;
  v47 = ~*a1 & 0x7FF0000000000000;
  v148 = *(a1 + 32);
  v48 = *(v148 + 2);
  v49 = v48 == 0;
  v50 = (v46 & 0xFFFFFFFFFFFFFLL) != 0 && v47 == 0;
  if (v50 || v48)
  {
LABEL_47:
    v156 = v49;
    v86 = *(a1 + 40);
    v85 = *(a1 + 48);
    v142 = v86 + 32;
    v143 = (v148 + 32);
    v135 = v86;
    v155 = *(v86 + 16);
    v139 = v85 + 32;
    v136 = *(v85 + 16);
    sub_183F81520(a2, v30, &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(v30, v27, &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(v30, v141, &qword_1EA8548D8, &qword_18439AD08);
    v87 = *(v17 + 80);
    v88 = swift_allocObject();
    v137 = ((v87 + 16) & ~v87);
    sub_183FB8270(v30, &v137[v88], &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(a2, v22, &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(v22, v140, &qword_1EA8548D8, &qword_18439AD08);
    v138 = v87;
    v89 = swift_allocObject();
    v90 = v155;
    v89[2] = v142;
    v89[3] = v90;
    v91 = v136;
    v89[4] = v139;
    v89[5] = v91;
    sub_183FB8270(v22, v89 + ((v87 + 48) & ~v87), &qword_1EA8548D8, &qword_18439AD08);
    v155 = v88;

    v132[1] = v89;
    if (v48)
    {
      sub_183FB5E6C(0, v27, *v143);
      v93 = v92;
      if (v48 == 1)
      {
LABEL_53:

        v98 = 1;
        v95 = v48;
        goto LABEL_59;
      }

      v94 = (v148 + 40);
      v95 = 1;
      v96 = 0xFFFFFFFFLL;
      while (1)
      {
        if (!v96)
        {
          goto LABEL_128;
        }

        sub_183FB5E6C(v95, v27, *v94);
        if (v97 != v93)
        {
          break;
        }

        ++v95;
        --v96;
        ++v94;
        if (v48 == v95)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v95 = 0;
      v93 = 0.0;
    }

    v98 = v95 == v48;
    if (v95 == v48)
    {
      v100 = v156;
      if (!v48)
      {
LABEL_105:

        sub_183F814B4(v141, &qword_1EA8548D8, &qword_18439AD08);
        sub_183F814B4(v27, &qword_1EA8548D8, &qword_18439AD08);

        v99 = v140;
        return sub_183F814B4(v99, &qword_1EA8548D8, &qword_18439AD08);
      }

      goto LABEL_60;
    }

LABEL_59:
    v100 = v156;
LABEL_60:
    v101 = 0;
    v133 = v135 + 28;
    v134 = v48;
    v102 = v48 - 1;
    v103 = v148 + 40;
    v135 = v148 + 40;
    v136 = v27;
    while (1)
    {
      if (v100)
      {
        goto LABEL_130;
      }

      v104 = v95;
      v156 = v98;
      if (v98)
      {

        v105 = 0.0;
      }

      else
      {
        if (v95 <= 0x100000000)
        {
          v106 = 0x100000000;
        }

        else
        {
          v106 = v95;
        }

        v107 = v143[v95];

        if ((v95 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (HIDWORD(v95))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          sub_183F814B4(v143, &qword_1EA8548D8, &qword_18439AD08);
          sub_183F814B4(v138, &qword_1EA8548D8, &qword_18439AD08);
          sub_183F814B4(v142, &qword_1EA8548D8, &qword_18439AD08);
          __break(1u);
LABEL_130:
          sub_183F814B4(v141, &qword_1EA8548D8, &qword_18439AD08);
          sub_183F814B4(v27, &qword_1EA8548D8, &qword_18439AD08);
          sub_183F814B4(v140, &qword_1EA8548D8, &qword_18439AD08);
          __break(1u);
LABEL_131:
          sub_183F814B4(v141, &qword_1EA8548D8, &qword_18439AD08);
          sub_183F814B4(v27, &qword_1EA8548D8, &qword_18439AD08);
          __break(1u);
        }

        sub_183FB5E6C(v95, v27, v107);
        v105 = v108;
        v95 = v48;
        if ((v104 + 1) != v48)
        {
          v109 = v106 - 1;
          v110 = v104;
          while (1)
          {
            if (v109 == v110)
            {
              goto LABEL_107;
            }

            sub_183FB5E6C(v110 + 1, v27, *&v103[8 * v110]);
            if (v111 != v105)
            {
              break;
            }

            if (v102 == ++v110)
            {
              v95 = v48;
              goto LABEL_76;
            }
          }

          v95 = v110 + 1;
        }

LABEL_76:
        if (v95 < v104)
        {
          goto LABEL_115;
        }
      }

      if (v104 == v101)
      {
        goto LABEL_131;
      }

      v112 = v104 + ~v101;
      v113 = v112 + v101;
      if (__OFADD__(v112, v101))
      {
        goto LABEL_116;
      }

      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (HIDWORD(v113))
      {
        goto LABEL_118;
      }

      v114 = sub_183FB5E6C(v113, v141, v143[v101 + v112]);
      v148 = v95;
      if (v114)
      {
        v115 = *&v133[4 * v114];
      }

      else
      {
        v115 = 0;
      }

      v116 = v139 + 8 * v115;
      v117 = *(v142 + 4 * v114) - v115;
      v27 = v152;
      sub_183F81520(v140, v152, &qword_1EA8548D8, &qword_18439AD08);
      v118 = v137;
      v119 = swift_allocObject();
      sub_183FB8270(v27, &v118[v119], &qword_1EA8548D8, &qword_18439AD08);

      v176 = v93;
      *&v177 = v116;
      *(&v177 + 1) = v117;
      *&v178 = sub_183FB8198;
      *(&v178 + 1) = v119;
      *&v179 = sub_183FB65DC;
      *(&v179 + 1) = 0;
      *&v180 = sub_183FB6EAC;
      *(&v180 + 1) = 0;
      *&v181 = sub_183FB6ED4;
      *(&v181 + 1) = 0;
      v120 = v153 - *v157;
      if (v153 < *v157)
      {
        goto LABEL_119;
      }

      if (v150)
      {
        v121 = (v150 + 8 * *v157);
      }

      else
      {
        v121 = 0;
      }

      v184 = v179;
      v185 = v180;
      v186 = v181;
      v182 = v177;
      v183 = v178;

      v122 = sub_183FAA358(&v162, v121, v120);
      v173 = v166;
      v174 = v167;
      v175 = v168;
      v169 = v162;
      v170 = v163;
      v171 = v164;
      v172 = v165;
      sub_183F814B4(&v169, &qword_1EA8548F0, &qword_18439AD90);
      v103 = v135;
      v27 = v136;
      v95 = v148;
      if (v151)
      {
        if (v122 < 0)
        {
          goto LABEL_127;
        }

        if (*(v149 + 8) == v122)
        {
          if (!v122)
          {
LABEL_95:
            sub_183F814B4(&v176, &qword_1EA8548F8, &qword_18439AD98);
            goto LABEL_103;
          }

          v123 = *v149;
          v124 = v122;
          v125 = v121;
          while (*v123 == *v125)
          {
            ++v125;
            ++v123;
            if (!--v124)
            {
              goto LABEL_95;
            }
          }
        }

        v126 = v149;
        *v149 = v121;
        *(v126 + 8) = v122;
      }

      v127 = v157;
      if (__OFADD__(*v157, v122))
      {
        goto LABEL_120;
      }

      v128 = v176;
      *v157 += v122;
      v129 = v146;
      *(v145 + 8 * *v146) = v128;
      v130 = v147 + *v127;
      if (__OFADD__(v147, *v127))
      {
        goto LABEL_121;
      }

      if ((v130 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      if (HIDWORD(v130))
      {
        goto LABEL_123;
      }

      *(v144 + 4 * *v129) = v130;
      sub_183F814B4(&v176, &qword_1EA8548F8, &qword_18439AD98);
      if (__OFADD__(*v129, 1))
      {
        goto LABEL_124;
      }

      ++*v129;
LABEL_103:
      v101 = v104;
      v93 = v105;
      v48 = v134;
      v98 = v95 == v134;
      v100 = v156;
      if (v95 == v134)
      {
        v101 = v104;
        v93 = v105;
        if (v104 == v134)
        {
          goto LABEL_105;
        }
      }
    }
  }

  v51 = *(a1 + 24);
  v159 = v45;
  v148 = &v160 + 8;
  v160 = *(a1 + 8);
  v161 = v51;
  v158 = 0x200000002;
  v48 = &qword_1EA8548D8;
  v22 = &qword_18439AD08;
  sub_183F81520(a2, v44, &qword_1EA8548D8, &qword_18439AD08);
  sub_183F81520(v44, v138, &qword_1EA8548D8, &qword_18439AD08);
  sub_183F81520(v44, v143, &qword_1EA8548D8, &qword_18439AD08);
  v52 = *(v17 + 80);
  v53 = swift_allocObject();
  v140 = (v52 + 16) & ~v52;
  sub_183FB8270(v44, v53 + v140, &qword_1EA8548D8, &qword_18439AD08);
  sub_183F81520(a2, v37, &qword_1EA8548D8, &qword_18439AD08);
  sub_183F81520(v37, v142, &qword_1EA8548D8, &qword_18439AD08);
  v141 = v52;
  v54 = swift_allocObject();
  v54[2] = &v158;
  v54[3] = 2;
  v54[4] = &v159;
  v54[5] = 2;
  v55 = v53;
  sub_183FB8270(v37, v54 + ((v52 + 48) & ~v52), &qword_1EA8548D8, &qword_18439AD08);

  v56 = v138;
  sub_183FB5E6C(0, v138, *(&v160 + 1));
  v58 = v57;
  sub_183FB5E6C(1u, v56, v161);
  v17 = v59 == v58;
  if (v59 == v58)
  {
    a1 = 2;
  }

  else
  {
    a1 = 1;
  }

  v136 = v54;
  v137 = &v157 + 4;

  v60 = 0;
  v27 = 0;
  v139 = v55;
  do
  {
    if (v27)
    {
      goto LABEL_129;
    }

    v27 = v17;
    if (v17)
    {

      v62 = 0.0;
LABEL_19:
      v66 = 1;
LABEL_20:
      a2 = 2;
      if (a1 == v60)
      {
        goto LABEL_46;
      }

      goto LABEL_21;
    }

    v63 = *&v148[8 * a1];

    v64 = v138;
    sub_183FB5E6C(a1, v138, v63);
    v62 = v65;
    if (a1 == 1)
    {
      goto LABEL_19;
    }

    v66 = 1;
    sub_183FB5E6C(1u, v64, v161);
    if (v84 == v62)
    {
      goto LABEL_20;
    }

    if (a1 > 1)
    {
      goto LABEL_108;
    }

    v66 = 0;
    a2 = 1;
    if (a1 == v60)
    {
LABEL_46:
      v30 = &qword_18439AD08;
      sub_183F814B4(v143, &qword_1EA8548D8, &qword_18439AD08);
      sub_183F814B4(v138, &qword_1EA8548D8, &qword_18439AD08);
      __break(1u);
      goto LABEL_47;
    }

LABEL_21:
    v67 = sub_183FB5E6C(a1 - 1, v143, *&v148[8 * v60 + 8 * a1 + 8 * ~v60]);
    v156 = v66;
    v155 = a2;
    if (v67)
    {
      v68 = *&v137[4 * v67];
    }

    else
    {
      v68 = 0;
    }

    v69 = &v159 + v68;
    v70 = *(&v158 + v67) - v68;
    v71 = v152;
    v22 = &qword_18439AD08;
    sub_183F81520(v142, v152, &qword_1EA8548D8, &qword_18439AD08);
    v72 = v140;
    v73 = swift_allocObject();
    sub_183FB8270(v71, v73 + v72, &qword_1EA8548D8, &qword_18439AD08);

    v176 = v58;
    *&v177 = v69;
    *(&v177 + 1) = v70;
    *&v178 = sub_183FB88B8;
    *(&v178 + 1) = v73;
    *&v179 = sub_183FB65DC;
    *(&v179 + 1) = 0;
    *&v180 = sub_183FB6EAC;
    *(&v180 + 1) = 0;
    *&v181 = sub_183FB6ED4;
    *(&v181 + 1) = 0;
    v48 = (v153 - *v157);
    if (v153 < *v157)
    {
      goto LABEL_109;
    }

    if (v150)
    {
      v74 = (v150 + 8 * *v157);
    }

    else
    {
      v74 = 0;
    }

    v184 = v179;
    v185 = v180;
    v186 = v181;
    v182 = v177;
    v183 = v178;

    v75 = sub_183FAA358(&v162, v74, v48);
    v173 = v166;
    v174 = v167;
    v175 = v168;
    v169 = v162;
    v170 = v163;
    v171 = v164;
    v172 = v165;
    sub_183F814B4(&v169, &qword_1EA8548F0, &qword_18439AD90);
    v17 = v156;
    if (v151)
    {
      if (v75 < 0)
      {
        goto LABEL_125;
      }

      if (*(v149 + 8) == v75)
      {
        if (!v75)
        {
LABEL_10:
          sub_183F814B4(&v176, &qword_1EA8548F8, &qword_18439AD98);
          goto LABEL_11;
        }

        v76 = *v149;
        v77 = v75;
        v78 = v74;
        while (*v76 == *v78)
        {
          ++v78;
          ++v76;
          if (!--v77)
          {
            goto LABEL_10;
          }
        }
      }

      v79 = v149;
      *v149 = v74;
      *(v79 + 8) = v75;
    }

    v80 = v157;
    if (__OFADD__(*v157, v75))
    {
      goto LABEL_110;
    }

    v81 = v176;
    *v157 += v75;
    v82 = v146;
    *(v145 + 8 * *v146) = v81;
    v83 = v147 + *v80;
    if (__OFADD__(v147, *v80))
    {
      goto LABEL_111;
    }

    if ((v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    if (HIDWORD(v83))
    {
      goto LABEL_113;
    }

    *(v144 + 4 * *v82) = v83;
    sub_183F814B4(&v176, &qword_1EA8548F8, &qword_18439AD98);
    if (__OFADD__(*v82, 1))
    {
      goto LABEL_114;
    }

    ++*v82;
LABEL_11:
    if (a1 == 2)
    {
      v61 = v17;
    }

    else
    {
      v61 = 0;
    }

    v60 = a1;
    a1 = v155;
    v58 = v62;
  }

  while ((v61 & 1) == 0);

  sub_183F814B4(v143, &qword_1EA8548D8, &qword_18439AD08);
  sub_183F814B4(v138, &qword_1EA8548D8, &qword_18439AD08);

  v99 = v142;
  return sub_183F814B4(v99, &qword_1EA8548D8, &qword_18439AD08);
}

uint64_t sub_183FB56F0(uint64_t *a1, void (*a2)(char **), uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = (*a1 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a1 & 0x7FF0000000000000) == 0;
  v11 = a1[4];
  v12 = *(v11 + 16);
  if (!v10 && v12 == 0)
  {
    v25 = a1[3];
    v36 = *a1;
    v37 = *(a1 + 1);
    v38 = v25;
    v35 = 0x200000002;
    sub_183F81520(a4, v9, &qword_1EA8548D8, &qword_18439AD08);
    v26 = *(v7 + 80);
    v27 = swift_allocObject();
    sub_183FB8270(v9, v27 + ((v26 + 16) & ~v26), &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(a4, v9, &qword_1EA8548D8, &qword_18439AD08);
    v21 = swift_allocObject();
    v21[2] = &v35;
    v21[3] = 2;
    v21[4] = &v36;
    v21[5] = 2;
    sub_183FB8270(v9, v21 + ((v26 + 48) & ~v26), &qword_1EA8548D8, &qword_18439AD08);
    v39 = &v37 + 8;
    v40 = xmmword_184399820;
    v41 = sub_183FB88BC;
    v42 = v27;
    v43 = sub_183FB65DC;
    v44 = 0;
    v24 = sub_183FB88C0;
  }

  else
  {
    v14 = v11 + 32;
    v15 = a1[5];
    v16 = a1[6];
    v31 = v15 + 32;
    v32 = v14;
    v17 = *(v15 + 16);
    v18 = v16 + 32;
    v29 = *(v16 + 16);
    v30 = v17;
    sub_183F81520(a4, v9, &qword_1EA8548D8, &qword_18439AD08);
    v19 = *(v7 + 80);
    v20 = swift_allocObject();
    sub_183FB8270(v9, v20 + ((v19 + 16) & ~v19), &qword_1EA8548D8, &qword_18439AD08);
    sub_183F81520(a4, v9, &qword_1EA8548D8, &qword_18439AD08);
    v21 = swift_allocObject();
    v22 = v30;
    v21[2] = v31;
    v21[3] = v22;
    v23 = v29;
    v21[4] = v18;
    v21[5] = v23;
    sub_183FB8270(v9, v21 + ((v19 + 48) & ~v19), &qword_1EA8548D8, &qword_18439AD08);
    v39 = v32;
    v40 = v12;
    v41 = sub_183FB83B4;
    v42 = v20;
    v43 = sub_183FB65DC;
    v44 = 0;
    v24 = sub_183FB83B8;
  }

  v45 = v24;
  v46 = v21;
  v34(&v39);
}

uint64_t sub_183FB5A70(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a1[1];
  v20 = *a1;
  v12 = *(a1 + 4);
  v11 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = (v20 & 0xFFFFFFFFFFFFFLL) != 0 && (~v20 & 0x7FF0000000000000) == 0;
  v16 = *(v12 + 16);
  if (!v15 && v16 == 0)
  {
    v22 = v20;
    v23 = v19;
    v21 = 0x200000002;
    sub_183FB5C40(&v23, 2, 0, &v21, 2, &v22, 2, a4, sub_183FB86C0, v14, a5, a6);
  }

  else
  {
    sub_183FB5C40(v12 + 32, v16, 0, v11 + 32, *(v11 + 16), v13 + 32, *(v13 + 16), a4, sub_183FB86C0, v14, a5, a6);
  }
}

uint64_t sub_183FB5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a8;
  v27 = a4;
  v29 = a6;
  v30 = a7;
  v28 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v37 = a12;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  v34 = a9;
  v35 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v25 = *(v12 + 16);
  v25(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v14, a11);
  v15 = *(v12 + 80);
  v16 = swift_allocObject();
  v17 = v37;
  *(v16 + 16) = a11;
  *(v16 + 24) = v17;
  v24 = *(v12 + 32);
  v24(v16 + ((v15 + 32) & ~v15), &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a11);
  v25(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a11);
  v18 = swift_allocObject();
  v19 = v37;
  v18[2] = a11;
  v18[3] = v19;
  v20 = v28;
  v18[4] = v27;
  v18[5] = v20;
  v21 = v30;
  v18[6] = v29;
  v18[7] = v21;
  v24(v18 + ((v15 + 64) & ~v15), &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a11);
  v36[0] = v31;
  v36[1] = v32;
  v36[2] = v33;
  v36[3] = sub_183FB870C;
  v36[4] = v16;
  v36[5] = sub_183FB65DC;
  v36[6] = 0;
  v36[7] = sub_183FB8748;
  v36[8] = v18;
  v34(v36);
}

uint64_t sub_183FB5E6C(unsigned int a1, uint64_t a2, double a3)
{
  v64 = a2;
  v51 = a1;
  v61 = sub_184390218();
  v55 = *(v61 - 8);
  v4 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v47 - v6;
  v7 = type metadata accessor for Region.Operation(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900, &qword_18439ADA0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854908, &qword_18439ADA8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v47 - v24;
  sub_183F81520(v64, v22, &qword_1EA8548D8, &qword_18439AD08);
  sub_183FB819C(v22, v19);
  v26 = *(v8 + 56);
  v26(v19, 0, 1, v7);
  v26(v25, 1, 1, v7);
  sub_183FB8200(v19, v25);
  sub_183FB8270(v25, v17, &qword_1EA854900, &qword_18439ADA0);
  v26(v25, 1, 1, v7);
  v63 = *(v8 + 48);
  v64 = v8 + 48;
  if (v63(v17, 1, v7) == 1)
  {
LABEL_2:
    sub_183F814B4(v25, &qword_1EA854908, &qword_18439ADA8);
    return v51;
  }

  v58 = (v55 + 2);
  v59 = (v55 + 4);
  v57 = (v55 + 11);
  v56 = *MEMORY[0x1E69E7038];
  v53 = *MEMORY[0x1E69E7030];
  v52 = *MEMORY[0x1E69E7040];
  v50 = *MEMORY[0x1E69E7048];
  v49 = *MEMORY[0x1E69E7020];
  v54 = v17;
  ++v55;
  v48 = *MEMORY[0x1E69E7028];
  v28 = &qword_1EA854900;
  while (1)
  {
    sub_183FB819C(v17, v13);
    sub_183FAFA78(v13, v11);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    v40 = v11[1];
    if (v40 < 0.0)
    {
      goto LABEL_29;
    }

    a3 = v11[3] + a3 * v40;
    sub_183FB82D8(v13);
LABEL_7:
    sub_183FB8270(v25, v17, v28, &qword_18439ADA0);
    v26(v25, 1, 1, v7);
    if (v63(v17, 1, v7) == 1)
    {
      goto LABEL_2;
    }
  }

  v30 = v25;
  v31 = v28;
  v32 = v26;
  v33 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808, &qword_18439ADB0) + 48));
  v35 = v61;
  v34 = v62;
  v36 = v11;
  result = (*v59)(v62, v11, v61);
  if (v33 > 0.0)
  {
    v37 = a3 * v33;
    v65 = v37;
    v38 = v60;
    (*v58)(v60, v34, v35);
    v39 = (*v57)(v38, v35);
    if (v39 == v56)
    {
      v29 = round(v37);
      (*v55)(v34, v35);
    }

    else
    {
      if (v39 != v53)
      {
        v26 = v32;
        if (v39 == v52)
        {
          v41 = ceil(v37);
        }

        else if (v39 == v50)
        {
          v41 = floor(v37);
        }

        else
        {
          if (v39 != v49)
          {
            if (v39 == v48)
            {
              (*v55)(v62, v61);
              sub_183FB82D8(v13);
              if ((*&v37 & 0x8000000000000000) != 0)
              {
                v42 = floor(v37);
              }

              else
              {
                v42 = ceil(v37);
              }
            }

            else
            {
              v43 = v62;
              v44 = v61;
              sub_18438FDE8();
              v45 = v43;
              v26 = v32;
              v46 = *v55;
              (*v55)(v45, v44);
              sub_183FB82D8(v13);
              v46(v60, v44);
              v42 = v65;
            }

            a3 = v42 / v33;
            goto LABEL_6;
          }

          v41 = trunc(v37);
        }

        (*v55)(v62, v61);
        sub_183FB82D8(v13);
        a3 = v41 / v33;
LABEL_6:
        v28 = v31;
        v25 = v30;
        v17 = v54;
        v11 = v36;
        goto LABEL_7;
      }

      v29 = rint(v37);
      (*v55)(v62, v61);
    }

    sub_183FB82D8(v13);
    a3 = v29 / v33;
    v26 = v32;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

double sub_183FB6554@<D0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  sub_18438FD98();
  result = v7;
  *a4 = v7;
  *(a4 + 8) = v5;
  return result;
}

double sub_183FB65DC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_183FB65E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v26 = a5;
  v27 = a7;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v16 = *v15;
  v17 = *(v15 + 24);
  v28 = *(v15 + 8);
  v29 = v17;
  v30 = *(v15 + 40);
  result = sub_183F942D0();
  if ((v19 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = sub_183FA4254(v19, a2, a3, a4);
    v22 = v21;
    (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a6);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24 = swift_allocObject();
    v25 = v27;
    *(v24 + 16) = a6;
    *(v24 + 24) = v25;
    result = (*(v13 + 32))(v24 + v23, &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
    a8[1] = v20;
    a8[2] = v22;
    a8[3] = sub_183FB880C;
    a8[4] = v24;
    a8[5] = sub_183FB65DC;
    a8[6] = 0;
    a8[7] = sub_183FB6EAC;
    a8[8] = 0;
    a8[9] = sub_183FB6ED4;
    a8[10] = 0;
    *a8 = v16;
  }

  return result;
}

uint64_t sub_183FB67C4(void (*a1)(_BYTE *, uint64_t, uint64_t, uint64_t), double a2)
{
  v63 = a1;
  v60 = sub_184390218();
  v54 = *(v60 - 8);
  v3 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v47[-v5];
  v6 = type metadata accessor for Region.Operation(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900, &qword_18439ADA0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v47[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854908, &qword_18439ADA8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v47[-v23];
  sub_183F81520(v63, v21, &qword_1EA8548D8, &qword_18439AD08);
  sub_183FB819C(v21, v18);
  v25 = *(v7 + 56);
  v25(v18, 0, 1, v6);
  v25(v24, 1, 1, v6);
  sub_183FB8200(v18, v24);
  sub_183FB8270(v24, v16, &qword_1EA854900, &qword_18439ADA0);
  v63 = v25;
  v25(v24, 1, 1, v6);
  v27 = *(v7 + 48);
  v26 = v7 + 48;
  v62 = v27;
  if (v27(v16, 1, v6) == 1)
  {
    return sub_183F814B4(v24, &qword_1EA854908, &qword_18439ADA8);
  }

  v57 = (v54 + 2);
  v58 = (v54 + 4);
  v56 = (v54 + 11);
  v55 = *MEMORY[0x1E69E7038];
  v52 = *MEMORY[0x1E69E7030];
  v51 = *MEMORY[0x1E69E7040];
  v50 = *MEMORY[0x1E69E7048];
  v49 = *MEMORY[0x1E69E7020];
  v53 = v16;
  ++v54;
  v48 = *MEMORY[0x1E69E7028];
  v29 = &qword_1EA854900;
  while (1)
  {
    sub_183FB819C(v16, v12);
    sub_183FAFA78(v12, v10);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      break;
    }

    if (*v10 < 0.0)
    {
      goto LABEL_29;
    }

    a2 = v10[2] + a2 * *v10;
    sub_183FB82D8(v12);
LABEL_7:
    sub_183FB8270(v24, v16, v29, &qword_18439ADA0);
    v63(v24, 1, 1, v6);
    if (v62(v16, 1, v6) == 1)
    {
      return sub_183F814B4(v24, &qword_1EA854908, &qword_18439ADA8);
    }
  }

  v31 = v24;
  v32 = v29;
  v33 = v26;
  v34 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808, &qword_18439ADB0) + 48));
  v35 = v60;
  v36 = v61;
  v37 = v10;
  result = (*v58)(v61, v10, v60);
  if (v34 > 0.0)
  {
    v38 = a2 * v34;
    v64 = v38;
    v39 = v59;
    (*v57)(v59, v36, v35);
    v40 = (*v56)(v39, v35);
    if (v40 == v55)
    {
      v30 = round(v38);
      (*v54)(v36, v35);
    }

    else
    {
      if (v40 != v52)
      {
        v26 = v33;
        if (v40 == v51)
        {
          v41 = ceil(v38);
        }

        else if (v40 == v50)
        {
          v41 = floor(v38);
        }

        else
        {
          if (v40 != v49)
          {
            if (v40 == v48)
            {
              (*v54)(v61, v60);
              sub_183FB82D8(v12);
              if ((*&v38 & 0x8000000000000000) != 0)
              {
                v42 = floor(v38);
              }

              else
              {
                v42 = ceil(v38);
              }
            }

            else
            {
              v43 = v61;
              v44 = v60;
              sub_18438FDE8();
              v45 = v43;
              v26 = v33;
              v46 = *v54;
              (*v54)(v45, v44);
              sub_183FB82D8(v12);
              v46(v59, v44);
              v42 = v64;
            }

            a2 = v42 / v34;
            goto LABEL_6;
          }

          v41 = trunc(v38);
        }

        (*v54)(v61, v60);
        sub_183FB82D8(v12);
        a2 = v41 / v34;
LABEL_6:
        v29 = v32;
        v24 = v31;
        v16 = v53;
        v10 = v37;
        goto LABEL_7;
      }

      v30 = rint(v38);
      (*v54)(v61, v60);
    }

    sub_183FB82D8(v12);
    a2 = v30 / v34;
    v26 = v33;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_183FB6EAC@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  if (((*(result + 16) - *(result + 8)) & 1) == 0)
  {
    v2 = NAN;
  }

  *a2 = v2;
  return result;
}

Swift::Void __swiftcall Region.apply(_:)(CGAffineTransform *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v13 - v4);
  if (a1->a >= 0.0 && a1->b == 0.0 && a1->c == 0.0 && (d = a1->d, d >= 0.0))
  {
    *v5 = a1->a;
    v5[1] = d;
    *(v5 + 1) = *&a1->tx;
    type metadata accessor for Region.Operation(0);
    swift_storeEnumTagMultiPayload();
    sub_183FB3550(v5);
    sub_183F814B4(v5, &qword_1EA8548D8, &qword_18439AD08);
  }

  else
  {
    v7 = *(v1 + 6);
    v8 = swift_allocObject();
    v9 = *&a1->c;
    v8[1] = *&a1->a;
    v8[2] = v9;
    v8[3] = *&a1->tx;
    v10 = *v1;
    v15[1] = v1[1];
    v15[0] = v10;
    v15[2] = v1[2];
    v16 = v7;
    v17 = sub_183FB7DC0;
    v18 = v8;
    v19 = sub_183FB7DC8;
    v20 = 0;
    v21 = sub_183FB7DD8;
    v22 = 0;
    sub_183FB2DC0(v15, v13);
    v11 = v14;
    v12 = v13[1];
    *v1 = v13[0];
    v1[1] = v12;
    v1[2] = v13[2];
    *(v1 + 6) = v11;
  }
}

double *sub_183FB7084@<X0>(double *result@<X0>, double *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = a2[1];
  if (v3 == 0.0 && a2[2] == 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  v5 = 0;
  v6 = NAN;
  v7 = NAN;
  v8.i64[0] = 0x7FF8000000000000;
  v9.i64[0] = 0x7FF8000000000000;
  do
  {
    if (v5 > 1)
    {
      v10 = result[1];
      v11 = result[2];
      if (v5 != 2)
      {
        v10 = *result;
        v11 = result[3];
        if (v5 != 3)
        {
LABEL_46:
          result = sub_184390118();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v10 = *result;
      v11 = result[2];
      if (v5)
      {
        v10 = result[1];
        v11 = result[3];
        if (v5 != 1)
        {
          goto LABEL_46;
        }
      }
    }

    v12 = a2[4] + *a2 * v10 + a2[2] * v11;
    v13 = a2[5] + v3 * v10 + a2[3] * v11;
    if ((*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v14 = *v9.i64;
    }

    else
    {
      v14 = v12;
    }

    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      v14 = v12;
    }

    if (*v9.i64 > v12)
    {
      *v9.i64 = v14;
    }

    if ((*&v13 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v15 = *v8.i64;
    }

    else
    {
      v15 = v13;
    }

    if ((~*&v13 & 0x7FF0000000000000) != 0)
    {
      v15 = v13;
    }

    if (*v8.i64 > v13)
    {
      *v8.i64 = v15;
    }

    if ((*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = v12;
    }

    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      v16 = v12;
    }

    if (v12 >= v7)
    {
      v7 = v16;
    }

    if (v13 >= v6)
    {
      if ((~*&v13 & 0x7FF0000000000000) != 0)
      {
        v6 = v13;
      }

      else if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v6 = v13;
      }
    }

    ++v5;
  }

  while (v4 != v5);
  v17 = *v9.i64 >= v7;
  if (*v8.i64 >= v6)
  {
    v17 = 1;
  }

  *&v9.i64[1] = v7;
  *&v8.i64[1] = v6;
  if (v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  *a3 = vbicq_s8(v9, v19);
  a3[1] = vbicq_s8(v8, v19);
  a3[2].i8[0] = v17;
  return result;
}

void Region.bounds.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (~*v1 & 0x7FF0000000000000) == 0;
  if ((*v1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v2 = 0;
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v4 = v1[3];
    v5 = *(v1 + 1);
  }

  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

double Region.boundsRect.getter()
{
  result = *v0;
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return INFINITY;
  }

  return result;
}

Swift::Bool __swiftcall Region.contains(_:)(CGPoint a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1 > a1.x || v3 <= a1.x || v4 > a1.y || v5 <= a1.y)
  {
    return 0;
  }

  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 48);
  if ((~*&v2 & 0x7FF0000000000000) == 0 && (*&v2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    x = a1.x;
    v19 = sub_183F94198(v11 + 32, *(v11 + 16), a1.y);
    goto LABEL_24;
  }

  v14 = *(v11 + 16);
  if (v14)
  {
    x = a1.x;
    v19 = sub_183F94198(v11 + 32, v14, a1.y);
    if (!*(v11 + 16))
    {
      *v26 = v2;
      *&v26[1] = v3;
      *&v26[2] = v4;
      *&v26[3] = v5;
      v25 = 0x200000002;
      v15 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        v16 = x;
        if (v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          if (__OFSUB__(v15, 1))
          {
            goto LABEL_37;
          }

          v17 = *(&v25 + v19 - 2);
        }

        v24 = &v26[v17];
        v23 = *(&v26[-1] + v15) - v17;
        return (sub_183F94198(v24, v23, v16) & 0x8000000000000001) == 1;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

LABEL_24:
    v20 = v19 - 1;
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v21 = v10 + 32;
      if (v19 == 1)
      {
        v22 = 0;
        v16 = x;
        goto LABEL_29;
      }

      if (!__OFSUB__(v20, 1))
      {
        v16 = x;
        v22 = *(v21 + 4 * (v19 - 2));
LABEL_29:
        v23 = *(v21 + 4 * v20) - v22;
        v24 = (v12 + 8 * v22 + 32);
        return (sub_183F94198(v24, v23, v16) & 0x8000000000000001) == 1;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  return 1;
}

int8x16_t sub_183FB7468()
{
  if (qword_1EA854108 != -1)
  {
    swift_once();
  }

  v0 = vdup_lane_s32(vmovn_s64(vcgtq_f64(vdupq_laneq_s64(xmmword_1EA854888, 1), xmmword_1EA854888)), 0);
  v1.i64[0] = v0.i32[0];
  v1.i64[1] = v0.i32[1];
  result = vbslq_s8(v1, xmmword_1EA854888, vdupq_n_s64(0x7FF8000000000000uLL));
  xmmword_1EA854898 = result;
  unk_1EA8548A8 = result;
  qword_1EA8548B8 = MEMORY[0x1E69E7CC0];
  unk_1EA8548C0 = MEMORY[0x1E69E7CC0];
  qword_1EA8548C8 = MEMORY[0x1E69E7CC0];
  return result;
}

double static Region.infinite.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EA854110 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EA8548B8;
  v2 = unk_1EA8548C0;
  v3 = qword_1EA8548C8;
  v4 = unk_1EA8548A8;
  *a1 = xmmword_1EA854898;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;

  return result;
}

uint64_t Region.isInfinite.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v9[2] = *(v0 + 32);
  v10 = v1;
  if (qword_1EA854110 != -1)
  {
    swift_once();
  }

  v5[0] = xmmword_1EA854898;
  v5[1] = unk_1EA8548A8;
  v6 = qword_1EA8548B8;
  v7 = unk_1EA8548C0;
  v8 = qword_1EA8548C8;
  v3 = _s12CoreGraphics6RegionV2eeoiySbAC_ACtFZ_0(v9, v5);

  return v3 & 1;
}

void Region.insetBy(dx:dy:)(unint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = (~*&v5 & 0x7FF0000000000000) != 0 || (*&v5 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v11 || a2 == 0.0 && a3 == 0.0)
  {
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
  }

  else if (*(v8 + 16))
  {
    if ((a2 >= 0.0 || a3 <= 0.0) && (a2 <= 0.0 || a3 >= 0.0))
    {
      *&v32 = v5;
      *(&v32 + 1) = v4;
      *&v33 = v7;
      *(&v33 + 1) = v6;
      v34 = v8;
      v35 = v9;
      v36 = v10;
      *&v28[0] = 0;
      sub_183F7D0CC(v28, v43);
      v26 = swift_allocObject();
      *(v26 + 16) = a2;
      *(v26 + 24) = a3;
      v44 = sub_183FB8004;
      v45 = v26;
      v46 = sub_183FB7FD0;
      v47 = 0;
      v48 = sub_183FB7FE0;
      v49 = 0;
      v17 = v43;
    }

    else
    {
      *&v32 = v5;
      *(&v32 + 1) = v4;
      *&v33 = v7;
      *(&v33 + 1) = v6;
      v34 = v8;
      v35 = v9;
      v36 = v10;
      *&v28[0] = 0;
      sub_183F7D0CC(v28, v43);
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      v44 = sub_183FB8040;
      v45 = v15;
      v46 = sub_183FB7FD0;
      v47 = 0;
      v48 = sub_183FB7FE0;
      v49 = 0;
      sub_183F7A27C(v43, 1, &v32);
      v28[0] = v32;
      v28[1] = v33;
      v29 = v34;
      v30 = v35;
      v31 = v36;
      v27 = 0;
      sub_183F7D0CC(&v27, &v32);

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      v37 = sub_183FB8080;
      v38 = v16;
      v39 = sub_183FB7FD0;
      v40 = 0;
      v41 = sub_183FB7FE0;
      v42 = 0;
      v17 = &v32;
    }

    sub_183F7A27C(v17, 1, a1);
  }

  else
  {
    v18 = v5 + a2;
    v19 = v4 - a2;
    v20 = v7 + a3;
    v21 = v6 - a3;
    if (v18 >= v19 || v20 >= v21)
    {
      v18 = NAN;
      v19 = NAN;
      v20 = NAN;
      v21 = NAN;
    }

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    v23 = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    *(a1 + 40) = v23;
    *(a1 + 48) = v23;
  }
}

double Region.rects.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = sub_183FB79DC;
  *(a1 + 64) = 0;

  return result;
}

double sub_183FB79DC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  v3 = a1[2];
  v4 = a1[1] - *a1;
  v5 = a1[3] - v3;
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

void sub_183FB7A04(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = a1[2];
  v70 = a1[1];
  v71 = v13;
  v69 = *a1;
  v45 = *(a1 + 7);
  v72 = *(a1 + 6);
  v73[0] = v69;
  v73[1] = v70;
  *(&v44 + 1) = *(a1 + 4);
  v74 = *(&v44 + 1);
  v14 = *(&v69 + 1);
  v43 = v69;
  *&v44 = *(&v70 + 1);
  sub_183F81520(v73, &v56, &qword_1EA854910, &qword_18439ADB8);

  v15 = sub_183F7DF30(0);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v19 == v14 && v21 == v14)
  {
LABEL_29:

    return;
  }

  while ((v17 & 1) == 0)
  {
    v22 = v14;
    if (v43)
    {
      v23 = v43 + 8 * v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = (v21 - v19);

    v25 = sub_183F7DF30(v21);
    v48 = v26;
    v28 = v27;
    v21 = v29;
    *&v49 = v15;
    *(&v49 + 1) = v23;
    *&v50 = v24;
    *(&v50 + 1) = v19;
    v51 = v44;
    v45(&v56, &v49);
    sub_183F814B4(v73, &qword_1EA854910, &qword_18439ADB8);
    *&v63[32] = v58;
    *&v63[48] = v59;
    *&v63[64] = v60;
    *&v63[80] = v61;
    *v63 = v56;
    *&v63[16] = v57;
    v30 = a5 - *a4;
    if (a5 < *a4)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

    if (a2)
    {
      v31 = (a2 + 8 * *a4);
    }

    else
    {
      v31 = 0;
    }

    v66 = *&v63[40];
    v67 = *&v63[56];
    v68 = *&v63[72];
    v64 = *&v63[8];
    v65 = *&v63[24];

    v32 = sub_183FAA358(&v49, v31, v30);
    v60 = v53;
    v61 = v54;
    v62 = v55;
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    sub_183F814B4(&v56, &qword_1EA8548F0, &qword_18439AD90);
    if (a6)
    {
      if (v32 < 0)
      {
        goto LABEL_36;
      }

      if (*(a7 + 8) == v32)
      {
        if (!v32)
        {
LABEL_18:
          sub_183F814B4(v63, &qword_1EA8548F8, &qword_18439AD98);
          goto LABEL_26;
        }

        v33 = *a7;
        v34 = v32;
        v35 = v31;
        while (*v33 == *v35)
        {
          ++v35;
          ++v33;
          if (!--v34)
          {
            goto LABEL_18;
          }
        }
      }

      *a7 = v31;
      *(a7 + 8) = v32;
    }

    if (__OFADD__(*a4, v32))
    {
      goto LABEL_31;
    }

    v36 = *v63;
    *a4 += v32;
    *(a8 + 8 * *a10) = v36;
    v37 = a13 + *a4;
    if (__OFADD__(a13, *a4))
    {
      goto LABEL_32;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (HIDWORD(v37))
    {
      goto LABEL_34;
    }

    *(a11 + 4 * *a10) = v37;
    sub_183F814B4(v63, &qword_1EA8548F8, &qword_18439AD98);
    if (__OFADD__(*a10, 1))
    {
      goto LABEL_35;
    }

    ++*a10;
LABEL_26:
    v19 = v28;
    v15 = v25;
    v38 = v28 == v22;
    v14 = v22;
    v17 = v48;
    if (v38)
    {
      v15 = v25;
      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

uint64_t sub_183FB7DD8@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(result + 32))
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 16);
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

uint64_t sub_183FB7DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v25 - v14;
  v16 = *a1;
  v17 = *(a1 + 3);
  v25[0] = *(a1 + 1);
  v25[1] = v17;
  v26 = a1[5];
  result = sub_183F942D0();
  if ((v19 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = sub_183FA4254(v19, a2, a3, a4);
    v22 = v21;
    sub_183F81520(a5, v15, &qword_1EA8548D8, &qword_18439AD08);
    v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v24 = swift_allocObject();
    result = sub_183FB8270(v15, v24 + v23, &qword_1EA8548D8, &qword_18439AD08);
    a6[1] = v20;
    a6[2] = v22;
    a6[3] = sub_183FB88B8;
    a6[4] = v24;
    a6[5] = sub_183FB65DC;
    a6[6] = 0;
    a6[7] = sub_183FB6EAC;
    a6[8] = 0;
    a6[9] = sub_183FB6ED4;
    a6[10] = 0;
    *a6 = v16;
  }

  return result;
}

void sub_183FB7FE0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(a1 + 8);
    *a2 = v3;
    *(a2 + 8) = v4 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_183FB8004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_183FB8040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), *(v2 + 16), 0.0);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_183FB8080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_183F9232C(*a1, *(a1 + 8), 0.0, *(v2 + 16));
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_183FB80D4()
{
  result = qword_1EA8548E0;
  if (!qword_1EA8548E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8548E8, &qword_18439AD88);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8548E0);
  }

  return result;
}

uint64_t sub_183FB8158(uint64_t a1, void (*a2)(char **), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  return sub_183FB56F0(v7, a2, a3, v4);
}

uint64_t sub_183FB819C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Region.Operation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FB8200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854900, &qword_18439ADA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FB8270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_183FB82D8(uint64_t a1)
{
  v2 = type metadata accessor for Region.Operation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_183FB8334@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08) - 8);
  result = sub_183FB67C4((v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80))), *a1);
  *a2 = v7;
  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for Region.Operation(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_184390218();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183FB84B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08) - 8);
  result = sub_183FB5E6C(*(a1 + 8), v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), *a1);
  *a2 = v7;
  *(a2 + 8) = result;
  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for Region.Operation(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_184390218();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183FB862C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8548D8, &qword_18439AD08) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_183FB7DF0(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_183FB86C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_183FB880C@<D0>(double *a2@<X8>)
{
  sub_18438FD98();
  result = v4;
  *a2 = v4;
  return result;
}

CoreGraphics::CGPathFillRule_optional __swiftcall CGPathFillRule.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_183FB88EC()
{
  result = qword_1EA854918;
  if (!qword_1EA854918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854918);
  }

  return result;
}

void *sub_183FB8940@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_183FB896C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FB89DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_183FB8B1C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_183FB8D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v12 = &v14 - v11;
  (*(v5 + 32))(v8, v2, v4);
  sub_18438FD38();
  return sub_183FB8EAC(v12, MEMORY[0x1E69E7CC0], v4, v9, a2);
}

uint64_t sub_183FB8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for Subregions.Iterator(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

void *sub_183FB8F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    result = sub_18438FF58();
    v5 = v25.i64[0];
    if (!v25.i64[0])
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }

    v6 = v25.i8[8];

    sub_183F78560(v7, v6 & 1, 0, &v25);
    if ((sub_183F90F40(v5, v6 & 1) & 1) == 0)
    {
      break;
    }

    v23 = v26;
    v24 = v25;
    v8 = v27;
    v9 = v28;
    v10 = *(a1 + 36);
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_183F7FF94(0, *(v11 + 16) + 1, 1);
      v11 = *(v3 + v10);
    }

    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_183F7FF94((v13 > 1), v14 + 1, 1);
    }

    v15 = *(v3 + v10);
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 56 * v14;
    *(v16 + 32) = v24;
    *(v16 + 48) = v23;
    *(v16 + 64) = v8;
    *(v16 + 80) = v9;
    *(v3 + v10) = v15;
  }

  v17 = *(a1 + 36);
  result = sub_183FB9194((v3 + v17), &v25);
  v18 = *(*(v3 + v17) + 16);
  if (v18 < result)
  {
    __break(1u);
  }

  else
  {
    sub_183F80DA4(result, v18);

    v19 = v28;
    v20 = v26;
    *a2 = v25;
    *(a2 + 16) = v20;
    *(a2 + 32) = v27;
    *(a2 + 48) = v19;
  }

  return result;
}

uint64_t sub_183FB9194(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_183FB94D4(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 56 * result + 88;
    while (v8 < v9)
    {
      v50 = v8;
      v42 = v4;
      v43 = v7;
      v41 = v11;
      v14 = v4 + v11;
      v15 = *(v4 + v11);
      v16 = *(v4 + v11 + 8);
      v17 = *(v4 + v11 + 16);
      v18 = *(v4 + v11 + 24);
      v19 = *(v4 + v11 + 32);
      v20 = *(v14 + 40);
      v21 = *(v14 + 48);
      v23 = *(a2 + 32);
      v22 = *(a2 + 40);
      v24 = *(a2 + 48);
      v25 = *(a2 + 16);
      v45 = *a2;
      v46 = v25;
      v47 = v23;
      v48 = v22;
      v49 = v24;
      v44[0] = v15;
      v44[1] = v16;
      v44[2] = v17;
      v44[3] = v18;
      v44[4] = v19;
      v44[5] = v20;
      v44[6] = v21;

      LOBYTE(v22) = Region.isSuperset(of:)(v44);

      if (v22)
      {
        *&v45 = v15;
        *(&v45 + 1) = v16;
        *&v46 = v17;
        *(&v46 + 1) = v18;
        v47 = v19;
        v48 = v20;
        v49 = v21;
        Region.subtract(_:)(&v45);

        v4 = v42;
        v7 = v43;
        v12 = v50;
        v13 = v41;
      }

      else
      {

        v26 = v43;
        v12 = v50;
        if (v50 == v43)
        {
          v13 = v41;
          v4 = v42;
        }

        else
        {
          v4 = v42;
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v43 >= *v10)
          {
            goto LABEL_25;
          }

          if (v50 >= *v10)
          {
            goto LABEL_26;
          }

          v27 = v42 + 32 + 56 * v43;
          v35 = *(v27 + 16);
          v36 = *v27;
          v28 = *(v27 + 40);
          v29 = *(v27 + 48);
          v38 = *(v14 + 16);
          v39 = *v14;
          v31 = *(v14 + 32);
          v30 = *(v14 + 40);
          v32 = *(v14 + 48);
          v37 = *(v27 + 32);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_183F9C160(v42);
            v4 = result;
          }

          if (v43 >= *(v4 + 16))
          {
            goto LABEL_27;
          }

          v33 = v4 + 56 * v43;
          *(v33 + 32) = v39;
          *(v33 + 48) = v38;
          *(v33 + 64) = v31;
          *(v33 + 72) = v30;
          *(v33 + 80) = v32;

          v12 = v50;
          if (v50 >= *(v4 + 16))
          {
            goto LABEL_28;
          }

          v34 = v4 + v41;
          *v34 = v36;
          *(v34 + 16) = v35;
          *(v34 + 32) = v37;
          *(v34 + 40) = v28;
          *(v34 + 48) = v29;

          v13 = v41;
          *a1 = v4;
          v26 = v43;
        }

        v7 = v26 + 1;
      }

      v8 = v12 + 1;
      v10 = (v4 + 16);
      v9 = *(v4 + 16);
      v11 = v13 + 56;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FB94D4(uint64_t a1, uint64_t a2)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 80); ; i += 7)
  {
    v5 = *(i - 6);
    v6 = *(i - 5);
    v7 = *(i - 4);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v13 = *(a2 + 32);
    v12 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 16);
    v18 = *a2;
    v19 = v15;
    v20 = v13;
    v21 = v12;
    v22 = v14;
    v17[0] = v5;
    v17[1] = v6;
    v17[2] = v7;
    v17[3] = v8;
    v17[4] = v9;
    v17[5] = v10;
    v17[6] = v11;

    LOBYTE(v12) = Region.isSuperset(of:)(v17);

    if (v12)
    {
      break;
    }

    if (v23 == ++v3)
    {
      return 0;
    }
  }

  *&v18 = v5;
  *(&v18 + 1) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  Region.subtract(_:)(&v18);

  return v3;
}

void sub_183FB9688(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_183FB9A8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_183FB9720(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_183FB98B0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
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

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

void sub_183FB9A8C()
{
  if (!qword_1ED4DFB78)
  {
    v0 = sub_1843900D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4DFB78);
    }
  }
}

uint64_t sub_183FB9B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 8);
    if ((*(a2 + 24) & 1) == 0)
    {
      if (v12 < v5)
      {
        if (v9 < v7)
        {
          goto LABEL_167;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1843982F0;
        *(inited + 32) = v5;
        *(inited + 40) = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
        v74 = swift_allocObject();
        v75 = _swift_stdlib_malloc_size(v74);
        v76 = v75 - 40;
        if (v75 < 40)
        {
          v76 = v75 - 33;
        }

        v74[3] = 0;
        v74[4] = 0;
        v74[2] = v76 >> 3;
        v77 = *(inited + 16);
        if (v77)
        {
          if (v77 > 2)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          memcpy(v74 + 5, (inited + 32), 8 * v77);
        }

        v74[3] = 2;
        swift_setDeallocating();
        v123 = v74;
        v124 = 0;
        sub_183F911D4(v12);
        sub_183F912E8(*&v8);
        sub_183F911D4(v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854920, &qword_18439AF60);
        v78 = swift_allocObject();
        *(v78 + 16) = v74;
        *(v78 + 24) = 0;
        *(v78 + 32) = 0;
        v79 = v74[3];
        if (v79 < 1)
        {
          goto LABEL_154;
        }

        if (v79 == 1)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v8 = v78;
        v80 = v74[2];
        v81 = v74[4] + 1;
        if (v81 < v80)
        {
          v80 = 0;
        }

        v52 = v74[v81 - v80 + 5];
        swift_retain_n();
        swift_beginAccess();
        v82 = *(v8 + 16);
        v83 = *(v8 + 24);

        v84 = v82[3];
        v85 = v84 - 2;
        if (__OFSUB__(v84, 2))
        {
          goto LABEL_158;
        }

        if (v85 < 0)
        {
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (v85 >= v84)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (v84 - 1 >= v84)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v86 = v82[4];
        v87 = v82[2];
        if (v86 + v85 >= v87)
        {
          v88 = v82[2];
        }

        else
        {
          v88 = 0;
        }

        v89 = v86 + v85 - v88;
        v90 = v86 + v85 + 1;
        if (v90 >= v87)
        {
          v91 = v82[2];
        }

        else
        {
          v91 = 0;
        }

        v92 = v90 - v91;
        if ((v83 ^ v85))
        {
          v93 = v89;
        }

        else
        {
          v93 = v92;
        }

        v13 = *&v82[v93 + 5];

        v64 = 0;
        v63 = 1;
      }

      else
      {
        if (v9 >= v7)
        {
          goto LABEL_167;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_1843982F0;
        *(v34 + 32) = v7;
        *(v34 + 40) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
        v35 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v35);
        v37 = v36 - 40;
        if (v36 < 40)
        {
          v37 = v36 - 33;
        }

        v35[3] = 0;
        v35[4] = 0;
        v35[2] = v37 >> 3;
        v38 = *(v34 + 16);
        if (v38)
        {
          if (v38 > 2)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          memcpy(v35 + 5, (v34 + 32), 8 * v38);
        }

        v35[3] = 2;
        swift_setDeallocating();
        v123 = v35;
        v124 = 0;
        sub_183F911D4(v9);
        sub_183F912E8(v13);
        sub_183F911D4(v12);
        v39 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854920, &qword_18439AF60);
        v8 = swift_allocObject();
        *(v8 + 16) = v39;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        swift_retain_n();
        swift_beginAccess();
        v40 = *(v8 + 16);
        v41 = *(v8 + 24);

        v42 = v40[3];
        v43 = v42 - 2;
        if (__OFSUB__(v42, 2))
        {
          goto LABEL_153;
        }

        if (v43 < 0)
        {
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v43 >= v42)
        {
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (v42 - 1 >= v42)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v44 = v40[4];
        v45 = v40[2];
        if (v44 + v43 >= v45)
        {
          v46 = v40[2];
        }

        else
        {
          v46 = 0;
        }

        v47 = v44 + v43 - v46;
        v48 = v44 + v43 + 1;
        if (v48 >= v45)
        {
          v49 = v40[2];
        }

        else
        {
          v49 = 0;
        }

        v50 = v48 - v49;
        if ((v41 ^ v43))
        {
          v51 = v47;
        }

        else
        {
          v51 = v50;
        }

        v52 = v40[v51 + 5];

        swift_beginAccess();
        v53 = *(v8 + 16);
        v54 = v53[3];
        if (v54 < 1)
        {
          goto LABEL_161;
        }

        if (v54 == 1)
        {
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        v55 = v53[4];
        v56 = v53[2];
        if (v55 >= v56)
        {
          v57 = v53[2];
        }

        else
        {
          v57 = 0;
        }

        v58 = v55 - v57;
        v59 = v55 + 1;
        if (v59 < v56)
        {
          v56 = 0;
        }

        v60 = v59 - v56;
        if (*(v8 + 24))
        {
          v61 = v58;
        }

        else
        {
          v61 = v60;
        }

        v13 = *&v53[v61 + 5];

        v63 = 0;
        v64 = 1;
      }

      v94 = 0;
      v95 = 0;
      v96 = 1;
      v97 = 0x4000000000000001;
      goto LABEL_137;
    }

    v5 = *a2;
    v7 = *a1;
    if (v12 < *a1)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    v13 = *(a2 + 8);

    v12 = v9;
    v8 = v6;
    if (v9 < v7)
    {
LABEL_25:
      if (LOBYTE(v5))
      {
        goto LABEL_167;
      }

      swift_beginAccess();
      v25 = *(v8 + 16);
      v26 = v25[3];
      if (v26 < 1)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v26 == 1)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v27 = v25[4];
      v28 = v25[2];
      if (v27 >= v28)
      {
        v29 = v25[2];
      }

      else
      {
        v29 = 0;
      }

      v30 = v27 - v29;
      v31 = v27 + 1;
      if (v31 < v28)
      {
        v28 = 0;
      }

      v32 = v31 - v28;
      if (*(v8 + 24))
      {
        v33 = v30;
      }

      else
      {
        v33 = v32;
      }

      if (*&v25[v33 + 5] == v13)
      {
        sub_183F813A0(a2, &v123);
      }

      else
      {
        swift_beginAccess();
        sub_183F813A0(a2, &v123);
        sub_183F91FD4(v13);
        swift_endAccess();
      }

      swift_beginAccess();
      sub_183F9214C(v7);
      result = swift_endAccess();
      v98 = *(v8 + 16);
      v99 = v98[3];
      if (v99 < 1)
      {
        goto LABEL_146;
      }

      if (v99 == 1)
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v64 = 0;
      v100 = v98[4];
      v101 = v98[2];
      if (v100 >= v101)
      {
        v102 = v98[2];
      }

      else
      {
        v102 = 0;
      }

      v103 = v100 - v102;
      v104 = v100 + 1;
      if (v104 < v101)
      {
        v101 = 0;
      }

      v105 = v104 - v101;
      if (*(v8 + 24))
      {
        v105 = v103;
      }

      v63 = &v98[v105];
      v52 = *(v63 + 40);
      goto LABEL_135;
    }

LABEL_8:
    if ((LOBYTE(v5) & 1) == 0)
    {
      goto LABEL_167;
    }

    swift_beginAccess();
    v14 = *(v8 + 16);
    v15 = v14[3];
    v16 = v15 - 2;
    if (__OFSUB__(v15, 2))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v16 < 0)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v16 >= v15)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v15 - 1 >= v15)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v17 = v14[4];
    v18 = v14[2];
    if (v17 + v16 >= v18)
    {
      v19 = v14[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v17 + v16 - v19;
    v21 = v17 + v15 - 1;
    if (v21 >= v18)
    {
      v22 = v14[2];
    }

    else
    {
      v22 = 0;
    }

    v23 = v21 - v22;
    if ((*(v8 + 24) ^ v16))
    {
      v24 = v20;
    }

    else
    {
      v24 = v23;
    }

    if (*&v14[v24 + 5] == v13)
    {
      sub_183F813A0(a2, &v123);
    }

    else
    {
      swift_beginAccess();
      sub_183F813A0(a2, &v123);
      sub_183F912E8(v13);
      swift_endAccess();
    }

    swift_beginAccess();
    sub_183F911D4(v12);
    swift_endAccess();
    v106 = *(v8 + 32);
    swift_retain_n();
    for (i = v8; v106; v106 = *(v106 + 32))
    {
      i = v106;
    }

    swift_beginAccess();
    v108 = *(i + 16);
    v109 = *(i + 24);

    v110 = v108[3];
    v111 = v110 - 2;
    if (__OFSUB__(v110, 2))
    {
      goto LABEL_149;
    }

    if (v111 < 0)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v111 >= v110)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v110 - 1 >= v110)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v112 = v108[4];
    v113 = v108[2];
    if (v112 + v111 >= v113)
    {
      v114 = v108[2];
    }

    else
    {
      v114 = 0;
    }

    v115 = v112 + v111 - v114;
    v116 = v112 + v111 + 1;
    if (v116 >= v113)
    {
      v117 = v108[2];
    }

    else
    {
      v117 = 0;
    }

    v118 = v116 - v117;
    if ((v109 ^ v111))
    {
      v119 = v115;
    }

    else
    {
      v119 = v118;
    }

    v52 = v108[v119 + 5];

    v64 = 1;
LABEL_135:
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 1;
    goto LABEL_137;
  }

  if (LOBYTE(v5))
  {
    if ((LOBYTE(v7) & 1) == 0)
    {
      sub_183F813A0(a1, &v123);
      sub_183F813A0(a2, &v123);
      v10 = v6;
      v11 = v8;
      goto LABEL_71;
    }
  }

  else if (LOBYTE(v7))
  {
    sub_183F813A0(a1, &v123);
    sub_183F813A0(a2, &v123);
    v10 = v8;
    v11 = v6;
LABEL_71:
    v65 = sub_183FBA640(v10, v11);
    if (v65)
    {
      v120 = a3;
      swift_beginAccess();
      v66 = *(v65 + 24);
      v122 = *(v65 + 16);
      v67 = *(v65 + 32);
      swift_retain_n();

      if (v67)
      {
        while (1)
        {
          swift_beginAccess();
          v68 = *(v122 + 24);
          if (__OFSUB__(v68, 1))
          {
            break;
          }

          if (((v66 ^ *(v67 + 24)) ^ (((v68 - 1) & 1) == 0)))
          {
            v69 = v68 - 1;
          }

          else
          {
            v69 = *(v122 + 24);
          }

          if (v68 < v69)
          {
            goto LABEL_139;
          }

          v70 = *(v67 + 16);
          v71 = v70[3];
          if (v71 < 2)
          {
            goto LABEL_140;
          }

          swift_retain_n();

          sub_183FBBF64(v69, v68, 2, v71, v70, v72);

          v67 = *(v67 + 32);
          if (!v67)
          {
            goto LABEL_136;
          }
        }

        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

LABEL_136:
      sub_183F91488();

      sub_183F813FC(a2);
      sub_183F813FC(a1);

      v64 = 0;
      v8 = 0;
      v96 = 0;
      v63 = 0;
      v94 = v122;
      v95 = v66;
      v97 = 0x8000000000000000;
      v52 = 0;
      v13 = 0.0;
      a3 = v120;
    }

    else
    {
      sub_183F813FC(a2);
      result = sub_183F813FC(a1);
      v64 = 0;
      v8 = 0;
      v96 = 0;
      v63 = 0;
      v94 = 0;
      v95 = 0;
      v52 = 0;
      v13 = 0.0;
      v97 = 0x8000000000000000;
    }

LABEL_137:
    *a3 = v64;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0;
    *(a3 + 24) = v96;
    *(a3 + 32) = v52;
    *(a3 + 40) = v63;
    *(a3 + 48) = v8;
    *(a3 + 56) = 0;
    *(a3 + 64) = v97;
    *(a3 + 72) = v13;
    *(a3 + 80) = v94;
    *(a3 + 88) = v95;
    return result;
  }

LABEL_167:
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183FBA640(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(*(a1 + 16) + 24);
  v6 = v5 - 2;
  if (__OFSUB__(v5, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 - 1 >= v5)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = v7[3];
  if (v8 < 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 == 1)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v9 = v7[4];
  v10 = v7[2];
  if (v9 >= v10)
  {
    v11 = v7[2];
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 - v11;
  v13 = v9 + 1;
  if (v13 < v10)
  {
    v10 = 0;
  }

  v14 = v13 - v10;
  if (*(a2 + 24))
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = *&v7[v15 + 5];
  swift_beginAccess();
  sub_183F912E8(v16);
  swift_endAccess();
  v17 = *(a2 + 32);

  for (i = a2; v17; v17 = *(v17 + 32))
  {
    i = v17;
  }

  if (i == a1)
  {
  }

  else
  {
    v19 = *(a1 + 32);

    if (v19)
    {
      do
      {
        v20 = v19;

        v19 = *(v19 + 32);
      }

      while (v19);
    }

    else
    {
      v20 = a1;
    }

    *(v20 + 32) = a2;

    return 0;
  }

  return a2;
}

void *sub_183FBA808(void *result, void *__dst, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      v5[1] = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = memcpy(__dst, (a4 + 32), 8 * v6);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FBA870(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *__src)
{
  if (a4 >= 1)
  {
    result = sub_183FCB528(&v59, __src, a4, a5, a6);
    v11 = v59;
    v12 = v60;
    if (v63)
    {
      v13 = MEMORY[0x1EEE9AC00](result);
      v56 = a1;
      v57 = a2;
      v58 = a3;
      MEMORY[0x1EEE9AC00](v13);
      v14 = &v56;
      v15 = a3 + 5;
      v16 = sub_183FBBDE4(a3 + 2, (a3 + 5), sub_183FBCD2C);
      if ((v17 & 1) == 0)
      {
      }

      v56 = a1;
      v57 = a2;
      v58 = a3;
      v18 = MEMORY[0x1EEE9AC00](v16);
      MEMORY[0x1EEE9AC00](v18);

      result = sub_183FBBD50(a3 + 2, (a3 + 5), sub_183FBCD44);
      if (v20)
      {
        v21 = a1;
        if (v11)
        {
          v21 = a1;
          if (v12)
          {
            if (v12 < 0)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            if (a2 <= a1)
            {
              v22 = a1;
            }

            else
            {
              v22 = a2;
            }

            if (a1 != a2)
            {
              v23 = 0;
              v24 = v22 - a1;
              while (v24 != v23)
              {
                if (a1 < 0)
                {
                  goto LABEL_94;
                }

                if (a1 + v23 >= a3[3])
                {
                  goto LABEL_95;
                }

                v25 = a3[4];
                v26 = a1 + v23;
                if (a1 + v23 + v25 >= a3[2])
                {
                  v27 = a3[2];
                }

                else
                {
                  v27 = 0;
                }

                v11[v23] = v15[v26 + v25 - v27];
                if (v12 - 1 == v23)
                {
                  v21 = v26 + 1;
                  if (v26 + 1 == a2)
                  {
                  }

                  goto LABEL_45;
                }

                ++v23;
                if (!(a1 - a2 + v23))
                {
                }
              }

              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        v21 = a1 + v19;
        if (__OFADD__(a1, v19))
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      if (v21 == a2)
      {
      }

LABEL_45:
      if (v21 < a1 || v21 >= a2)
      {
        goto LABEL_106;
      }

      if (v21 < 0)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (v21 >= a3[3])
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    else
    {
      v14 = a1 + v60;
      if (__OFADD__(a1, v60))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v14 < a1)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (a2 < v14)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v54 = v61;
      v55 = a2;
      v53 = v62;
      v28 = MEMORY[0x1EEE9AC00](result);
      v56 = a1;
      v57 = v14;
      v58 = a3;
      MEMORY[0x1EEE9AC00](v28);
      v15 = a3 + 5;

      v29 = sub_183FBBDE4(a3 + 2, (a3 + 5), sub_183FBCD2C);
      if ((v30 & 1) == 0)
      {
        v39 = v53;
        v38 = v54;
        goto LABEL_53;
      }

      v56 = a1;
      v57 = v14;
      v58 = a3;
      v31 = MEMORY[0x1EEE9AC00](v29);
      MEMORY[0x1EEE9AC00](v31);

      result = sub_183FBBD50(a3 + 2, (a3 + 5), sub_183FBCD44);
      if (v33)
      {
        v34 = a1;
        if (v11)
        {
          v34 = a1;
          if (v12)
          {
            if (v12 < 0)
            {
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            if (v14 != a1)
            {
              v35 = a1;
              while ((a1 & 0x8000000000000000) == 0)
              {
                if (v35 >= a3[3])
                {
                  goto LABEL_97;
                }

                v36 = a3[4];
                if (v35 + v36 >= a3[2])
                {
                  v37 = a3[2];
                }

                else
                {
                  v37 = 0;
                }

                *v11 = v15[v35 + v36 - v37];
                if (!--v12)
                {
                  v34 = v35 + 1;
                  if (v34 == v14)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_79;
                }

                ++v11;
                ++v35;
              }

              goto LABEL_96;
            }

LABEL_52:

            v39 = v53;
            v38 = v54;
LABEL_53:

            v41 = MEMORY[0x1EEE9AC00](v40);
            v12 = v55;
            v56 = v14;
            v57 = v55;
            v58 = a3;
            MEMORY[0x1EEE9AC00](v41);
            v42 = sub_183FBBDE4(a3 + 2, v15, sub_183FBCD2C);
            if (v43)
            {
              v56 = v14;
              v57 = v55;
              v58 = a3;
              v44 = MEMORY[0x1EEE9AC00](v42);
              MEMORY[0x1EEE9AC00](v44);

              result = sub_183FBBD50(a3 + 2, v15, sub_183FBCD44);
              if (v46)
              {
                if (v38 && v39)
                {
                  if (v39 < 0)
                  {
LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
                    goto LABEL_107;
                  }

                  v47 = v55 - v14;
                  if (v55 != v14)
                  {
                    v48 = 0;
                    while (v47 != v48)
                    {
                      if (v14 < 0)
                      {
                        goto LABEL_99;
                      }

                      if (v14 + v48 >= a3[3])
                      {
                        goto LABEL_100;
                      }

                      v49 = a3[4];
                      v50 = v14 + v48;
                      if (v14 + v48 + v49 >= a3[2])
                      {
                        v51 = a3[2];
                      }

                      else
                      {
                        v51 = 0;
                      }

                      *(v38 + 8 * v48) = v15[v50 + v49 - v51];
                      if (v39 - 1 == v48)
                      {
                        goto LABEL_84;
                      }

                      if (v47 == ++v48)
                      {
                      }
                    }

LABEL_98:
                    __break(1u);
LABEL_99:
                    __break(1u);
LABEL_100:
                    __break(1u);
                    goto LABEL_101;
                  }
                }
              }

              else
              {
                v52 = v14 + v45;
                if (!__OFADD__(v14, v45))
                {
LABEL_74:
                  if (v52 == v55)
                  {
                  }

LABEL_85:
                  if (v52 < v14 || v52 >= v55)
                  {
                    goto LABEL_112;
                  }

                  if (v52 < 0)
                  {
LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

                  if (v52 >= a3[3])
                  {
LABEL_114:
                    __break(1u);
                    return result;
                  }

                  __break(1u);
                  goto LABEL_90;
                }

                __break(1u);
              }

              v52 = v14;
              goto LABEL_74;
            }
          }
        }

LABEL_51:
        if (v34 != v14)
        {
LABEL_79:
          if (v34 < a1 || v34 >= v14)
          {
            goto LABEL_109;
          }

          if (v34 < 0)
          {
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          if (v34 >= a3[3])
          {
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          __break(1u);
LABEL_84:
          v52 = v50 + 1;
          if (v50 + 1 == v12)
          {
          }

          goto LABEL_85;
        }

        goto LABEL_52;
      }
    }

    v34 = a1 + v32;
    if (__OFADD__(a1, v32))
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    goto LABEL_51;
  }
}

uint64_t sub_183FBB008@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBB080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 40 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_183FBB0FC(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v46 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v46[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v47 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v48 = v47;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v59 = a3;
          result = memmove(result, v34, v35);
          a3 = v59;
          goto LABEL_139;
        }

LABEL_76:
        v37 = v10 - v16;
        v38 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v38)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
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
            return result;
          }

          if (v37 > 0)
          {
            result = &__src[8 * v15];
            v55 = &__src[8 * v16];
            if (v15 != v16 || result >= &v55[8 * v37])
            {
              v56 = a3;
              v57 = __src;
              result = memmove(result, v55, 8 * v37);
              __src = v57;
              a3 = v56;
            }

            v17 = __OFADD__(v15, v37);
            v15 += v37;
            if (v17)
            {
              goto LABEL_158;
            }

            v58 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v58)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v38)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v37 > 0)
        {
          result = &__src[8 * v15];
          v39 = &__src[8 * v16];
          if (v15 != v16 || result >= &v39[8 * v37])
          {
            v40 = a3;
            v41 = __src;
            result = memmove(result, v39, 8 * v37);
            __src = v41;
            a3 = v40;
          }

          v17 = __OFADD__(v15, v37);
          v15 += v37;
          if (v17)
          {
            goto LABEL_157;
          }

          v42 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v42)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v43 = a3;
          v44 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v44;
          a3 = v43;
        }

        v45 = v6;
        if (v6 >= *a3)
        {
          v45 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v45];
        if (v45 <= 0 && &v34[8 * v4] > __src && !v45)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v49 = &__src[8 * v16 + -8 * v15];
      if (v49 != __src || v49 >= &__src[8 * v15])
      {
        v16 = result;
        v50 = a3;
        v51 = __src;
        memmove(v49, __src, 8 * v15);
        result = v16;
        __src = v51;
        a3 = v50;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || v26 > 0 || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v52 = a3[2];
  result = &__src[8 * v14];
  v46 = &__src[8 * v52];
  if (v14 >= v52 && result < &v46[8 * v10] && v14 == v52)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v48 = 8 * v10;
LABEL_116:
  result = memmove(result, v46, v48);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v53 = a3[1];
  v17 = __OFSUB__(v53, v6);
  v54 = v53 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v60 = a3[1];
  v17 = __OFSUB__(v60, v6);
  v54 = v60 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v54;
  return result;
}

unint64_t sub_183FBB6B4(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[40 * v7];
      if (v14 >= v7 && &__src[40 * v14] < &v49[40 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 40 * result;
      result = &__src[40 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[40 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[40 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 40 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[40 * v15];
            v30 = &__src[40 * v16];
            if (v15 != v16 || result >= &v30[40 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 40 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[40 * v16];
          if (v16 <= 0 && &v35[40 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 5 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
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
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[40 * v15];
            v59 = &__src[40 * v16];
            if (v15 != v16 || result >= &v59[40 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 40 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[40 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 40 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[40 * v15];
          v41 = &__src[40 * v16];
          if (v15 != v16 || result >= &v41[40 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 40 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[40 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 40 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[40 * v47];
        if (v47 <= 0 && &v35[40 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 5 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[40 * v16 + -40 * v15];
      if (v52 != __src || v52 >= &__src[40 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 40 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 40 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[40 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || v38 > 0 || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[40 * v38], 40 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[40 * v14];
  v49 = &__src[40 * v56];
  if (v14 >= v56 && result < &v49[40 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 40 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[40 * v15];
    v35 = &__src[40 * v16];
    if (v15 < v16 || result >= &v35[40 * v14] || v15 != v16)
    {
      v48 = 40 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

char *sub_183FBBCD0(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 8 * v4);
    return &v5[8 * v4];
  }

  return __src;
}

void *sub_183FBBD50(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_183FBBDE4(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_183FBBE6C@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_183FBBEEC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

unint64_t sub_183FBBF64@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  v11 = result;
  result = *v7;
  a6 = *(*v7 + 24);
  if (a6 < a2)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v8 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v9 = a3;
  v13 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v14 = v13 - v8;
  if (__OFSUB__(v13, v8))
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v15 = a6 + v14;
  if (__OFADD__(a6, v14))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v6 = a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  a6 = *(*v7 + 16);
  if (a6 < v15 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, v15, 0);
  }

  if (v13 < v8)
  {
    v8 = v13;
  }

  v16 = v11 + v8;
  if (__OFADD__(v11, v8))
  {
    goto LABEL_106;
  }

  a6 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v16 < v11 || a6 < v9)
  {
    goto LABEL_108;
  }

  if (a6 > a4)
  {
LABEL_109:
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
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v69 = v14;
  v70 = v9 + v8;
  v17 = *v7;
  v68 = a4;
  if (v16 == v11)
  {

    goto LABEL_87;
  }

  result = sub_183FBB008(v11, v11 + v8, (v17 + 16), v17 + 40, &v71);
  v19 = v71;
  v18 = v72;
  v67 = v17;
  v65 = v8;
  if ((v75 & 1) != 0 || (a6 = v74) == 0)
  {
    v66 = &v61;
    v32 = MEMORY[0x1EEE9AC00](result);
    v59 = v19;
    v60 = v18;
    v76 = v9;
    v77 = v70;
    v78 = v6;
    MEMORY[0x1EEE9AC00](v32);
    v8 = (v6 + 5);

    v22 = v18;
    v33 = sub_183FBBDE4(v6 + 2, (v6 + 5), sub_183FBC8E8);
    v17 = v67;
    if ((v34 & 1) == 0)
    {
      goto LABEL_87;
    }

    v76 = v9;
    v77 = v70;
    v78 = v6;
    v35 = MEMORY[0x1EEE9AC00](v33);
    v64 = v18;
    MEMORY[0x1EEE9AC00](v35);

    result = sub_183FBBD50(v6 + 2, (v6 + 5), sub_183FBC920);
    if (v37)
    {
      a6 = v9;
      v38 = v70;
      v17 = v67;
      if (v19)
      {
        a6 = v9;
        if (v64)
        {
          if (v64 < 0)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          v39 = v65;
          if (v70 != v9)
          {
            a6 = v64 - 1;
            v40 = v9;
            while (v39)
            {
              if (v9 < 0)
              {
                goto LABEL_116;
              }

              if (v40 >= v6[3])
              {
                goto LABEL_117;
              }

              v41 = v6[4];
              if (v40 + v41 >= v6[2])
              {
                v42 = v6[2];
              }

              else
              {
                v42 = 0;
              }

              *v19 = *(v8 + 8 * (v40 + v41 - v42));
              if (!a6)
              {
                a6 = v40 + 1;
                if (v40 + 1 == v38)
                {
                  goto LABEL_58;
                }

                goto LABEL_94;
              }

              ++v19;
              --a6;
              ++v40;
              if (!--v39)
              {
                goto LABEL_58;
              }
            }

            goto LABEL_115;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      a6 = v9 + v36;
      if (__OFADD__(v9, v36))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v38 = v70;
      v17 = v67;
    }

    if (a6 != v38)
    {
LABEL_94:
      if (a6 < v9 || a6 >= v70)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (a6 < 0)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (a6 >= v6[3])
      {
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      __break(1u);
LABEL_99:
      a6 = v29 + 1;
      goto LABEL_62;
    }

LABEL_58:

    goto LABEL_87;
  }

  v20 = v9 + v72;
  if (__OFADD__(v9, v72))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v20 < v9)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v62 = v74;
  if (v70 < v20)
  {
LABEL_120:
    __break(1u);
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v63 = v73;
  v21 = MEMORY[0x1EEE9AC00](result);
  v66 = &v58;
  v59 = v19;
  v60 = v18;
  v76 = v9;
  v77 = v20;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v21);
  v22 = (v6 + 5);

  v23 = sub_183FBBDE4(v6 + 2, (v6 + 5), sub_183FBCD2C);
  v66 = v20;
  v64 = v18;
  if (v24)
  {
    v8 = &v61;
    v76 = v9;
    v77 = v20;
    v78 = v6;
    v25 = MEMORY[0x1EEE9AC00](v23);
    v59 = v19;
    v60 = v18;
    MEMORY[0x1EEE9AC00](v25);

    result = sub_183FBBD50(v6 + 2, (v6 + 5), sub_183FBCD44);
    if (v27)
    {
      a6 = v9;
      v28 = v66;
      if (v19)
      {
        a6 = v9;
        if (v64)
        {
          a6 = v64;
          if (v64 < 0)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            if (a6 < v8 || a6 >= v70)
            {
              goto LABEL_141;
            }

            if (a6 < 0)
            {
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            if (a6 >= v6[3])
            {
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            __break(1u);
            goto LABEL_133;
          }

          if (v66 != v9)
          {
            a6 = v64;
            v29 = v9;
            while ((v9 & 0x8000000000000000) == 0)
            {
              if (v29 >= v6[3])
              {
                goto LABEL_122;
              }

              v30 = v6[4];
              if (v29 + v30 >= v6[2])
              {
                v31 = v6[2];
              }

              else
              {
                v31 = 0;
              }

              *v19 = *(v22 + 8 * (v29 + v30 - v31));
              if (!--a6)
              {
                goto LABEL_99;
              }

              ++v19;
              ++v29;
            }

            goto LABEL_121;
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
      a6 = v9 + v26;
      if (__OFADD__(v9, v26))
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v28 = v66;
    }

LABEL_62:
    if (a6 != v28)
    {
LABEL_133:
      if (a6 < v9 || a6 >= v66)
      {
        goto LABEL_144;
      }

      if (a6 < 0)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (a6 >= v6[3])
      {
LABEL_146:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_63:
  }

  v43 = MEMORY[0x1EEE9AC00](v23);
  v44 = v62;
  v59 = v63;
  v60 = v62;
  v8 = v66;
  v76 = v66;
  v77 = v70;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v43);
  v45 = sub_183FBBDE4(v6 + 2, v22, sub_183FBCD2C);
  v17 = v67;
  if ((v46 & 1) == 0)
  {
    goto LABEL_87;
  }

  v9 = &v61;
  v47 = v70;
  v76 = v8;
  v77 = v70;
  v78 = v6;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v59 = v63;
  v60 = v44;
  MEMORY[0x1EEE9AC00](v48);

  result = sub_183FBBD50(v6 + 2, v22, sub_183FBCD44);
  if (v50)
  {
    v51 = v63;
    if (v63)
    {
      v8 = v66;
      v52 = v62;
      if (v62 < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      a6 = 0;
      v53 = v65 - v64;
      v54 = v66;
      while (1)
      {
        v55 = a6 + 1;
        if (__OFADD__(a6, 1))
        {
          goto LABEL_110;
        }

        if (!v53)
        {
          goto LABEL_86;
        }

        if (v54 >= v47)
        {
          goto LABEL_112;
        }

        if (v8 < 0)
        {
          goto LABEL_113;
        }

        if (v54 >= v6[3])
        {
          goto LABEL_114;
        }

        v56 = v6[4];
        if (v54 + v56 >= v6[2])
        {
          v57 = v6[2];
        }

        else
        {
          v57 = 0;
        }

        v51[a6] = *(v22 + 8 * (v54 + v56 - v57));
        if (v55 == v52)
        {
          a6 = v54 + 1;
          goto LABEL_85;
        }

        --v53;
        ++a6;
        v54 = (v54 + 1);
        if (v55 >= v52)
        {
          __break(1u);
          goto LABEL_80;
        }
      }
    }
  }

  else
  {
LABEL_80:
    a6 = v8 + v49;
    if (!__OFADD__(v8, v49))
    {
      goto LABEL_85;
    }

    __break(1u);
  }

  v8 = v66;
  a6 = v66;
LABEL_85:
  if (a6 != v47)
  {
    goto LABEL_128;
  }

LABEL_86:

  v17 = v67;
LABEL_87:
  if (v69 < 0)
  {

    if (v16 <= a2)
    {
      sub_183FBB008(v16, a2, (v17 + 16), v17 + 40, &v76);
      return sub_183FBB0FC(v16, a2, (v17 + 16), (v17 + 40));
    }

    goto LABEL_111;
  }

  if (v69)
  {
    return sub_183FBA870(v70, v68, v6, v69, v16, (v17 + 16), (v17 + 40));
  }

  else
  {
  }
}

void *sub_183FBC940@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 8 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

char *sub_183FBC9A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_183FBBCD0(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_183FBC9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_183FBCA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12CoreGraphics8StitchesO(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_183FBCAC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_183FBCB14(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_183FBCB8C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 1 | (a2 << 62);
    *(result + 24) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = xmmword_18439AF50;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_183FBCC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_183FBCC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_183FBCCA8()
{
  result = qword_1EA854928;
  if (!qword_1EA854928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854928);
  }

  return result;
}

BOOL sub_183FBCD88(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
}

uint64_t sub_183FBCDC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(v3 + 24);
  v7 = *(result + 16);
  v8 = *(result + 32);
  v9 = *(result + 24) >> 1;
  v18 = *(v3 + 32);
  v19 = *(result + 8) + 16;
  v10 = v7;
  v16 = v18;
  v17 = v6;
  while (2)
  {
    if (v10 != v9)
    {
      v11 = (v19 + 24 * v10);
      v12 = v10;
      while (1)
      {
        if (v10 < v7 || v12 >= v9)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v13 = *v11;
        v14 = v12 + 1;
        v20 = *(v11 - 1);
        v21 = v20;
        v22 = v13;
        result = v8(&v21);
        if (result)
        {
          break;
        }

        v11 += 3;
        ++v12;
        if (v9 == v14)
        {
          goto LABEL_16;
        }
      }

      if (v13 >= *&v20)
      {
        v10 = v12 + 1;
        v15 = __OFADD__(v6++, 1);
        if (!v15)
        {
          continue;
        }

        goto LABEL_18;
      }

      v10 = v12 + 1;
      v15 = __OFADD__(v18++, 1);
      if (!v15)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_16:
  *a2 = a3;
  *(a2 + 8) = v17;
  *(a2 + 16) = v16;
  *(a2 + 24) = v6;
  *(a2 + 32) = v18;
  return result;
}

double sub_183FBCEF0@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  sub_183FBCDC8((a1 + 1), v5, *a1);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

BOOL sub_183FBCF38(double *a1, double a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a1;
  if (*a1 > v3)
  {
    v4 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 ? *a1 : a1[2];
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      v4 = a1[2];
    }
  }

  if (v4 > a2)
  {
    return 0;
  }

  if (v3 >= v2)
  {
    if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v2 = a1[2];
    }

    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      v2 = a1[2];
    }
  }

  return v2 > a2;
}

void *sub_183FBCFA0(void *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  if (!a2)
  {
    return ((v4 != v5) ^ (v2 != v3));
  }

  if (a2 == 1)
  {
    return ((v4 < v5) ^ (v2 < v3));
  }

  v6 = __OFADD__(v2, v3);
  v7 = v2 + v3;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v4, v5);
    v8 = v4 + v5;
    if (!v6)
    {
      return (((v8 & 0x8000000000000001) == 1) ^ ((v7 & 0x8000000000000001) == 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBD020(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FBD040(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t CGPDFArrayRef.debugDescription.getter(const __CFString *a1)
{
  DebugDescription = CGPDFArrayCreateDebugDescription(a1);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v4 = *MEMORY[0x1E69E9840];
  value = 0;
  if (CGPDFArrayGetBoolean(array, index, &value))
  {
    return value != 0;
  }

  else
  {
    return 2;
  }
}

{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0.0;
  Number = CGPDFArrayGetNumber(array, index, v5);
  v3 = v5[0];
  if (!Number)
  {
    v3 = 0.0;
  }

  return *&v3;
}

void (*CGPDFArrayRef.subscript.modify(uint64_t a1, size_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *v2;
  *(a1 + 17) = 0;
  Boolean = CGPDFArrayGetBoolean(v4, a2, (a1 + 17));
  v6 = *(a1 + 17) != 0;
  if (!Boolean)
  {
    v6 = 2;
  }

  *(a1 + 16) = v6;
  return sub_183FBD214;
}

CGPDFInteger CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  Integer = CGPDFArrayGetInteger(array, index, v5);
  v3 = v5[0];
  if (!Integer)
  {
    return 0;
  }

  return v3;
}

void CGPDFArrayRef.subscript.setter(uint64_t a1, char a2, unint64_t a3)
{
  sub_183FBE8F8(a1, a2 & 1, a3);
}

{
  sub_183FBE9DC(a1, a2 & 1, a3);
}

uint64_t (*CGPDFArrayRef.subscript.modify(uint64_t *a1, size_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  *(v6 + 16) = 0;
  Integer = CGPDFArrayGetInteger(v7, a2, (v6 + 16));
  v9 = *(v6 + 16);
  if (!Integer)
  {
    v9 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = !Integer;
  return sub_183FBD390;
}

uint64_t (*CGPDFArrayRef.subscript.modify(CGPDFReal **a1, size_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v7 = *v2;
  *(v6 + 16) = 0;
  Number = CGPDFArrayGetNumber(v7, a2, (v6 + 16));
  v9 = *(v6 + 16);
  if (!Number)
  {
    v9 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = !Number;
  return sub_183FBD4FC;
}

void sub_183FBD514(void **a1, uint64_t a2, void (*a3)(void, void, void))
{
  v3 = *a1;
  a3(**a1, *(*a1 + 8), (*a1)[3]);

  free(v3);
}

const char *CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  Name = CGPDFArrayGetName(array, index, v4);
  result = 0;
  if (Name)
  {
    result = v4[0];
    if (v4[0])
    {
      return sub_18438FD28();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*CGPDFArrayRef.subscript.modify(uint64_t **a1, size_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v7 = *v2;
  v6[2] = 0;
  v8 = (v6 + 2);
  Name = CGPDFArrayGetName(v7, a2, v6 + 2);
  v10 = 0;
  v11 = 0;
  if (!Name)
  {
    goto LABEL_7;
  }

  result = *v8;
  if (*v8)
  {
    v10 = sub_18438FD28();
LABEL_7:
    *v6 = v10;
    v6[1] = v11;
    return sub_183FBD6C8;
  }

  __break(1u);
  return result;
}

void sub_183FBD6C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  if (a2)
  {

    _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(v3, v4, v5);
  }

  else
  {
    _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(**a1, v4, v5);
  }

  free(v2);
}

CGPDFStringRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetString(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFArrayRef.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_183FBECA0(a1, a2, &qword_1EA854990, &qword_18439B530, type metadata accessor for CGPDFStringRef, CGPDFObjectCreateWithString);
}

{
  sub_183FBECA0(a1, a2, &qword_1EA854988, &qword_18439B528, type metadata accessor for CGPDFDictionaryRef, CGPDFObjectCreateWithDictionary);
}

{
  sub_183FBECA0(a1, a2, &qword_1EA854980, &qword_18439B520, type metadata accessor for CGPDFStreamRef, CGPDFObjectCreateWithStream);
}

void (*CGPDFArrayRef.subscript.modify(uint64_t a1, size_t a2))(uint64_t *a1)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  String = CGPDFArrayGetString(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!String)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBD8A0;
}

{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  Dictionary = CGPDFArrayGetDictionary(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!Dictionary)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBDA54;
}

{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  v4 = *v2;
  *(a1 + 8) = 0;
  Stream = CGPDFArrayGetStream(v4, a2, (a1 + 8));
  v6 = *(a1 + 8);
  if (!Stream)
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_183FBDC08;
}

CGPDFDictionaryRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetDictionary(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

CGPDFStreamRef CGPDFArrayRef.subscript.getter(size_t index, CGPDFArrayRef array)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (CGPDFArrayGetStream(array, index, v3))
  {
    return v3[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFArrayRef.subscript.getter(uint64_t *__return_ptr a1@<X8>, size_t index@<X0>, CGPDFArrayRef array@<X1>)
{
  v3 = array;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (CGPDFArrayGetObject(array, index, value))
  {
    v3 = value[0];
    if (!value[0])
    {
      __break(1u);
    }

    Type = CGPDFObjectGetType(value[0]);
    if (Type <= kCGPDFObjectTypeName)
    {
      if (Type <= kCGPDFObjectTypeInteger)
      {
        if (Type == kCGPDFObjectTypeBoolean)
        {
          LOBYTE(v16) = 0;
          if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeBoolean, &v16))
          {
            v12 = v16 != 0;
            a1[3] = MEMORY[0x1E69E6370];
            a1[4] = &protocol witness table for Bool;
            *a1 = v12;
            return;
          }
        }

        else if (Type == kCGPDFObjectTypeInteger)
        {
          v16 = 0;
          if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeInteger, &v16))
          {
            v6 = v16;
            a1[3] = MEMORY[0x1E69E6530];
            a1[4] = &protocol witness table for Int;
            *a1 = v6;
            return;
          }
        }

        goto LABEL_34;
      }

      if (Type == kCGPDFObjectTypeReal)
      {
        v16 = 0;
        if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeReal, &v16))
        {
          v13 = v16;
          a1[3] = MEMORY[0x1E69E63B0];
          a1[4] = &protocol witness table for Double;
          *a1 = v13;
          return;
        }

        goto LABEL_34;
      }

      v16 = 0;
      if (CGPDFObjectGetValue(v3, kCGPDFObjectTypeName, &v16))
      {
        if (v16)
        {
          v10 = sub_18438FD28();
          a1[3] = MEMORY[0x1E69E6158];
          a1[4] = &protocol witness table for String;
          *a1 = v10;
          a1[1] = v11;
          return;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_34:
      a1[4] = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      return;
    }

    if (Type > kCGPDFObjectTypeArray)
    {
      if (Type == kCGPDFObjectTypeDictionary)
      {
        v16 = 0;
        if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeDictionary, &v16))
        {
          goto LABEL_34;
        }

        v7 = v16;
        if (!v16)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFDictionaryRef(0);
        v9 = &protocol witness table for CGPDFDictionaryRef;
      }

      else
      {
        if (Type != kCGPDFObjectTypeStream)
        {
          goto LABEL_34;
        }

        v16 = 0;
        if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeStream, &v16))
        {
          goto LABEL_34;
        }

        v7 = v16;
        if (!v16)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFStreamRef(0);
        v9 = &protocol witness table for CGPDFStreamRef;
      }
    }

    else if (Type == kCGPDFObjectTypeString)
    {
      v16 = 0;
      if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeString, &v16))
      {
        goto LABEL_34;
      }

      v7 = v16;
      if (!v16)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFStringRef(0);
      v9 = &protocol witness table for CGPDFStringRef;
    }

    else
    {
      v16 = 0;
      if (!CGPDFObjectGetValue(v3, kCGPDFObjectTypeArray, &v16))
      {
        goto LABEL_34;
      }

      v7 = v16;
      if (!v16)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFArrayRef(0);
      v9 = &protocol witness table for CGPDFArrayRef;
    }

    a1[3] = v8;
    a1[4] = v9;
    *a1 = v7;
    return;
  }

LABEL_37:
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_184390098();

  v16 = 0xD00000000000001ALL;
  v17 = 0x8000000184566800;
  v14 = sub_1843901B8();
  MEMORY[0x1865EC630](v14);

  MEMORY[0x1865EC630](0xD000000000000013, 0x8000000184566820);
  CGPDFArrayGetCount(v3);
  v15 = sub_1843901B8();
  MEMORY[0x1865EC630](v15);

  sub_184390118();
  __break(1u);
}

uint64_t sub_183FBE030(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  sub_183F903C8(a1, v6);
  sub_183F8F868(v6, a2, v4);
  return sub_183F90438(v6);
}

uint64_t CGPDFArrayRef.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_183F8F868(a1, v2, a2);

  return sub_183F90438(a1);
}

void (*CGPDFArrayRef.subscript.modify(uint64_t **a1, size_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  *a1 = v5;
  v5[10] = a2;
  v5[11] = v2;
  CGPDFArrayRef.subscript.getter(v5, a2, *v2);
  return sub_183FBE140;
}

void sub_183FBE140(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    sub_183F903C8(*a1, v2 + 40);
    sub_183F8F868(v2 + 40, v3, v4);
    sub_183F90438(v2 + 40);
  }

  else
  {
    sub_183F8F868(*a1, *(v2 + 88), *(v2 + 80));
  }

  sub_183F90438(v2);

  free(v2);
}

uint64_t CGPDFArrayRef.enumerateObjects(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_183FBED94;
  *(v7 + 24) = v6;
  v10[4] = sub_183FBED94;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_183FBE310;
  v10[3] = &block_descriptor_1;
  v8 = _Block_copy(v10);

  CGPDFArrayEnumerateObjects(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FBE388()
{
  DebugDescription = CGPDFArrayCreateDebugDescription(*v0);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

void *sub_183FBE3E0@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(*v2);
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FBE434(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = CGPDFArrayGetCount(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

size_t sub_183FBE488@<X0>(size_t *a1@<X8>)
{
  result = CGPDFArrayGetCount(*v1);
  *a1 = result;
  return result;
}

void (*sub_183FBE4B4(uint64_t **a1, size_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  CGPDFArrayRef.subscript.getter(v5, *a2, *v2);
  return sub_183FBE534;
}

void sub_183FBE534(uint64_t *a1)
{
  v1 = *a1;
  sub_183F90438(*a1);

  free(v1);
}

int64_t sub_183FBE570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = CGPDFArrayGetCount(v6);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_183FBE5CC@<X0>(void *a1@<X8>)
{
  result = CGPDFArrayGetCount(*v1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_183FBE624@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(*v3);
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FBE678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F78010(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

int64_t sub_183FBE6B4(int64_t *a1, int64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = CGPDFArrayGetCount(*v2);
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(v5);
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_183FBE718@<X0>(int64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = CGPDFArrayGetCount(*v2);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

int64_t sub_183FBE764(int64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = CGPDFArrayGetCount(v3);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

int64_t sub_183FBE7B4()
{
  v1 = *v0;
  Count = CGPDFArrayGetCount(v1);
  result = CGPDFArrayGetCount(v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(v1);
    if ((Count & 0x8000000000000000) == 0 && result >= Count)
    {
      return Count;
    }
  }

  __break(1u);
  return result;
}

void _sSo13CGPDFArrayRefa12CoreGraphicsEySbSgSi_Sbmtcis_0(char a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549B0, &qword_18439B550);
  if (swift_dynamicCast())
  {
    v4 = CGPDFObjectCreateWithBoolean(v6);
    if (v4)
    {
      v5 = v4;
      CGPDFArraySetObjectAtIndex(*v2, a2, v4);
      CGPDFObjectRelease(v5);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FBE8F8(uint64_t a1, char a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A8, &qword_18439B548);
  if (swift_dynamicCast())
  {
    v5 = CGPDFObjectCreateWithInteger(v7);
    if (v5)
    {
      v6 = v5;
      CGPDFArraySetObjectAtIndex(*v3, a3, v5);
      CGPDFObjectRelease(v6);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}