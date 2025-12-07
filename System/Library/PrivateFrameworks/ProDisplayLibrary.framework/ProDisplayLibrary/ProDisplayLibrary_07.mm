uint64_t sub_25F7D4E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x48656C6261736964 && a2 == 0xEE00796E6F6D7261;
  if (v4 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F82F850 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F870 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F890 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F82F8B0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F8D0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025F82F8F0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F82F910 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000025F82F930 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82F950 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025F82F970 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F82F990 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F82F9C0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025F82F9E0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F82FA00 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x707041776F6C6C61 && a2 == 0xEE006B6F6F4C656CLL || (sub_25F822CBC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6365725068676968 && a2 == 0xED00006E6F697369 || (sub_25F822CBC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82FA20 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F82FA40 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_25F7D5430(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xEE00736E6F697461 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7474655374736F68 && a2 == 0xEC00000073676E69)
  {

    return 2;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25F7D5554(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25F82210C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F7D55F0()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDBFD90);
  v1 = __swift_project_value_buffer(v0, qword_27FDBFD90);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7D5720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDBFDA8);
  v4 = __swift_project_value_buffer(v3, qword_27FDBFDA8);
  if (qword_27FDAF8E0 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82FA60;
  v23 = 0x800000025F82FA80;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDBFD90);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000017;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD00000000000011CLL;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7D5A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x400199999999999ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3E48);
  xmmword_27FDBFDC0 = 0u;
  *algn_27FDBFDD0 = 0u;
  xmmword_27FDBFDE0 = 0u;
  byte_27FDBFDF0 = 1;
  *&algn_27FDBFDF1[7] = 0u;
  *(&xmmword_27FDBFE00 + 8) = 0u;
  unk_27FDBFE18 = 0u;
  WORD4(xmmword_27FDBFE20) = 256;
  qword_27FDBFE30 = 0;
  unk_27FDBFE38 = 0;
  LOBYTE(xmmword_27FDBFE40) = 1;
  *(&xmmword_27FDBFE40 + 1) = 0;
  unk_27FDBFE50 = 0;
  word_27FDBFE58 = 256;
  xmmword_27FDBFE60 = vdupq_n_s64(0x4064000000000000uLL);
  qword_27FDBFE70 = 0;
  unk_27FDBFE78 = v0;
  LOBYTE(xmmword_27FDBFE80) = 0;
  *(&xmmword_27FDBFE80 + 1) = 0x400199999999999ALL;
  word_27FDBFE90 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDBFE92[6] = result;
  *(&xmmword_27FDBFEA0 + 1) = v1;
  dword_27FDBFEB0 = 16843009;
  return result;
}

double sub_25F7D5B50()
{
  LODWORD(xmmword_27FDBFEB8) = 16843009;
  *(&xmmword_27FDBFEB8 + 1) = 0;
  LOWORD(xmmword_27FDBFEC8) = 257;
  *(&xmmword_27FDBFEC8 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDBFED8) = 0;
  *(&xmmword_27FDBFED8 + 1) = 0;
  *&xmmword_27FDBFEE8 = 0;
  BYTE8(xmmword_27FDBFEE8) = 1;
  *&xmmword_27FDBFEF8 = 0x4040000000000000;
  BYTE8(xmmword_27FDBFEF8) = 0;
  *&xmmword_27FDBFF08 = 0;
  BYTE8(xmmword_27FDBFF08) = 1;
  xmmword_27FDBFF18 = vdupq_n_s64(0x4064000000000000uLL);
  qword_27FDBFF28 = 0x4064000000000000;
  *&result = 16843008;
  dword_27FDBFF30 = 16843008;
  return result;
}

void sub_25F7D5BD0(uint64_t a1@<X0>, Swift::Double *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  with.red.x = *a2;
  x = with.red.x;
  with.red.y = v7;
  with.green.x = v8;
  with.green.y = v9;
  with.blue.x = v10;
  with.blue.y = v11;
  UserAdjustment.ccm(with:)(&v37, &with);
  v30 = *v37.affineTransformMatrix.columns[0].f64;
  v31 = *&v37.affineTransformMatrix.columns[1].f64[2];
  v32 = *&v37.affineTransformMatrix.columns[0].f64[2];
  v34 = *v37.affineTransformMatrix.columns[1].f64;
  v35 = *&v37.affineTransformMatrix.columns[2].f64[2];
  v33 = *v37.affineTransformMatrix.columns[2].f64;
  with.red.x = x;
  with.red.y = v7;
  with.green.x = v8;
  with.green.y = v9;
  with.blue.x = v10;
  with.blue.y = v11;
  UserAdjustment.ccm(with:)(&v36, &with);
  with.red = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v36.affineTransformMatrix.columns[0].f64[0]), v34, *v36.affineTransformMatrix.columns[0].f64, 1), v33, v36.affineTransformMatrix.columns[0].f64[2]);
  with.green = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v32, v36.affineTransformMatrix.columns[0].f64[0]), v31, *v36.affineTransformMatrix.columns[0].f64, 1), v35, v36.affineTransformMatrix.columns[0].f64[2]);
  with.blue = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v36.affineTransformMatrix.columns[1].f64[0]), v34, *v36.affineTransformMatrix.columns[1].f64, 1), v33, v36.affineTransformMatrix.columns[1].f64[2]);
  v39 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v32, v36.affineTransformMatrix.columns[1].f64[0]), v31, *v36.affineTransformMatrix.columns[1].f64, 1), v35, v36.affineTransformMatrix.columns[1].f64[2]);
  v40 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v36.affineTransformMatrix.columns[2].f64[0]), v34, *v36.affineTransformMatrix.columns[2].f64, 1), v33, v36.affineTransformMatrix.columns[2].f64[2]);
  v41 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v32, v36.affineTransformMatrix.columns[2].f64[0]), v31, *v36.affineTransformMatrix.columns[2].f64, 1), v35, v36.affineTransformMatrix.columns[2].f64[2]);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v45 = 1;
  v47 = 0;
  v46 = 0;
  v48 = 1;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v52 = 1;
  v54 = 0;
  v53 = 0;
  v55 = 1;
  v37.affineTransformMatrix.columns[0].f64[0] = x;
  v37.affineTransformMatrix.columns[0].f64[1] = v7;
  v37.affineTransformMatrix.columns[0].f64[2] = v8;
  v37.affineTransformMatrix.columns[0].f64[3] = v9;
  v37.affineTransformMatrix.columns[1].f64[0] = v10;
  v37.affineTransformMatrix.columns[1].f64[1] = v11;
  v12 = type metadata accessor for UserAdjustment(0);
  v13 = (a1 + v12[9]);
  *v36.affineTransformMatrix.columns[0].f64 = *v13;
  CCM.setSource(_:_:)(&v37, __PAIR128__(v14, *&v36.affineTransformMatrix.columns[0].f64[0]));
  if (v52 & 1) != 0 || (v55)
  {
    __break(1u);
  }

  else
  {
    v15 = v54;
    v16 = v53;
    v17 = v12[10];
    v18 = *(a1 + v17);
    v19 = v18 / (*(v3 + v17) / *(v3 + v12[8]) * (v18 / *(a1 + v12[8])));
    v20 = v12[5];
    v21 = (a1 + v12[6]);
    v23 = *v21;
    v22 = v21[1];
    v24 = sub_25F82210C();
    (*(*(v24 - 8) + 16))(a3 + v20, a1 + v20, v24);
    v25 = *v13;
    v26 = v13[1];

    sub_25F82216C();
    v27 = (a3 + v12[6]);
    *v27 = v23;
    v27[1] = v22;
    v28 = (a3 + v12[7]);
    *v28 = v16;
    v28[1] = v15;
    *(a3 + v12[8]) = v19;
    v29 = (a3 + v12[9]);
    *v29 = v25;
    v29[1] = v26;
    *(a3 + v12[10]) = v18;
  }
}

BOOL UserAdjustment.isNumericallyEqual(to:)(uint64_t a1)
{
  v3 = type metadata accessor for UserAdjustment(0);
  if (*(v1 + v3[10]) == *(a1 + v3[10]) && ((v4 = v3[9], v5 = *(v1 + v4), v6 = *(v1 + v4 + 8), v7 = (a1 + v4), v5 == *v7) ? (v8 = v6 == v7[1]) : (v8 = 0), v8 && *(v1 + v3[8]) == *(a1 + v3[8]) && (v9 = v3[7], v10 = v1 + v9, v11 = *(v1 + v9), v12 = (a1 + v9), v11 == *v12)))
  {
    return *(v10 + 8) == v12[1];
  }

  else
  {
    return 0;
  }
}

double sub_25F7D5F18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F7D7838(a1, a2);
  v4 = type metadata accessor for UserAdjustmentV1(0);
  v5 = (a1 + v4[6]);
  v7 = *v5;
  v6 = v5[1];
  v8 = type metadata accessor for UserAdjustment(0);
  v9 = (a2 + v8[6]);
  *v9 = v7;
  v9[1] = v6;
  v10 = v4[5];
  v11 = v8[5];
  v12 = sub_25F82210C();
  (*(*(v12 - 8) + 16))(a2 + v11, a1 + v10, v12);
  *(a2 + v8[9]) = xmmword_25F823FE0;
  *(a2 + v8[10]) = 0x4059000000000000;
  *(a2 + v8[7]) = vsubq_f64(xmmword_25F823FE0, *(a1 + v4[7]));
  v13 = *(a1 + v4[8]);

  sub_25F7D8544(a1, type metadata accessor for UserAdjustmentV1);
  result = 100.0 / v13;
  *(a2 + v8[8]) = result;
  return result;
}

uint64_t UserAdjustment.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25F821EBC();
  swift_allocObject();
  sub_25F821EAC();
  sub_25F7AEFD4(a3);

  return sub_25F76D178(a1, a2);
}

uint64_t UserAdjustment.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserAdjustment(0) + 20);
  v4 = sub_25F82210C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserAdjustment.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserAdjustment(0) + 24));

  return v1;
}

uint64_t UserAdjustment.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserAdjustment(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 UserAdjustment.measuredWhitePoint.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for UserAdjustment(0) + 28));
  *a1 = result;
  return result;
}

uint64_t UserAdjustment.measuredWhitePoint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for UserAdjustment(0);
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t UserAdjustment.measuredLuminance.setter(double a1)
{
  result = type metadata accessor for UserAdjustment(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

__n128 UserAdjustment.targetWhitePoint.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for UserAdjustment(0) + 36));
  *a1 = result;
  return result;
}

uint64_t UserAdjustment.targetWhitePoint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for UserAdjustment(0);
  v5 = (v1 + *(result + 36));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t UserAdjustment.targetLuminance.setter(double a1)
{
  result = type metadata accessor for UserAdjustment(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UserAdjustment.init(description:creationDate:measuredWhitePoint:measuredLuminance:targetWhitePoint:targetLuminance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = *a5;
  v17 = a5[1];
  sub_25F82216C();
  v18 = type metadata accessor for UserAdjustment(0);
  v19 = v18[5];
  v20 = sub_25F82210C();
  result = (*(*(v20 - 8) + 32))(a6 + v19, a3, v20);
  v22 = (a6 + v18[6]);
  *v22 = a1;
  v22[1] = a2;
  v23 = (a6 + v18[7]);
  *v23 = v14;
  v23[1] = v15;
  *(a6 + v18[8]) = a7;
  v24 = (a6 + v18[9]);
  *v24 = v16;
  v24[1] = v17;
  *(a6 + v18[10]) = a8;
  return result;
}

uint64_t UserAdjustment.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F821EBC();
  swift_allocObject();
  sub_25F821EAC();
  v5 = sub_25F821F6C();
  if (v2)
  {
    v7 = sub_25F821F4C();
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_25F7AEFD4(a2);
    v10 = sub_25F821F4C();
    (*(*(v10 - 8) + 8))(a1, v10);
    sub_25F76D178(v8, v9);
  }
}

uint64_t UserAdjustment.save(to:)(uint64_t a1)
{
  sub_25F821EFC();
  swift_allocObject();
  sub_25F821EEC();
  v3 = sub_25F7AF70C(v1, 2, 0);
  v5 = v4;

  if (!v2)
  {
    sub_25F82203C();
    return sub_25F76D178(v3, v5);
  }

  return result;
}

uint64_t sub_25F7D6820()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6F697461657263;
    if (v1 != 1)
    {
      v5 = 0x7470697263736564;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x754C746567726174;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000012;
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

uint64_t sub_25F7D6910@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F7D82E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F7D6938(uint64_t a1)
{
  v2 = sub_25F7D7998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7D6974(uint64_t a1)
{
  v2 = sub_25F7D7998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserAdjustment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A00, &qword_25F827248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D7998();
  sub_25F822E5C();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  sub_25F7D7AA8(&qword_27FDAFE58, &protocol conformance descriptor for Identifier<A>);
  sub_25F822C4C();
  if (!v2)
  {
    v9 = type metadata accessor for UserAdjustment(0);
    LOBYTE(v13) = 1;
    sub_25F82210C();
    sub_25F7D5554(&qword_27FDB0720, MEMORY[0x28220BFE8]);
    sub_25F822C4C();
    LOBYTE(v13) = 2;
    sub_25F822BEC();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_25F7D79EC();
    sub_25F822C4C();
    LOBYTE(v13) = 4;
    sub_25F822C0C();
    v13 = *(v3 + *(v9 + 36));
    v12 = 5;
    sub_25F822C4C();
    LOBYTE(v13) = 6;
    sub_25F822C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UserAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A18, &qword_25F827250);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for UserAdjustment(0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25F7D7998();
  v35 = v9;
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  v14 = v33;
  v31 = v12;
  LOBYTE(v38) = 0;
  sub_25F7D7AA8(&qword_27FDAFE08, &protocol conformance descriptor for Identifier<A>);
  v15 = v34;
  sub_25F822B6C();
  sub_25F7D7AF8(v6, v31);
  v16 = sub_25F82210C();
  v30[2] = v30;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v38) = 1;
  sub_25F7D5554(&qword_27FDB0738, MEMORY[0x28220C008]);
  sub_25F822B6C();
  v30[1] = v17;
  v20 = *(v17 + 32);
  v21 = v31;
  v20(&v31[v10[5]], v19, v16);
  LOBYTE(v38) = 2;
  v22 = sub_25F822B0C();
  v23 = (v21 + v10[6]);
  *v23 = v22;
  v23[1] = v24;
  v37 = 3;
  sub_25F7D7B68();
  sub_25F822B6C();
  *(v21 + v10[7]) = v38;
  LOBYTE(v38) = 4;
  sub_25F822B2C();
  *(v21 + v10[8]) = v25;
  v37 = 5;
  v26 = v35;
  sub_25F822B6C();
  *(v21 + v10[9]) = v38;
  LOBYTE(v38) = 6;
  sub_25F822B2C();
  v28 = v27;
  (*(v14 + 8))(v26, v15);
  *(v21 + v10[10]) = v28;
  sub_25F7D7BBC(v21, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  return sub_25F7D8544(v21, type metadata accessor for UserAdjustment);
}

void __swiftcall UserAdjustment.ccm(with:)(ProDisplayLibrary::CCM *__return_ptr retstr, ProDisplayLibrary::Primaries *with)
{
  x = with->red.x;
  y = with->red.y;
  v6 = with->green.x;
  v7 = with->green.y;
  v9 = with->blue.x;
  v8 = with->blue.y;
  v10 = type metadata accessor for UserAdjustment(0);
  v11 = (v2 + *(v10 + 36));
  v37 = *v11;
  v38 = x;
  v39 = v11[1];
  v12 = (v2 + *(v10 + 28));
  v14 = *v12;
  v13 = v12[1];
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v62.f64[0] = x;
  v62.f64[1] = y;
  *&v63 = v6;
  *(&v63 + 1) = v7;
  *&v64 = v9;
  *(&v64 + 1) = v8;
  v56.f64[0] = x;
  v56.f64[1] = y;
  v15 = y;
  *&v57 = v6;
  *(&v57 + 1) = v7;
  *&v58 = v9;
  *(&v58 + 1) = v8;
  v16 = _s17ProDisplayLibrary9PrimariesV2eeoiySbAC_ACtFZ_0(&v62, &v56);
  v17 = v39;
  v18 = v14;
  if (v16 && (v37 == v14 ? (v19 = v39 == v13) : (v19 = 0), v19))
  {
    v21 = *MEMORY[0x277D86098];
    v20 = *(MEMORY[0x277D86098] + 16);
    v23 = *(MEMORY[0x277D86098] + 32);
    v22 = *(MEMORY[0x277D86098] + 48);
    v25 = *(MEMORY[0x277D86098] + 64);
    v24 = *(MEMORY[0x277D86098] + 80);
    v26 = v38;
  }

  else
  {
    v26 = v38;
    v62.f64[0] = v38;
    v62.f64[1] = v15;
    *&v63 = v6;
    *(&v63 + 1) = v7;
    *&v64 = v9;
    *(&v64 + 1) = v8;
    v56.f64[0] = v37;
    v56.f64[1] = v39;
    sub_25F81B470(v62.f64, v56.f64, &v50);
    v31 = v50;
    v32 = *&v51;
    v33 = v52;
    v34 = *&v53;
    v35 = v54;
    v36 = *&v55;
    v62.f64[0] = v38;
    v62.f64[1] = v15;
    *&v63 = v6;
    *(&v63 + 1) = v7;
    *&v64 = v9;
    *(&v64 + 1) = v8;
    v40.f64[0] = v14;
    v40.f64[1] = v13;
    sub_25F81B470(v62.f64, v40.f64, &v56);
    v62 = v56;
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v66 = v60;
    v67 = v61;
    __invert_d3();
    v20 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v31.f64[0]), v43, v31, 1), v45, v32);
    v21 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v40, v31.f64[0]), v42, v31, 1), v44, v32);
    v22 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v33.f64[0]), v43, v33, 1), v45, v34);
    v23 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v40, v33.f64[0]), v42, v33, 1), v44, v34);
    v17 = v39;
    v18 = v14;
    v24 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v35.f64[0]), v43, v35, 1), v45, v36);
    v25 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v40, v35.f64[0]), v42, v35, 1), v44, v36);
  }

  v27 = v49;
  v28 = v48;
  v29 = v47;
  v30 = v46;
  *retstr->affineTransformMatrix.columns[0].f64 = v21;
  *&retstr->affineTransformMatrix.columns[0].f64[2] = v20;
  *retstr->affineTransformMatrix.columns[1].f64 = v23;
  *&retstr->affineTransformMatrix.columns[1].f64[2] = v22;
  *retstr->affineTransformMatrix.columns[2].f64 = v25;
  *&retstr->affineTransformMatrix.columns[2].f64[2] = v24;
  retstr->srcPrim.value.red.x = v26;
  retstr->srcPrim.value.red.y = v15;
  retstr->srcPrim.value.green.x = v6;
  retstr->srcPrim.value.green.y = v7;
  retstr->srcPrim.value.blue.x = v9;
  retstr->srcPrim.value.blue.y = v8;
  retstr->srcPrim.is_nil = v27;
  *(&retstr->srcWP.value.x + 7) = v37;
  *(&retstr->srcWP.value.y + 7) = v17;
  BYTE6(retstr->dstPrim.value.red.x) = v28;
  *(&retstr->dstPrim.value.red.y + 6) = v26;
  *(&retstr->dstPrim.value.green.x + 6) = v15;
  *(&retstr->dstPrim.value.green.y + 6) = v6;
  *(&retstr->dstPrim.value.blue.x + 6) = v7;
  *(&retstr->dstPrim.value.blue.y + 6) = v9;
  *(&retstr->dstWP.value.x + 5) = v8;
  BYTE5(retstr->dstWP.value.y) = v29;
  *(&retstr->dstWP + 21) = v18;
  retstr[1].affineTransformMatrix.columns[0].f64[0] = v13;
  LOBYTE(retstr[1].affineTransformMatrix.columns[0].f64[1]) = v30;
}

void sub_25F7D7498(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v10 = a2[1];
  *&v45[8] = *a2;
  v11 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = type metadata accessor for UserAdjustment(0);
  v16 = v15;
  v17 = (v4 + *(v15 + 36));
  *v45 = v8;
  v18 = *v17 == v9 && v17[1] == v8;
  if (v18 && *(v4 + *(v15 + 40)) == a4)
  {

    sub_25F7D7BBC(v4, a3);
  }

  else
  {
    with.red.x = *&v45[8];
    with.red.y = v10;
    with.green.x = v11;
    with.green.y = v12;
    with.blue.x = v14;
    v19 = v13;
    with.blue.y = v13;
    UserAdjustment.ccm(with:)(&v52, &with);
    CCM.normalized.getter(&with);
    if (v60 & 1) != 0 || (v62)
    {
      __break(1u);
    }

    else
    {
      v44 = a4;
      red = with.red;
      green = with.green;
      blue = with.blue;
      v37 = v56;
      v38 = v55;
      v39 = v54;
      *v52.affineTransformMatrix.columns[0].f64 = v57;
      *&v52.affineTransformMatrix.columns[0].f64[2] = v58;
      *v52.affineTransformMatrix.columns[1].f64 = v59;
      v47 = v61;
      sub_25F81B470(&v52, &v47, v63);
      v33 = v63[0];
      v34 = v63[2];
      v35 = v63[4];
      v52.affineTransformMatrix.columns[0].f64[0] = *&v45[8];
      v52.affineTransformMatrix.columns[0].f64[1] = v10;
      v52.affineTransformMatrix.columns[0].f64[2] = v11;
      v52.affineTransformMatrix.columns[0].f64[3] = v12;
      v52.affineTransformMatrix.columns[1].f64[0] = v14;
      v52.affineTransformMatrix.columns[1].f64[1] = v13;
      v43 = v9;
      *&v47 = v9;
      *(&v47 + 1) = *v45;
      CCM.setSource(_:_:)(&v52, *v45);
      if ((v60 & 1) == 0 && (v62 & 1) == 0)
      {
        v20 = vaddq_f64(v38, vaddq_f64(red, blue));
        v21 = *(&v61 + 1);
        v22 = v61;
        v23 = 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v33, *&v20), v34, v20, 1), v35, COERCE_DOUBLE(vaddq_f64(v37, vaddq_f64(*&green, v39)))).f64[1]);
        *&v42 = *&vaddq_f64(v56, vaddq_f64(with.green, v54));
        *&v47 = *&v45[8];
        *(&v47 + 1) = v10;
        v48 = v11;
        v49 = v12;
        v50 = v14;
        v51 = v19;
        *&v45[8] = vaddq_f64(v55, vaddq_f64(with.red, with.blue));
        v46 = v61;
        sub_25F81B470(&v47, &v46, &v52);
        v24 = 1.0 / COERCE_DOUBLE(*&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&v52, *(v45 + 8)), *(&v52 + 32), *(v45 + 8), 1), *(&v52 + 64), v42).f64[1]) / v23 * (v44 / (*(v4 + v16[10]) / *(v4 + v16[8])));
        v25 = v16[5];
        v26 = (v4 + v16[6]);
        v28 = *v26;
        v27 = v26[1];
        v29 = sub_25F82210C();
        (*(*(v29 - 8) + 16))(a3 + v25, v5 + v25, v29);

        sub_25F82216C();
        v30 = (a3 + v16[6]);
        *v30 = v28;
        v30[1] = v27;
        v31 = (a3 + v16[7]);
        *v31 = v22;
        v31[1] = v21;
        *(a3 + v16[8]) = v24;
        v32 = (a3 + v16[9]);
        *v32 = v43;
        v32[1] = *v45;
        *(a3 + v16[10]) = v44;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for UserAdjustment(uint64_t a1)
{
  result = qword_27FDB0A28;
  if (!qword_27FDB0A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F7D7838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s17ProDisplayLibrary14UserAdjustmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25F82213C() & 1) != 0 && (v4 = type metadata accessor for UserAdjustment(0), (sub_25F8220EC()) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_25F822CBC()) && ((v10 = v4[7], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 && *(a1 + v4[8]) == *(a2 + v4[8]) && ((v15 = v4[9], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) ? (v19 = v17 == v18[1]) : (v19 = 0), v19))))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F7D7998()
{
  result = qword_27FDB0A08;
  if (!qword_27FDB0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A08);
  }

  return result;
}

unint64_t sub_25F7D79EC()
{
  result = qword_27FDB0A10;
  if (!qword_27FDB0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A10);
  }

  return result;
}

uint64_t sub_25F7D7A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F7D7AA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAFC18, &qword_25F824310);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F7D7AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F7D7B68()
{
  result = qword_27FDB0A20;
  if (!qword_27FDB0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A20);
  }

  return result;
}

uint64_t sub_25F7D7BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAdjustment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F7D7C68(uint64_t a1)
{
  *(a1 + 8) = sub_25F7D7CEC(&qword_27FDAFE10, type metadata accessor for UserAdjustment, &protocol conformance descriptor for UserAdjustment);
  result = sub_25F7D7CEC(&qword_27FDAFE60, type metadata accessor for UserAdjustment, &protocol conformance descriptor for UserAdjustment);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F7D7CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F7D7D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25F82210C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F7D7E78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F82210C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F7D7F90(uint64_t a1)
{
  sub_25F7D8038(319);
  if (v1 <= 0x3F)
  {
    sub_25F82210C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F7D8038(uint64_t a1)
{
  if (!qword_27FDAFC90)
  {
    v2 = type metadata accessor for UserAdjustment(255);
    v5 = type metadata accessor for Identifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27FDAFC90);
    }
  }
}

uint64_t getEnumTagSinglePayload for EOTFStandard(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EOTFStandard(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F7D81E4()
{
  result = qword_27FDB0A38;
  if (!qword_27FDB0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A38);
  }

  return result;
}

unint64_t sub_25F7D823C()
{
  result = qword_27FDB0A40;
  if (!qword_27FDB0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A40);
  }

  return result;
}

unint64_t sub_25F7D8294()
{
  result = qword_27FDB0A48;
  if (!qword_27FDB0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A48);
  }

  return result;
}

uint64_t sub_25F7D82E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F82FBD0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F82FBF0 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F82FC10 == a2 || (sub_25F822CBC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754C746567726174 && a2 == 0xEF65636E616E696DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F822CBC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25F7D8544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F7D85A4()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDBFF38);
  v1 = __swift_project_value_buffer(v0, qword_27FDBFF38);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7D86D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v20 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDBFF50);
  v4 = __swift_project_value_buffer(v3, qword_27FDBFF50);
  if (qword_27FDAF900 != -1)
  {
    swift_once();
  }

  v21 = 0x800000025F82FC30;
  v22 = 0x800000025F82FC50;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDBFF38);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v20[1] = v20;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v20[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v21;
  *v16 = 0xD000000000000014;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  *v18 = 0xD0000000000000FFLL;
  v18[1] = v22;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v20[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7D89D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x400199999999999ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3E70);
  xmmword_27FDBFF68 = 0u;
  unk_27FDBFF78 = 0u;
  xmmword_27FDBFF88 = 0u;
  byte_27FDBFF98 = 1;
  unk_27FDBFFA0 = 0u;
  *(&xmmword_27FDBFFA8 + 8) = 0u;
  unk_27FDBFFC0 = 0u;
  WORD4(xmmword_27FDBFFC8) = 256;
  xmmword_27FDBFFD8 = xmmword_25F824920;
  LOBYTE(xmmword_27FDBFFE8) = 1;
  *(&xmmword_27FDBFFE8 + 1) = 0;
  unk_27FDBFFF8 = 0;
  word_27FDC0000 = 256;
  xmmword_27FDC0008 = vdupq_n_s64(0x4064000000000000uLL);
  qword_27FDC0018 = 0;
  unk_27FDC0020 = v0;
  LOBYTE(xmmword_27FDC0028) = 0;
  *(&xmmword_27FDC0028 + 1) = 0x400199999999999ALL;
  word_27FDC0038 = 1;
  __asm { FMOV            V0.2D, #1.0 }

  unk_27FDC0040 = result;
  *(&xmmword_27FDC0048 + 1) = v1;
  dword_27FDC0058 = 16843009;
  return result;
}

double sub_25F7D8B14()
{
  LODWORD(xmmword_27FDC0060) = 16843009;
  *(&xmmword_27FDC0060 + 1) = 0;
  LOWORD(xmmword_27FDC0070) = 257;
  *(&xmmword_27FDC0070 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC0080) = 0;
  *(&xmmword_27FDC0080 + 1) = 0;
  *&xmmword_27FDC0090 = 0;
  BYTE8(xmmword_27FDC0090) = 1;
  *&xmmword_27FDC00A0 = 0x4050000000000000;
  BYTE8(xmmword_27FDC00A0) = 0;
  *&xmmword_27FDC00B0 = 0;
  BYTE8(xmmword_27FDC00B0) = 1;
  xmmword_27FDC00C0 = vdupq_n_s64(0x4064000000000000uLL);
  qword_27FDC00D0 = 0x4064000000000000;
  *&result = 16843008;
  dword_27FDC00D8 = 16843008;
  return result;
}

uint64_t sub_25F7D8B94()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC00E0);
  v1 = __swift_project_value_buffer(v0, qword_27FDC00E0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7D8CC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC00F8);
  v4 = __swift_project_value_buffer(v3, qword_27FDC00F8);
  if (qword_27FDAF920 != -1)
  {
    swift_once();
  }

  v20 = 0x800000025F82FD80;
  v21 = 0x800000025F82FDA0;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC00E0);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v19[1] = v19;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v19[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  *v16 = 0xD000000000000016;
  v16[1] = v20;
  v17 = (v4 + v3[6]);
  *v17 = 0x1000000000000127;
  v17[1] = v21;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v19[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7D8FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824480;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x400199999999999ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0x408F400000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v1 = sub_25F792BC4(&unk_2871C3D58);
  xmmword_27FDC0110 = 0u;
  unk_27FDC0120 = 0u;
  xmmword_27FDC0130 = 0u;
  byte_27FDC0140 = 1;
  *&algn_27FDC0141[7] = 0u;
  *(&xmmword_27FDC0150 + 8) = 0u;
  unk_27FDC0168 = 0u;
  WORD4(xmmword_27FDC0170) = 256;
  xmmword_27FDC0180 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0190) = 1;
  *(&xmmword_27FDC0190 + 1) = 0;
  unk_27FDC01A0 = 0;
  word_27FDC01A8 = 256;
  xmmword_27FDC01B0 = xmmword_25F827460;
  qword_27FDC01C0 = 0;
  unk_27FDC01C8 = v0;
  LOBYTE(xmmword_27FDC01D0) = 0;
  *(&xmmword_27FDC01D0 + 1) = 0x400199999999999ALL;
  word_27FDC01E0 = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDC01E2[6] = result;
  *(&xmmword_27FDC01F0 + 1) = v1;
  dword_27FDC0200 = 16843009;
  return result;
}

double sub_25F7D9158()
{
  LODWORD(xmmword_27FDC0208) = 16843009;
  *(&xmmword_27FDC0208 + 1) = 0;
  LOWORD(xmmword_27FDC0218) = 257;
  *(&xmmword_27FDC0218 + 1) = 0x4024000000000000;
  LOWORD(xmmword_27FDC0228) = 0;
  *(&xmmword_27FDC0228 + 1) = 0;
  *&xmmword_27FDC0238 = 0;
  BYTE8(xmmword_27FDC0238) = 1;
  *&xmmword_27FDC0248 = 0x4030000000000000;
  BYTE8(xmmword_27FDC0248) = 0;
  *&xmmword_27FDC0258 = 0;
  BYTE8(xmmword_27FDC0258) = 1;
  xmmword_27FDC0268 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC0278 = 0x4059000000000000;
  *&result = 16843008;
  dword_27FDC0280 = 16843008;
  return result;
}

uint64_t Calibration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Calibration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Calibration.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Calibration.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 Calibration.primaries.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  result = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 Calibration.primaries.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  result = *(a1 + 32);
  *(v1 + 72) = result;
  *(v1 + 88) = v2;
  return result;
}

unint64_t Calibration.CalType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_25F7D93D4()
{
  if (*v0)
  {
    return 1919251285;
  }

  else
  {
    return 0x79726F74636146;
  }
}

uint64_t sub_25F7D9408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F74636146 && a2 == 0xE700000000000000;
  if (v6 || (sub_25F822CBC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1919251285 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F822CBC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25F7D94F0(uint64_t a1)
{
  v2 = sub_25F7D9950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7D952C(uint64_t a1)
{
  v2 = sub_25F7D9950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F7D9574(uint64_t a1)
{
  v2 = sub_25F7D99F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7D95B0(uint64_t a1)
{
  v2 = sub_25F7D99F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F7D95EC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25F7D9628(uint64_t a1)
{
  v2 = sub_25F7D99A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7D9664(uint64_t a1)
{
  v2 = sub_25F7D99A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Calibration.CalType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A50, &qword_25F827470);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A58, &qword_25F827478);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A60, &qword_25F827480);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D9950();
  sub_25F822E5C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_25F7D99A4();
    v14 = v18;
    sub_25F822B9C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_25F7D99F8();
    sub_25F822B9C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_25F7D9950()
{
  result = qword_27FDB0A68;
  if (!qword_27FDB0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A68);
  }

  return result;
}

unint64_t sub_25F7D99A4()
{
  result = qword_27FDB0A70;
  if (!qword_27FDB0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A70);
  }

  return result;
}

unint64_t sub_25F7D99F8()
{
  result = qword_27FDB0A78;
  if (!qword_27FDB0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0A78);
  }

  return result;
}

uint64_t Calibration.CalType.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t Calibration.CalType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A80, &qword_25F827488);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A88, &qword_25F827490);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A90, &qword_25F827498);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7D9950();
  v13 = v31;
  sub_25F822E3C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_25F822B8C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_25F82298C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0A98, &qword_25F8274A0);
    *v21 = &type metadata for Calibration.CalType;
    sub_25F822ABC();
    sub_25F82296C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_25F7D99A4();
    sub_25F822AAC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_25F7D99F8();
    sub_25F822AAC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

void sub_25F7D9F18(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = 7;
  }

  else if (v2 < v3)
  {
    *a1 = *(v1[1] + v2);
    v1[2] = v2 + 1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25F7D9F54()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_25F7D9FC0()
{
  v1 = 1701667182;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0x656972616D697270;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

uint64_t sub_25F7DA038@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F7DACEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F7DA060(uint64_t a1)
{
  v2 = sub_25F7DA344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7DA09C(uint64_t a1)
{
  v2 = sub_25F7DA344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Calibration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0AA0, &qword_25F8274A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v29 = *(v1 + 32);
  v8 = *(v1 + 40);
  v16 = *(v1 + 56);
  v17 = v8;
  v9 = *(v1 + 72);
  v19 = *(v1 + 80);
  v20 = v9;
  v18 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7DA344();
  sub_25F822E5C();
  LOBYTE(v24) = 0;
  v10 = v23;
  sub_25F822BEC();
  if (!v10)
  {
    v12 = v29;
    v13 = v18;
    v15 = v19;
    v14 = v20;
    LOBYTE(v24) = 1;
    sub_25F822BEC();
    LOBYTE(v24) = v12;
    v30 = 2;
    sub_25F7DA398();
    sub_25F822C4C();
    v25 = v16;
    v24 = v17;
    v26 = v14;
    v27 = v15;
    v28 = v13;
    v30 = 3;
    sub_25F7D21B0();
    sub_25F822C4C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25F7DA344()
{
  result = qword_27FDB0AA8;
  if (!qword_27FDB0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AA8);
  }

  return result;
}

unint64_t sub_25F7DA398()
{
  result = qword_27FDB0AB0;
  if (!qword_27FDB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AB0);
  }

  return result;
}

uint64_t Calibration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0AB8, &qword_25F8274B0);
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7DA344();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v8 = v5;
  v32 = a2;
  LOBYTE(v38[0]) = 0;
  v9 = v33;
  v10 = sub_25F822B0C();
  v12 = v11;
  v31 = v10;
  LOBYTE(v38[0]) = 1;
  *&v30 = sub_25F822B0C();
  *(&v30 + 1) = v13;
  LOBYTE(v34[0]) = 2;
  sub_25F7DA738();
  sub_25F822B6C();
  v29 = LOBYTE(v38[0]);
  v53 = 3;
  sub_25F7D2504();
  sub_25F822B6C();
  (*(v8 + 8))(v7, v9);
  v27 = *(&v48 + 1);
  v28 = v48;
  v25 = *(&v49 + 1);
  v26 = v49;
  v24 = v50;
  v14 = v51;
  v52 = v51;
  v16 = *(&v30 + 1);
  v15 = v31;
  v33 = v47;
  *&v34[0] = v31;
  v17 = v30;
  *(&v34[0] + 1) = v12;
  v34[1] = v30;
  v18 = v29;
  LOBYTE(v35) = v29;
  *(&v35 + 1) = v47;
  v36 = v48;
  v37[0] = v49;
  *&v37[1] = v50;
  BYTE8(v37[1]) = v51;
  v19 = v30;
  v20 = v32;
  *v32 = v34[0];
  v20[1] = v19;
  v21 = v36;
  v20[2] = v35;
  v20[3] = v21;
  v20[4] = v37[0];
  *(v20 + 73) = *(v37 + 9);
  sub_25F7DA78C(v34, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v15;
  v38[1] = v12;
  v38[2] = v17;
  v38[3] = v16;
  v39 = v18;
  v40 = v33;
  v41 = v28;
  v42 = v27;
  v43 = v26;
  v44 = v25;
  v45 = v24;
  v46 = v14;
  return sub_25F7DA7C4(v38);
}

unint64_t sub_25F7DA738()
{
  result = qword_27FDB0AC0;
  if (!qword_27FDB0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AC0);
  }

  return result;
}

unint64_t sub_25F7DA7F8()
{
  result = qword_27FDB0AC8;
  if (!qword_27FDB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AC8);
  }

  return result;
}

uint64_t sub_25F7DA87C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_25F7DA8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F7DA980()
{
  result = qword_27FDB0AD0;
  if (!qword_27FDB0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AD0);
  }

  return result;
}

unint64_t sub_25F7DA9D8()
{
  result = qword_27FDB0AD8;
  if (!qword_27FDB0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AD8);
  }

  return result;
}

unint64_t sub_25F7DAA30()
{
  result = qword_27FDB0AE0;
  if (!qword_27FDB0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AE0);
  }

  return result;
}

unint64_t sub_25F7DAA88()
{
  result = qword_27FDB0AE8;
  if (!qword_27FDB0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AE8);
  }

  return result;
}

unint64_t sub_25F7DAAE0()
{
  result = qword_27FDB0AF0;
  if (!qword_27FDB0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AF0);
  }

  return result;
}

unint64_t sub_25F7DAB38()
{
  result = qword_27FDB0AF8;
  if (!qword_27FDB0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0AF8);
  }

  return result;
}

unint64_t sub_25F7DAB90()
{
  result = qword_27FDB0B00;
  if (!qword_27FDB0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B00);
  }

  return result;
}

unint64_t sub_25F7DABE8()
{
  result = qword_27FDB0B08;
  if (!qword_27FDB0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B08);
  }

  return result;
}

unint64_t sub_25F7DAC40()
{
  result = qword_27FDB0B10;
  if (!qword_27FDB0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B10);
  }

  return result;
}

unint64_t sub_25F7DAC98()
{
  result = qword_27FDB0B18;
  if (!qword_27FDB0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B18);
  }

  return result;
}

uint64_t sub_25F7DACEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_25F822CBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_25F822CBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_25F822CBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656972616D697270 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F822CBC();

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

unint64_t sub_25F7DAE68()
{
  result = sub_25F792A88(&unk_2871C3AB0);
  qword_27FDC0290 = result;
  return result;
}

uint64_t sub_25F7DAE90()
{
  result = sub_25F792BB0(&unk_2871C3BC8);
  qword_27FDC0298 = result;
  return result;
}

double sub_25F7DAEB8()
{
  v0 = sub_25F792BD8(&unk_2871C4388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098, &qword_25F824A38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C4488);
  v4 = sub_25F793408(&unk_2871C44B0);
  xmmword_27FDC02A0 = xmmword_25F824940;
  qword_27FDC02B0 = v0;
  unk_27FDC02B8 = v2;
  xmmword_27FDC02C0 = xmmword_25F824950;
  xmmword_27FDC02D0 = xmmword_25F824960;
  *&xmmword_27FDC02E0 = v3;
  *(&xmmword_27FDC02E0 + 8) = xmmword_25F824970;
  *&qword_27FDC02F8 = xmmword_25F824980;
  qword_27FDC0308 = 0;
  LOBYTE(xmmword_27FDC0310) = 0;
  *(&xmmword_27FDC0310 + 8) = xmmword_25F8279E0;
  *&result = 48;
  *(&xmmword_27FDC0320 + 8) = xmmword_25F8249A0;
  byte_27FDC0338 = 0;
  *&xmmword_27FDC0340 = 1000;
  WORD4(xmmword_27FDC0340) = 1;
  qword_27FDC0350 = v4;
  return result;
}

int64x2_t sub_25F7DAFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDC0358);
  v41 = __swift_project_value_buffer(v7, qword_27FDC0358);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20, &unk_25F823DC0);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10, &unk_25F823DB0);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C44D8);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0x3F40624DD2F1A9FCLL;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 1;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F7DB5A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF950 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDC0310;
  v13[8] = xmmword_27FDC0320;
  v13[9] = unk_27FDC0330;
  v2 = unk_27FDC0330;
  v13[10] = xmmword_27FDC0340;
  v3 = xmmword_27FDC02E0;
  v4 = xmmword_27FDC02D0;
  v13[4] = xmmword_27FDC02E0;
  v13[5] = *&dbl_27FDC02F0;
  v5 = *&dbl_27FDC02F0;
  v6 = *(&xmmword_27FDC02F8 + 8);
  v13[6] = *(&xmmword_27FDC02F8 + 8);
  v13[7] = xmmword_27FDC0310;
  v13[0] = xmmword_27FDC02A0;
  v13[1] = *&qword_27FDC02B0;
  v8 = xmmword_27FDC02A0;
  v7 = *&qword_27FDC02B0;
  v9 = xmmword_27FDC02C0;
  v13[2] = xmmword_27FDC02C0;
  v13[3] = xmmword_27FDC02D0;
  *(a1 + 128) = xmmword_27FDC0320;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDC0340;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDC0350;
  *(a1 + 176) = qword_27FDC0350;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F7DB694@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF958 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC0358);

  return sub_25F77511C(v3, a1);
}

double sub_25F7DB70C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = xmmword_25F8249C0;
  *(a1 + 24) = xmmword_25F8249D0;
  *(a1 + 40) = xmmword_25F8249E0;
  *(a1 + 56) = xmmword_25F8249F0;
  *(a1 + 72) = xmmword_25F8249F0;
  result = 0.92;
  *(a1 + 88) = xmmword_25F8279F0;
  return result;
}

uint64_t sub_25F7DB768()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0370);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0370);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7DB898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0388);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0388);
  if (qword_27FDAF960 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82FF70;
  v23 = 0x800000025F82FF90;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0370);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000017;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000EALL;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7DBB94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0x4004CCCCCCCCCCCDLL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3DF8);
  xmmword_27FDC03A0 = 0u;
  *algn_27FDC03B0 = 0u;
  xmmword_27FDC03C0 = 0u;
  byte_27FDC03D0 = 1;
  *&algn_27FDC03D1[7] = 0u;
  *(&xmmword_27FDC03E0 + 8) = 0u;
  unk_27FDC03F8 = 0u;
  WORD4(xmmword_27FDC0400) = 256;
  xmmword_27FDC0410 = xmmword_25F824930;
  LOBYTE(xmmword_27FDC0420) = 1;
  *(&xmmword_27FDC0420 + 1) = 0;
  unk_27FDC0430 = 0;
  word_27FDC0438 = 256;
  xmmword_27FDC0440 = vdupq_n_s64(0x4048000000000000uLL);
  qword_27FDC0450 = 0;
  unk_27FDC0458 = v0;
  LOBYTE(xmmword_27FDC0460) = 0;
  *(&xmmword_27FDC0460 + 1) = 0x4004CCCCCCCCCCCDLL;
  word_27FDC0470 = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDC0472[6] = result;
  *(&xmmword_27FDC0480 + 1) = v1;
  dword_27FDC0490 = 16843009;
  return result;
}

double sub_25F7DBCD0()
{
  LODWORD(xmmword_27FDC0498) = 16843009;
  *(&xmmword_27FDC0498 + 1) = 0;
  LOWORD(xmmword_27FDC04A8) = 257;
  *(&xmmword_27FDC04A8 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC04B8) = 0;
  *(&xmmword_27FDC04B8 + 1) = 0;
  *&xmmword_27FDC04C8 = 0;
  BYTE8(xmmword_27FDC04C8) = 1;
  *&xmmword_27FDC04D8 = 0x3F9EB851EB851EB8;
  BYTE8(xmmword_27FDC04D8) = 0;
  *&xmmword_27FDC04E8 = 0;
  BYTE8(xmmword_27FDC04E8) = 1;
  xmmword_27FDC04F8 = vdupq_n_s64(0x4048000000000000uLL);
  qword_27FDC0508 = 0x4048000000000000;
  *&result = 16843008;
  dword_27FDC0510 = 16843008;
  return result;
}

uint64_t sub_25F7DBD5C()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0518);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0518);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7DBE8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0530);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0530);
  if (qword_27FDAF980 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F8300B0;
  v23 = 0x800000025F8300D0;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0518);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD00000000000001BLL;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000D7;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7DC188()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0x4059000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3D80);
  *&xmmword_27FDC0548 = 1;
  *(&xmmword_27FDC0548 + 8) = 0u;
  unk_27FDC0560 = 0u;
  *(&xmmword_27FDC0568 + 1) = 0;
  byte_27FDC0578 = 1;
  unk_27FDC0580 = 0u;
  *(&xmmword_27FDC0588 + 8) = 0u;
  unk_27FDC05A0 = 0u;
  WORD4(xmmword_27FDC05A8) = 256;
  xmmword_27FDC05B8 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC05C8) = 1;
  *(&xmmword_27FDC05C8 + 1) = 0;
  unk_27FDC05D8 = 0;
  word_27FDC05E0 = 256;
  xmmword_27FDC05E8 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC05F8 = 0;
  unk_27FDC0600 = v0;
  LOBYTE(xmmword_27FDC0608) = 1;
  *(&xmmword_27FDC0608 + 1) = 0x4003333333333333;
  word_27FDC0618 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_27FDC0620 = result;
  *(&xmmword_27FDC0628 + 1) = v1;
  dword_27FDC0638 = 16843009;
  return result;
}

double sub_25F7DC2C8()
{
  LODWORD(xmmword_27FDC0640) = 16843009;
  *(&xmmword_27FDC0640 + 1) = 0;
  LOWORD(xmmword_27FDC0650) = 257;
  *(&xmmword_27FDC0650 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC0660) = 0;
  *(&xmmword_27FDC0660 + 8) = xmmword_25F827A20;
  BYTE8(xmmword_27FDC0670) = 0;
  *&xmmword_27FDC0680 = 0x4024000000000000;
  BYTE8(xmmword_27FDC0680) = 0;
  *&xmmword_27FDC0690 = 0;
  BYTE8(xmmword_27FDC0690) = 1;
  xmmword_27FDC06A0 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC06B0 = 0x4059000000000000;
  *&result = 16843008;
  dword_27FDC06B8 = 16843008;
  return result;
}

uint64_t sub_25F7DC3B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF9C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset.Info(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDC0880);

  return sub_25F777C88(v3, a1);
}

uint64_t DisplayID.TiledDisplayTopologyDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t DisplayID.TiledDisplayTopologyDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  sub_25F7E2E2C(a1, a2);
  if (v2)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5;
}

uint64_t *DisplayID.TiledDisplayTopologyDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25F7E2E2C(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return v2;
}

Swift::Void __swiftcall DisplayID.TiledDisplayTopologyDataBlock.serialNumber(_:)(Swift::UInt32 a1)
{
  v2[8] = *MEMORY[0x277D85DE8];
  v1 = a1;
  swift_beginAccess();
  v2[3] = MEMORY[0x277D838B0];
  v2[4] = MEMORY[0x277CC9C10];
  v2[0] = &v1;
  v2[1] = v2;
  __swift_project_boxed_opaque_existential_1(v2, MEMORY[0x277D838B0]);
  sub_25F821FAC();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  swift_endAccess();
}

__n128 DisplayID.TiledDisplayTopologyDataBlock.hierarchicalDescription.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_25F771924();
  sub_25F802E24(v4, v5, MEMORY[0x277D84F90], a1);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_25F82292C();

  v21 = 0x4E206C6169726553;
  *&v22 = 0xEF203A7265626D75;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v2 + 24);
  sub_25F76E658(v6, v7);
  v8 = sub_25F82205C();
  v10 = v9;
  sub_25F76D178(v6, v7);
  v11 = sub_25F7FE2B8(0, v8, v10);
  sub_25F76D178(v8, v10);
  LODWORD(v23) = v11;
  sub_25F751CA4();
  v12 = sub_25F8224AC();
  v14 = v13;
  if (__OFSUB__(8, sub_25F82243C()))
  {
    __break(1u);
  }

  else
  {
    v15 = sub_25F82249C();
    v23 = 30768;
    v24 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v15);

    MEMORY[0x25F8E7510](v12, v14);

    MEMORY[0x25F8E7510](30768, 0xE200000000000000);

    sub_25F802E24(v21, v22, MEMORY[0x277D84F90], &v21);
    v12 = v21;
    v20 = v22;
    v11 = a1[2];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v11 = sub_25F75C38C(0, *(v11 + 16) + 1, 1, v11);
LABEL_3:
  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  if (v17 >= v16 >> 1)
  {
    v11 = sub_25F75C38C((v16 > 1), v17 + 1, 1, v11);
  }

  *(v11 + 16) = v17 + 1;
  v18 = v11 + 24 * v17;
  *(v18 + 32) = v12;
  result = v20;
  *(v18 + 40) = v20;
  a1[2] = v11;
  return result;
}

Swift::UInt32 __swiftcall DisplayID.TiledDisplayTopologyDataBlock.serialNumber()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F76E658(v1, v2);
  v3 = sub_25F82205C();
  v5 = v4;
  sub_25F76D178(v1, v2);
  LODWORD(v1) = sub_25F7FE2B8(0, v3, v5);
  sub_25F76D178(v3, v5);
  return v1;
}

uint64_t DisplayID.TiledDisplayTopologyDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_25F7DCA4C(uint64_t a1, uint64_t a2)
{
  result = sub_25F7DCA74(a1, a2);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F7DCA74(uint64_t a1, uint64_t a2)
{
  result = qword_27FDB0B20;
  if (!qword_27FDB0B20)
  {
    type metadata accessor for DisplayID.TiledDisplayTopologyDataBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17ProDisplayLibrary11Versionable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F7DCB60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25F7DCBBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WithVersionNumber.VersionType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WithVersionNumber.VersionType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25F7DCCA0()
{
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](0);
  return sub_25F822E0C();
}

uint64_t sub_25F7DCD0C()
{
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](0);
  return sub_25F822E0C();
}

uint64_t sub_25F7DCD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F822CBC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F7DCDEC(uint64_t a1)
{
  v2 = sub_25F7DD2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7DCE28(uint64_t a1)
{
  v2 = sub_25F7DD2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F7DCE64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0B28, &qword_25F827BF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7DD2C0();
  sub_25F822E3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = sub_25F822AEC();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  return result;
}

uint64_t sub_25F7DCFE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0B38, &unk_25F827C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7DD2C0();
  sub_25F822E5C();
  sub_25F822BCC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25F7DD128(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0B38, &unk_25F827C00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - v5;
  v9 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F7DD2C0();
  sub_25F822E5C();
  v7 = v12;
  sub_25F822BCC();
  result = (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    result = sub_25F7DD314(v9, v10);
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      sub_25F8222BC();
      return __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_25F7DD2C0()
{
  result = qword_27FDB0B30;
  if (!qword_27FDB0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B30);
  }

  return result;
}

uint64_t sub_25F7DD314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB04B0, &unk_25F825ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F7DD398()
{
  result = qword_27FDB0B40;
  if (!qword_27FDB0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B40);
  }

  return result;
}

unint64_t sub_25F7DD3F0()
{
  result = qword_27FDB0B48;
  if (!qword_27FDB0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B48);
  }

  return result;
}

unint64_t sub_25F7DD448()
{
  result = qword_27FDB0B50;
  if (!qword_27FDB0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0B50);
  }

  return result;
}

uint64_t Identifier.shortID.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08, &unk_25F827D30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F823D00;
  *(v0 + 32) = sub_25F82215C();
  *(v0 + 34) = sub_25F82215C() >> 16;
  *(v0 + 35) = sub_25F82215C() >> 24;
  return v0;
}

uint64_t Identifier.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F82217C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t Identifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F82217C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Identifier.hash(into:)(uint64_t a1)
{
  sub_25F82217C();
  sub_25F7616D4(&qword_27FDAFCC8, MEMORY[0x28220C0C8]);

  return sub_25F8222CC();
}

uint64_t Identifier.hashValue.getter()
{
  sub_25F822DCC();
  sub_25F82217C();
  sub_25F7616D4(&qword_27FDAFCC8, MEMORY[0x28220C0C8]);
  sub_25F8222CC();
  return sub_25F822E0C();
}

uint64_t sub_25F7DD6F4()
{
  sub_25F822DCC();
  Identifier.hash(into:)(v1);
  return sub_25F822E0C();
}

uint64_t Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E2C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v5 = sub_25F82217C();
    v11[6] = &v10;
    v6 = *(v5 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25F7616D4(&qword_27FDB0B58, MEMORY[0x28220C0D8]);
    sub_25F822CDC();
    (*(v6 + 32))(a2, v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t Identifier.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F822E4C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25F82217C();
  sub_25F7616D4(&qword_27FDB0B60, MEMORY[0x28220C0C0]);
  sub_25F822CFC();
  return __swift_destroy_boxed_opaque_existential_0Tm(v2);
}

unint64_t Identifier.codingKey.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25F82212C();
  v5 = v4;
  a2[3] = &type metadata for IdentifierCodingKey;
  result = sub_25F7DDA0C();
  a2[4] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

unint64_t sub_25F7DDA0C()
{
  result = qword_27FDB0B68[0];
  if (!qword_27FDB0B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FDB0B68);
  }

  return result;
}

uint64_t Identifier.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a5@<X8>)
{
  v23 = a2;
  v8 = sub_25F82217C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  sub_25F822E8C();
  sub_25F82211C();

  (*(*(a3 - 8) + 8))(a1, a3);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_25F7DDCC0(v14);
    v17 = 1;
  }

  else
  {
    v18 = *(v9 + 32);
    v19 = v18(&v22 - v11, v14, v8);
    MEMORY[0x28223BE20](v19);
    v18(&v22 - v11, &v22 - v11, v8);
    v18(a5, &v22 - v11, v8);
    v17 = 0;
  }

  v20 = type metadata accessor for Identifier(0, v23, v15, v16);
  return (*(*(v20 - 8) + 56))(a5, v17, 1, v20);
}

uint64_t sub_25F7DDCC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F7DDD7C(uint64_t a1)
{
  result = sub_25F82217C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F7DDDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F82217C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F7DDE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F82217C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F7DDEFC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F7DDF2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25F7DDF3C(uint64_t a1)
{
  v2 = sub_25F7DDA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F7DDF78(uint64_t a1)
{
  v2 = sub_25F7DDA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25F7DDFB8()
{
  result = qword_27FDB0BF0;
  if (!qword_27FDB0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0BF0);
  }

  return result;
}

unint64_t sub_25F7DE010()
{
  result = qword_27FDB0BF8;
  if (!qword_27FDB0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0BF8);
  }

  return result;
}

double sub_25F7DE064(uint64_t a1)
{
  v2 = (*(a1 + 4) >> 32);
  v3 = *(a1 + 12);
  *(a1 + 4) = bswap32(*(a1 + 4));
  *v4.i8 = vzip1_s32(v2, *&v3);
  v4.u64[1] = vzip1_s32((v3 >> 32), *(&v3 + 8));
  *(a1 + 8) = vrev32q_s8(v4);
  v5 = bswap32(*(a1 + 28));
  v6 = bswap32(*(a1 + 32));
  *(a1 + 24) = bswap32(HIDWORD(v3));
  *(a1 + 28) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = bswap32(*(a1 + 40));
  v7 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = v7;
  v8 = *(a1 + 96);
  v14 = *(a1 + 80);
  v15 = v8;
  sub_25F7DE140(&v12);
  v9 = v13;
  *(a1 + 48) = v12;
  *(a1 + 64) = v9;
  result = *&v14;
  v11 = v15;
  *(a1 + 80) = v14;
  *(a1 + 96) = v11;
  *(a1 + 112) = bswap32(*(a1 + 112));
  *(a1 + 120) = bswap32(*(a1 + 120));
  *(a1 + 128) = bswap32(*(a1 + 128));
  return result;
}

int8x16_t sub_25F7DE140(uint64_t a1)
{
  *(&v2 + 1) = *(a1 + 20);
  *&v2 = *(a1 + 12);
  v1 = (v2 >> 32);
  v3 = *(&v2 + 8);
  *(&v2 + 1) = v2;
  *&v2 = *(a1 + 4);
  v4 = *(a1 + 12);
  *a1 = bswap32(*a1);
  *(a1 + 4) = bswap32(v2);
  *v5.i8 = vzip1_s32((v2 >> 32), v4);
  v5.u64[1] = vzip1_s32(v1, v3);
  v6 = *(a1 + 24);
  v1.i32[0] = *(a1 + 44);
  *(&v2 + 1) = *(a1 + 40);
  *&v2 = *(a1 + 32);
  v7 = (v2 >> 32);
  v8 = *(&v2 + 8);
  *(&v2 + 1) = v2;
  *&v2 = v6;
  v9 = *(a1 + 32);
  *(a1 + 8) = vrev32q_s8(v5);
  *(a1 + 24) = bswap32(v6);
  *v10.i8 = vzip1_s32((v2 >> 32), v9);
  v10.u64[1] = vzip1_s32(v7, v8);
  result = vrev32q_s8(v10);
  *(a1 + 28) = result;
  v12 = bswap32(*(a1 + 48));
  *(a1 + 44) = bswap32(v1.u32[0]);
  *(a1 + 48) = v12;
  return result;
}

unint64_t sub_25F7DE1D8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = sub_25F772CEC(2uLL, 0x1EuLL, v5, a2);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v4 = v5[0] << 32;
    *a1 = 0;
    *(a1 + 12) = 0;
    *(a1 + 4) = 0x8000000000000000;
    *(a1 + 20) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0x8000000080000000;
    *(a1 + 32) = v4;
    *(a1 + 44) = 0x7FC000007FC00000;
    *(a1 + 52) = 0;
    *(a1 + 60) = 0;
  }

  return result;
}

float sub_25F7DE254@<S0>(uint64_t a1@<X8>, unsigned int a2@<S0>)
{
  v2 = a2;
  *a1 = 0;
  *(a1 + 12) = 0;
  result = *&a2 / 1200.0;
  *(a1 + 4) = 0x8000000000000000;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0x8000000000000000;
  *(a1 + 32) = 0x9999999A00000000;
  *(a1 + 40) = 0;
  *(a1 + 44) = v2 | (LODWORD(result) << 32);
  *(a1 + 60) = 0;
  *(a1 + 52) = 2;
  return result;
}

void sub_25F7DE2A4(uint64_t a1@<X8>)
{
  *a1 = 86865714;
  *(a1 + 12) = 0x4000000000000000;
  *(a1 + 4) = 0x9E8391180000000;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0x7953B73480000000;
  *(a1 + 32) = 0x9999999A06AC48CCLL;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FC000007FC00000;
  *(a1 + 60) = 0;
  *(a1 + 52) = 1;
}

uint64_t sub_25F7DE308()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC06C0);
  v1 = __swift_project_value_buffer(v0, qword_27FDC06C0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7DE438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC06D8);
  v4 = __swift_project_value_buffer(v3, qword_27FDC06D8);
  if (qword_27FDAF9A0 != -1)
  {
    swift_once();
  }

  v20 = 0x800000025F830230;
  v21 = 0x800000025F830250;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC06C0);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v19[1] = v19;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v19[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  *v16 = 0xD00000000000001BLL;
  v16[1] = v20;
  v17 = (v4 + v3[6]);
  *v17 = 0x10000000000000FCLL;
  v17[1] = v21;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v19[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

__n128 sub_25F7DE740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F8249B0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0x4059000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  v1 = sub_25F792BC4(&unk_2871C3DA8);
  *&xmmword_27FDC06F0 = 3;
  *(&xmmword_27FDC06F0 + 8) = 0u;
  unk_27FDC0708 = 0u;
  *(&xmmword_27FDC0710 + 1) = 0;
  byte_27FDC0720 = 1;
  *&algn_27FDC0721[7] = 0u;
  *(&xmmword_27FDC0730 + 8) = 0u;
  unk_27FDC0748 = 0u;
  WORD4(xmmword_27FDC0750) = 256;
  xmmword_27FDC0760 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0770) = 1;
  *(&xmmword_27FDC0770 + 1) = 0;
  unk_27FDC0780 = 0;
  word_27FDC0788 = 256;
  xmmword_27FDC0790 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC07A0 = 0;
  unk_27FDC07A8 = v0;
  LOBYTE(xmmword_27FDC07B0) = 1;
  *(&xmmword_27FDC07B0 + 1) = 0x4003333333333333;
  word_27FDC07C0 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDC07C2[6] = result;
  *(&xmmword_27FDC07D0 + 1) = v1;
  dword_27FDC07E0 = 16843009;
  return result;
}

double sub_25F7DE884()
{
  LODWORD(xmmword_27FDC07E8) = 16843009;
  *(&xmmword_27FDC07E8 + 1) = 0;
  LOWORD(xmmword_27FDC07F8) = 257;
  *(&xmmword_27FDC07F8 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDC0808) = 0;
  *(&xmmword_27FDC0808 + 8) = xmmword_25F827A20;
  BYTE8(xmmword_27FDC0818) = 0;
  *&xmmword_27FDC0828 = 0x4024000000000000;
  BYTE8(xmmword_27FDC0828) = 0;
  *&xmmword_27FDC0838 = 0;
  BYTE8(xmmword_27FDC0838) = 1;
  xmmword_27FDC0848 = vdupq_n_s64(0x4059000000000000uLL);
  qword_27FDC0858 = 0x4059000000000000;
  *&result = 16843008;
  dword_27FDC0860 = 16843008;
  return result;
}

uint64_t DisplayID.DataBlock.description.getter(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  (*(a2 + 32))(&v13);
  if (v13 > 2u)
  {
    if (v13 == 3)
    {
      v7 = 0xEC00000044492072;
      v6 = 0x656E6961746E6F43;
    }

    else if (v13 == 4)
    {
      v7 = 0x800000025F82D490;
      v6 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x800000025F82D470;
      v6 = 0xD000000000000017;
    }
  }

  else
  {
    v4 = 0x800000025F82D4D0;
    v5 = 0xD000000000000012;
    if (v13 != 1)
    {
      v5 = 0xD000000000000016;
      v4 = 0x800000025F82D4B0;
    }

    if (v13)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v13)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x800000025F82D4F0;
    }
  }

  MEMORY[0x25F8E7510](v6, v7);

  MEMORY[0x25F8E7510](10272, 0xE200000000000000);
  LOBYTE(v13) = (*(a2 + 40))(a1, a2);
  sub_25F773C70();
  v8 = sub_25F8224AC();
  v10 = v9;
  result = sub_25F82243C();
  if (__OFSUB__(2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_25F82249C();
    v13 = 30768;
    v14 = 0xE200000000000000;
    MEMORY[0x25F8E7510](v12);

    MEMORY[0x25F8E7510](v8, v10);

    MEMORY[0x25F8E7510](v13, v14);

    MEMORY[0x25F8E7510](41, 0xE100000000000000);
    return v15;
  }

  return result;
}

uint64_t sub_25F7DEB70@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v4, v3);
  v5 = sub_25F821FDC();
  result = sub_25F76D178(v4, v3);
  if (v5 <= 0x27u)
  {
    if (v5 == 32)
    {
      v7 = 0;
      goto LABEL_13;
    }

    if (v5 == 33)
    {
      v7 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 5;
    goto LABEL_13;
  }

  if (v5 == 40)
  {
    v7 = 2;
    goto LABEL_13;
  }

  if (v5 == 41)
  {
    v7 = 3;
    goto LABEL_13;
  }

  if (v5 != 129)
  {
    goto LABEL_12;
  }

  v7 = 4;
LABEL_13:
  *a1 = v7;
  return result;
}

uint64_t DisplayID.DataBlock.tag.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 40))();
  if (result <= 0x27u)
  {
    if (result == 32)
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (result == 33)
    {
      v4 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v4 = 5;
    goto LABEL_13;
  }

  if (result == 40)
  {
    v4 = 2;
    goto LABEL_13;
  }

  if (result == 41)
  {
    v4 = 3;
    goto LABEL_13;
  }

  if (result != 129)
  {
    goto LABEL_12;
  }

  v4 = 4;
LABEL_13:
  *a2 = v4;
  return result;
}

uint64_t DisplayID.DataBlock.rawTag.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))(a1);
  v4 = v3;
  v5 = sub_25F821FDC();
  sub_25F76D178(v2, v4);
  return v5;
}

unint64_t DisplayID.DataBlock.size.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 48))(a1);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      sub_25F76D178(result, v3);
      return v5;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    sub_25F76D178(result, v3);
    return 0;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  sub_25F76D178(result, v3);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    v8 = HIDWORD(result);
    v9 = result;
    result = sub_25F76D178(result, v3);
    if (__OFSUB__(v8, v9))
    {
      __break(1u);
    }

    else
    {
      return v8 - v9;
    }
  }

  return result;
}

uint64_t sub_25F7DEE1C()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F7DEE88()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

ProDisplayLibrary::DisplayID::PrimaryUseCase_optional __swiftcall DisplayID.PrimaryUseCase.init(rawValue:)(ProDisplayLibrary::DisplayID::PrimaryUseCase_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= ProDisplayLibrary_DisplayID_PrimaryUseCase_unknownDefault)
  {
    value = ProDisplayLibrary_DisplayID_PrimaryUseCase_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

unint64_t DisplayID.BlockTag.description.getter()
{
  v1 = *v0;
  v2 = 0x656E6961746E6F43;
  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000016;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

ProDisplayLibrary::DisplayID::BlockTag_optional __swiftcall DisplayID.BlockTag.init(rawValue:)(ProDisplayLibrary::DisplayID::BlockTag_optional rawValue)
{
  if (rawValue.value <= (ProDisplayLibrary_DisplayID_BlockTag_unknownDefault|ProDisplayLibrary_DisplayID_BlockTag_TiledDisplayTopology|0x20))
  {
    if (rawValue.value == 32)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue.value == 33)
    {
      *v1 = 1;
      return rawValue;
    }
  }

  else
  {
    switch(rawValue.value)
    {
      case 0x81u:
        *v1 = 4;
        return rawValue;
      case 0x29u:
        *v1 = 3;
        return rawValue;
      case 0x28u:
        *v1 = 2;
        return rawValue;
    }
  }

  *v1 = 5;
  return rawValue;
}

uint64_t sub_25F7DF06C()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

uint64_t sub_25F7DF104()
{
  sub_25F822DCC();
  sub_25F822DEC();
  return sub_25F822E0C();
}

unint64_t sub_25F7DF180()
{
  v1 = *v0;
  v2 = 0x656E6961746E6F43;
  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000016;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t DisplayID.UnknownDataBlock.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_25F76E658(v1, *(v0 + 24));
  return v1;
}

uint64_t DisplayID.UnknownDataBlock.data.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_25F76D178(v5, v6);
}

uint64_t DisplayID.UnknownDataBlock.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  sub_25F7E2E2C(a1, a2);
  if (v2)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5;
}

uint64_t *DisplayID.UnknownDataBlock.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25F7E2E2C(a1, a2);
  if (v3)
  {
    sub_25F76D178(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return v2;
}

uint64_t DisplayID.UnknownDataBlock.__deallocating_deinit()
{
  sub_25F76D178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25F7DF4A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F771924();
  v4 = MEMORY[0x277D84F90];

  return sub_25F802E24(v2, v3, v4, a1);
}

uint64_t DisplayID.DataBlock.hierarchicalDescription.getter@<X0>(uint64_t *x8_0@<X8>)
{
  v4 = sub_25F822C7C();
  v6 = MEMORY[0x277D84F90];

  return sub_25F802E24(v4, v5, v6, x8_0);
}

uint64_t DisplayID.hierarchicalDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_25F7DF5A8(*v1, &qword_27FDAFD28, &unk_25F827FD0);

  return sub_25F802E24(0x4979616C70736944, 0xE900000000000044, v3, a1);
}

uint64_t sub_25F7DF5A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25F817D88(0, v3, 0);
    v4 = v14;
    v8 = a1 + 32;
    do
    {
      sub_25F760954(v8, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF80, &qword_25F824340);
      swift_dynamicCast();
      v14 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_25F817D88((v9 > 1), v10 + 1, 1);
        v4 = v14;
      }

      *(v4 + 16) = v10 + 1;
      sub_25F75CF9C(&v13, v4 + 40 * v10 + 32);
      v8 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t DisplayID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F821F6C();
  if (v2)
  {
    v7 = sub_25F821F4C();
    return (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    DisplayID.init(_:)(v5, v6, &v11);
    v8 = sub_25F821F4C();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v10 = v12;
    *a2 = v11;
    *(a2 + 8) = v10;
  }

  return result;
}

uint64_t DisplayID.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v6 = HIDWORD(a1) - a1;
  }

LABEL_11:
  v10 = ceil(vcvtd_n_f64_s64(v6, 8uLL));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
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
    goto LABEL_157;
  }

  v11 = v10;
  if (v10 < 0)
  {
    goto LABEL_148;
  }

  if (!v11)
  {
    result = sub_25F76D178(a1, a2);
    v62 = MEMORY[0x277D84F90];
    v63 = 2;
LABEL_110:
    *a3 = v62;
    *(a3 + 8) = v63;
    return result;
  }

  v12 = 0;
  v101 = HIDWORD(a1);
  v13 = __OFSUB__(HIDWORD(a1), a1);
  v90 = v13;
  v89 = HIDWORD(a1) - a1;
  v92 = v11 - 1;
  v103 = a1;
  v104 = BYTE6(a2);
  v102 = a1 >> 32;
  v99 = MEMORY[0x277D84F90];
  v93 = 2;
  v94 = v10;
  while (1)
  {
    if (v12 == 0x80000000000000)
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v16 = *(a1 + 16);
        v15 = *(a1 + 24);
        v9 = __OFSUB__(v15, v16);
        v14 = v15 - v16;
        if (v9)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v104;
      if (v5)
      {
        v14 = v89;
        if (v90)
        {
          goto LABEL_149;
        }
      }
    }

    v17 = v12 << 8;
    v18 = v14 - (v12 << 8);
    if (__OFSUB__(v14, v12 << 8))
    {
      goto LABEL_136;
    }

    if (v18 <= 256)
    {
      if (v18 <= 3)
      {

        sub_25F7E3098();
        swift_allocError();
        *v72 = 0xD00000000000002ELL;
        *(v72 + 8) = 0x800000025F8303A0;
        goto LABEL_121;
      }
    }

    else
    {
      v18 = 256;
    }

    if (sub_25F821FDC() != 32)
    {

      v64 = sub_25F821FDC();
      sub_25F7E3098();
      swift_allocError();
      *v85 = v64;
      *(v85 + 8) = 0;
      v65 = 3;
      goto LABEL_126;
    }

    v19 = sub_25F821FDC();
    v20 = sub_25F821FDC();
    DisplayID.PrimaryUseCase.init(rawValue:)(v20);
    v21 = v109;
    if (v109 == 9)
    {

      v66 = sub_25F821FDC();
      sub_25F7E3098();
      swift_allocError();
      *v85 = v66;
      goto LABEL_119;
    }

    v22 = sub_25F821FDC();
    if (v12)
    {
      if (v21)
      {

        sub_25F7E3098();
        swift_allocError();
        *v85 = v21;
LABEL_119:
        *(v85 + 8) = 0;
        v65 = 4;
        goto LABEL_126;
      }

      if (v22)
      {

        sub_25F7E3098();
        swift_allocError();
        *v85 = v22;
LABEL_125:
        *(v85 + 8) = 0;
        v65 = 2;
LABEL_126:
        *(v85 + 16) = v65;
        goto LABEL_127;
      }
    }

    else
    {
      v93 = v21;
      if (v92 != v22)
      {

        v88 = sub_25F821FDC();
        sub_25F7E3098();
        swift_allocError();
        *v85 = v88;
        goto LABEL_125;
      }
    }

    v98 = v12;
    v23 = v19 + 5;
    if (v18 < v23)
    {

      v109 = 0;
      v110 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0x20746E656D676553, 0xE800000000000000);
      *&v106 = v98;
      v67 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v67);

      MEMORY[0x25F8E7510](0x7374636570786520, 0xE900000000000020);
      *&v106 = v19 + 5;
      v68 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v68);

      MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F830380);
      *&v106 = v18;
      v69 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v69);

      MEMORY[0x25F8E7510](0x6176612065726120, 0xEE00656C62616C69);
      v70 = v109;
      v71 = v110;
      sub_25F7E3098();
      swift_allocError();
      *v72 = v70;
      *(v72 + 8) = v71;
LABEL_121:
      *(v72 + 16) = 0;
LABEL_127:
      swift_willThrow();
      return sub_25F76D178(a1, a2);
    }

    v105 = v19 + 4;
    v24 = v17 + v105;
    if (__OFADD__(v17, v105))
    {
      goto LABEL_137;
    }

    if (v24 < v17)
    {
      goto LABEL_138;
    }

    v25 = sub_25F7E30EC(a1, a2, v17, v24);
    if (__OFADD__(v17, v23))
    {
      goto LABEL_139;
    }

    v26 = v25;
    if (__OFSUB__(v17 + v23, 1))
    {
      goto LABEL_140;
    }

    v27 = sub_25F821FDC();
    if (v27 != v26)
    {
      v73 = v27;

      v109 = 0;
      v110 = 0xE000000000000000;
      sub_25F82292C();

      v109 = 0x656D676573206E49;
      v110 = 0xEB0000000020746ELL;
      *&v106 = v98;
      v74 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v74);

      MEMORY[0x25F8E7510](0x746365707865202CLL, 0xEB00000000206465);
      LOBYTE(v106) = v26;
      sub_25F773C70();
      v75 = sub_25F8224AC();
      v77 = v76;
      if (!__OFSUB__(2, sub_25F82243C()))
      {
        v78 = sub_25F82249C();
        *&v106 = 30768;
        *(&v106 + 1) = 0xE200000000000000;
        MEMORY[0x25F8E7510](v78);

        MEMORY[0x25F8E7510](v75, v77);

        MEMORY[0x25F8E7510](v106, *(&v106 + 1));

        MEMORY[0x25F8E7510](0x746F672074756220, 0xE900000000000020);
        LOBYTE(v106) = v73;
        v79 = sub_25F8224AC();
        v81 = v80;
        if (!__OFSUB__(2, sub_25F82243C()))
        {
          v82 = sub_25F82249C();
          *&v106 = 30768;
          *(&v106 + 1) = 0xE200000000000000;
          MEMORY[0x25F8E7510](v82);

          MEMORY[0x25F8E7510](v79, v81);

          MEMORY[0x25F8E7510](v106, *(&v106 + 1));

          MEMORY[0x25F8E7510](0x64616574736E6920, 0xE800000000000000);
          v83 = v109;
          v84 = v110;
          sub_25F7E3098();
          swift_allocError();
          *v85 = v83;
          *(v85 + 8) = v84;
          v65 = 1;
          goto LABEL_126;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
      }

LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    if (v19)
    {
      break;
    }

LABEL_20:
    v12 = v98 + 1;
    if (v98 + 1 == v94)
    {
      result = sub_25F76D178(a1, a2);
      v62 = v99;
      v63 = v93;
      goto LABEL_110;
    }
  }

  v28 = 4;
  while (1)
  {
    v29 = v17 + v28;
    if (__OFADD__(v17, v28))
    {
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

      v86 = v17 + v28;
      v87 = v21;
      goto LABEL_123;
    }

    if (v5 > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_160;
      }

      if (v29 < *(a1 + 16))
      {
        goto LABEL_130;
      }

      if (v29 >= *(a1 + 24))
      {
        goto LABEL_132;
      }

      v35 = sub_25F821E4C();
      if (!v35)
      {
        goto LABEL_162;
      }

      v36 = v35;
      v37 = sub_25F821E7C();
      v38 = v29 - v37;
      if (__OFSUB__(v29, v37))
      {
        goto LABEL_134;
      }

LABEL_75:
      v21 = *(v36 + v38);
      if (!*(v36 + v38))
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v5)
    {
      if (v29 < v103 || v29 >= v102)
      {
        goto LABEL_131;
      }

      v39 = sub_25F821E4C();
      if (!v39)
      {
        goto LABEL_161;
      }

      v36 = v39;
      v40 = sub_25F821E7C();
      v38 = v29 - v40;
      if (__OFSUB__(v29, v40))
      {
        goto LABEL_133;
      }

      goto LABEL_75;
    }

    if (v29 >= v104)
    {
      goto LABEL_129;
    }

    LOWORD(v109) = a1;
    BYTE2(v109) = BYTE2(a1);
    BYTE3(v109) = BYTE3(a1);
    BYTE4(v109) = v101;
    BYTE5(v109) = BYTE5(a1);
    BYTE6(v109) = BYTE6(a1);
    HIBYTE(v109) = HIBYTE(a1);
    LOWORD(v110) = a2;
    BYTE2(v110) = BYTE2(a2);
    BYTE3(v110) = BYTE3(a2);
    BYTE4(v110) = BYTE4(a2);
    BYTE5(v110) = BYTE5(a2);
    v21 = *(&v109 + v29);
    if (!*(&v109 + v29))
    {
LABEL_76:
      ++v28;
      goto LABEL_77;
    }

LABEL_55:
    v30 = v29 + 2;
    if (__OFADD__(v29, 2))
    {
      goto LABEL_141;
    }

    if (v5 == 2)
    {
      break;
    }

    if (v5 == 1)
    {
      if (v30 < v103 || v30 >= v102)
      {
        goto LABEL_151;
      }

      v95 = v29 + 2;
      result = sub_25F821E4C();
      if (!result)
      {
        goto LABEL_164;
      }

      v32 = result;
      v33 = sub_25F821E7C();
      v34 = v95 - v33;
      if (__OFSUB__(v95, v33))
      {
        goto LABEL_154;
      }

      goto LABEL_83;
    }

    if (v30 >= v104)
    {
      goto LABEL_153;
    }

    LOWORD(v109) = a1;
    BYTE2(v109) = BYTE2(a1);
    BYTE3(v109) = BYTE3(a1);
    BYTE4(v109) = v101;
    BYTE5(v109) = BYTE5(a1);
    BYTE6(v109) = BYTE6(a1);
    HIBYTE(v109) = HIBYTE(a1);
    LOWORD(v110) = a2;
    BYTE2(v110) = BYTE2(a2);
    BYTE3(v110) = BYTE3(a2);
    BYTE4(v110) = BYTE4(a2);
    BYTE5(v110) = BYTE5(a2);
    v42 = *(&v109 + v30);
LABEL_86:
    v43 = v42 + 3;
    if (__OFADD__(v29, v43))
    {
      goto LABEL_142;
    }

    if (v29 + v43 < v29)
    {
      goto LABEL_143;
    }

    v44 = sub_25F82205C();
    v97 = v45;
    sub_25F7E2E2C(v44, v45);
    if (v100)
    {

      v86 = v44;
      v87 = v97;
LABEL_123:
      sub_25F76D178(v86, v87);
      return sub_25F76D178(a1, a2);
    }

    if (v21 <= 39)
    {
      if (v21 != 32)
      {
        if (v21 == 33)
        {
          v51 = type metadata accessor for DisplayID.DisplayParametersDataBlock();
          v47 = swift_allocObject();
          sub_25F76E658(v44, v97);
          sub_25F7E2E2C(v44, v97);
          *(v47 + 16) = v44;
          *(v47 + 24) = v97;
          v107 = v51;
          v48 = type metadata accessor for DisplayID.DisplayParametersDataBlock;
          v49 = &protocol conformance descriptor for DisplayID.DisplayParametersDataBlock;
          v50 = &unk_27FDB0C28;
          goto LABEL_100;
        }

LABEL_108:
        v61 = type metadata accessor for DisplayID.UnknownDataBlock();
        v47 = swift_allocObject();
        sub_25F76E658(v44, v97);
        sub_25F7E2E2C(v44, v97);
        *(v47 + 16) = v44;
        *(v47 + 24) = v97;
        v107 = v61;
        v48 = type metadata accessor for DisplayID.UnknownDataBlock;
        v49 = &protocol conformance descriptor for DisplayID.UnknownDataBlock;
        v50 = &unk_27FDB0C08;
LABEL_101:
        v108 = sub_25F7E5238(v50, v56, v48, v49);
        *&v106 = v47;
        goto LABEL_102;
      }

      v55 = type metadata accessor for DisplayID.ProductIdentificationDataBlock();
      v47 = swift_allocObject();
      sub_25F76E658(v44, v97);
      sub_25F7E2E2C(v44, v97);
      *(v47 + 16) = v44;
      *(v47 + 24) = v97;
      v107 = v55;
      v48 = type metadata accessor for DisplayID.ProductIdentificationDataBlock;
      v49 = &protocol conformance descriptor for DisplayID.ProductIdentificationDataBlock;
      v50 = &unk_27FDB0C30;
LABEL_100:
      v56 = 255;
      goto LABEL_101;
    }

    if (v21 == 40)
    {
      v52 = type metadata accessor for DisplayID.TiledDisplayTopologyDataBlock();
      v47 = swift_allocObject();
      sub_25F76E658(v44, v97);
      sub_25F7E2E2C(v44, v97);
      *(v47 + 16) = v44;
      *(v47 + 24) = v97;
      v107 = v52;
      v48 = type metadata accessor for DisplayID.TiledDisplayTopologyDataBlock;
      v49 = &protocol conformance descriptor for DisplayID.TiledDisplayTopologyDataBlock;
      v50 = &unk_27FDB0C20;
      goto LABEL_100;
    }

    if (v21 != 41)
    {
      if (v21 == 129)
      {
        v46 = type metadata accessor for DisplayID.CTA861EncapsulationDataBlock();
        swift_allocObject();
        sub_25F76E658(v44, v97);
        v47 = DisplayID.CTA861EncapsulationDataBlock.init(_:)(v44, v97);
        v107 = v46;
        v48 = type metadata accessor for DisplayID.CTA861EncapsulationDataBlock;
        v49 = &protocol conformance descriptor for DisplayID.CTA861EncapsulationDataBlock;
        v50 = &unk_27FDB0C10;
        goto LABEL_100;
      }

      goto LABEL_108;
    }

    v53 = type metadata accessor for DisplayID.ContainerIDDataBlock();
    v54 = swift_allocObject();
    *(v54 + 16) = v44;
    *(v54 + 24) = v97;
    v107 = v53;
    v108 = sub_25F7E5238(&qword_27FDB0C18, 255, type metadata accessor for DisplayID.ContainerIDDataBlock, &protocol conformance descriptor for DisplayID.ContainerIDDataBlock);
    *&v106 = v54;
    sub_25F76E658(v44, v97);
LABEL_102:
    sub_25F75CF9C(&v106, &v109);
    sub_25F760954(&v109, &v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_25F75C6DC(0, v99[2] + 1, 1, v99);
    }

    v58 = v99[2];
    v57 = v99[3];
    if (v58 >= v57 >> 1)
    {
      v99 = sub_25F75C6DC((v57 > 1), v58 + 1, 1, v99);
    }

    v99[2] = v58 + 1;
    sub_25F75CF9C(&v106, &v99[5 * v58 + 4]);
    v59 = v111;
    v21 = v112;
    __swift_project_boxed_opaque_existential_1(&v109, v111);
    v60 = (*(v21 + 56))(v59, v21);
    sub_25F76D178(v44, v97);
    v9 = __OFADD__(v28, v60);
    v28 += v60;
    if (v9)
    {
      goto LABEL_144;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
LABEL_77:
    if (v28 >= v105)
    {
      goto LABEL_20;
    }
  }

  if (v30 < *(a1 + 16))
  {
    goto LABEL_152;
  }

  if (v30 >= *(a1 + 24))
  {
    goto LABEL_155;
  }

  v96 = v29 + 2;
  result = sub_25F821E4C();
  if (result)
  {
    v32 = result;
    v41 = sub_25F821E7C();
    v34 = v96 - v41;
    if (__OFSUB__(v96, v41))
    {
      goto LABEL_156;
    }

LABEL_83:
    v42 = *(v32 + v34);
    goto LABEL_86;
  }

  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}

uint64_t sub_25F7E07FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_25F7DF5A8(*v1, &qword_27FDAFD28, &unk_25F827FD0);

  return sub_25F802E24(0x4979616C70736944, 0xE900000000000044, v3, a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.serialNumber(_:)(Swift::UInt32 a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v17 = v2;
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v2 + 32;
    v7 = *(v2 + 16);
    do
    {
      sub_25F760954(v6, &v22);
      sub_25F75CF9C(&v22, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.ProductIdentificationDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v21)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v3 = v19;
      }

      v6 += 40;
      --v7;
    }

    while (v7);
  }

  if (v3 >> 62)
  {
    v8 = sub_25F822A5C();
    v9 = v5;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v5;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8E79F0](v10, v3);
    }

    else
    {
    }

    ++v10;
    v20[0] = a1;
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
  }

  while (v8 != v10);
LABEL_18:

  v19 = v9;
  if (v4)
  {
    v11 = v17 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_25F760954(v11, &v22);
      sub_25F75CF9C(&v22, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.TiledDisplayTopologyDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v21)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v9 = v19;
      }

      v11 += 40;
      --v4;
    }

    while (v4);
  }

  if (v9 >> 62)
  {
    v12 = v9;
    v13 = sub_25F822A5C();
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = v9;
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  if (v13 < 1)
  {
LABEL_38:
    __break(1u);
  }

  v14 = 0;
  v15 = MEMORY[0x277D838B0];
  v16 = MEMORY[0x277CC9C10];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8E79F0](v14, v12);
    }

    else
    {
    }

    LODWORD(v19) = a1;
    swift_beginAccess();
    v23 = v15;
    v24 = v16;
    *&v22 = &v19;
    *(&v22 + 1) = &v19 + 4;
    __swift_project_boxed_opaque_existential_1(&v22, v15);
    ++v14;
    sub_25F821FAC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    swift_endAccess();
  }

  while (v13 != v14);
LABEL_36:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.chromaticity(primaries:whitePoint:)(ProDisplayLibrary::Primaries *primaries, ProDisplayLibrary::Chromaticity whitePoint)
{
  green = primaries->green;
  red = primaries->red;
  blue = primaries->blue;
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + 32;
    do
    {
      sub_25F760954(v9, &v17);
      sub_25F75CF9C(&v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.DisplayParametersDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v19)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v7 = v20;
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  if (!(v7 >> 62))
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_18:

    return;
  }

  v10 = sub_25F822A5C();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8E79F0](v11, v7);
      }

      else
      {
      }

      ++v11;
      v17.red = red;
      v17.green = green;
      v17.blue = blue;
      DisplayID.DisplayParametersDataBlock.primaries(_:)(&v17);
      v17.red.x = v4;
      v17.red.y = v5;
      DisplayID.DisplayParametersDataBlock.whitePoint(_:)(__PAIR128__(v13, v12));
    }

    while (v10 != v11);
    goto LABEL_18;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.gamma(_:)(Swift::Double a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = *v1 + 32;
    do
    {
      sub_25F760954(v5, v38);
      sub_25F75CF9C(v38, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.DisplayParametersDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v37)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v3 = v35;
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  if (v3 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25F822A5C())
  {
    v7 = 0;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v8 = a1 * 100.0 + -100.0;
    a1 = round(v8);
    v31 = llround(v8);
    v29 = v3;
    v32 = i;
    while (v34)
    {
      v10 = MEMORY[0x25F8E79F0](v7, v3);
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_51;
      }

LABEL_18:
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      if (a1 <= -1.0)
      {
        goto LABEL_54;
      }

      if (a1 >= 256.0)
      {
        goto LABEL_55;
      }

      swift_beginAccess();
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      v14 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v14 != 2)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        v16 = v12 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v13, v12);
        *(v10 + 16) = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (*(v13 + 16) > 31)
        {
          goto LABEL_56;
        }

        if (*(v13 + 24) < 32)
        {
          goto LABEL_59;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (sub_25F821E4C())
          {
            if (__OFSUB__(v3, sub_25F821E7C()))
            {
              goto LABEL_64;
            }

            if (__OFSUB__(v17, v3))
            {
              goto LABEL_62;
            }
          }

          else if (__OFSUB__(v17, v3))
          {
            goto LABEL_62;
          }

          sub_25F821E8C();
          swift_allocObject();
          v22 = sub_25F821E2C();

          v16 = v22;
          v3 = v29;
          i = v32;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = *(v13 + 16);
          v24 = *(v13 + 24);
          sub_25F821F9C();
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          *(v25 + 24) = v24;
          i = v32;

          v13 = v25;
        }

        sub_25F821E1C();
        v26 = sub_25F821E4C();
        if (!v26)
        {
          goto LABEL_69;
        }

        v27 = v26;
        v28 = sub_25F821E7C();
        if (__OFSUB__(31, v28))
        {
          goto LABEL_61;
        }

        *(v27 + 31 - v28) = v31;
        v9 = v16 | 0x8000000000000000;
      }

      else if (v14)
      {
        v15 = v12 & 0x3FFFFFFFFFFFFFFFLL;

        sub_25F76D178(v13, v12);
        *(v10 + 16) = xmmword_25F824200;
        sub_25F76D178(0, 0xC000000000000000);
        if (v13 >> 32 < 32)
        {
          goto LABEL_58;
        }

        v3 = v13;
        if (v13 > 31)
        {
          goto LABEL_58;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_25F821E4C() && __OFSUB__(v13, sub_25F821E7C()))
          {
            goto LABEL_63;
          }

          sub_25F821E8C();
          swift_allocObject();
          v18 = sub_25F821E2C();

          v15 = v18;
        }

        sub_25F821E1C();
        v19 = sub_25F821E4C();
        if (!v19)
        {
          goto LABEL_68;
        }

        v20 = v19;
        v21 = sub_25F821E7C();
        v3 = v29;
        i = v32;
        if (__OFSUB__(31, v21))
        {
          goto LABEL_60;
        }

        *(v20 + 31 - v21) = v31;
        v9 = v15 | 0x4000000000000000;
      }

      else
      {
        sub_25F76D178(*(v10 + 16), *(v10 + 24));
        if (BYTE6(v12) < 0x20uLL)
        {
          goto LABEL_57;
        }

        v9 = v30 & 0xF00000000000000 | v12 & 0xFFFFFFFFFFFFLL | (BYTE6(v12) << 48);
        v30 = v9;
      }

      *(v10 + 16) = v13;
      *(v10 + 24) = v9;
      swift_endAccess();

      ++v7;
      if (v11 == i)
      {
        goto LABEL_66;
      }
    }

    if (v7 >= *(v33 + 16))
    {
      goto LABEL_52;
    }

    v10 = *(v3 + 8 * v7 + 32);

    v11 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_18;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
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
    ;
  }

LABEL_66:
}

uint64_t DisplayID.eotfSupport(_:)(uint64_t a1)
{
  v134 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v132[0] = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v119 = MEMORY[0x277D84F90];
    do
    {
      sub_25F760954(v5, v130);
      sub_25F75CF9C(v130, v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.CTA861EncapsulationDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v129)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v119 = v132[0];
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v119 = MEMORY[0x277D84F90];
  }

  v6 = v119;
  if (v119 >> 62)
  {
    goto LABEL_191;
  }

  v7 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v110 = v6 + 32;
      v111 = v6 & 0xFFFFFFFFFFFFFF8;
      v10 = a1 + 56;
      v112 = v6 & 0xC000000000000001;
      v113 = v7;
      while (1)
      {
        if (v9)
        {
          v115 = MEMORY[0x25F8E79F0](v8);
          v11 = __OFADD__(v8, 1);
          v12 = v8 + 1;
          if (v11)
          {
            goto LABEL_188;
          }
        }

        else
        {
          if (v8 >= *(v111 + 16))
          {
            goto LABEL_195;
          }

          v115 = *(v110 + 8 * v8);

          v11 = __OFADD__(v8, 1);
          v12 = v8 + 1;
          if (v11)
          {
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }
        }

        v114 = v12;
        swift_beginAccess();
        v13 = *(v115 + 16);
        v127 = MEMORY[0x277D84F90];
        v14 = *(v13 + 16);
        if (v14)
        {
          break;
        }

        v16 = MEMORY[0x277D84F90];
        if (MEMORY[0x277D84F90] >> 62)
        {
          goto LABEL_95;
        }

LABEL_29:
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_30;
        }

LABEL_96:

        v61 = *(v115 + 16);
        v128 = MEMORY[0x277D84F90];
        v62 = *(v61 + 16);
        if (v62)
        {
          v63 = v61 + 32;
          v64 = MEMORY[0x277D84F90];

          v65 = v64;
          do
          {
            sub_25F760954(v63, v130);
            sub_25F75CF9C(v130, v133);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD10, &unk_25F823F70);
            type metadata accessor for CTA861.ColorimetryDataBlock();
            if ((swift_dynamicCast() & 1) != 0 && v131)
            {
              MEMORY[0x25F8E75B0]();
              if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25F82252C();
              }

              sub_25F82254C();
              v65 = v128;
            }

            v63 += 40;
            --v62;
          }

          while (v62);

          if (v65 >> 62)
          {
LABEL_166:
            v66 = sub_25F822A5C();
            v123 = v65;
            if (!v66)
            {
              goto LABEL_13;
            }

LABEL_106:
            v67 = 0;
            v125 = v66;
            while (1)
            {
LABEL_109:
              if ((v123 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x25F8E79F0](v67, v123);
                v11 = __OFADD__(v67++, 1);
                if (v11)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                if (v67 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_175;
                }

                v69 = *(v123 + 32 + 8 * v67);

                v11 = __OFADD__(v67++, 1);
                if (v11)
                {
                  goto LABEL_173;
                }
              }

              if (*(a1 + 16))
              {
                sub_25F822DCC();
                MEMORY[0x25F8E7E80](6);
                v70 = sub_25F822E0C();
                v71 = -1 << *(a1 + 32);
                v72 = v70 & ~v71;
                if ((*(v10 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
                {
                  break;
                }
              }

LABEL_120:
              swift_beginAccess();
              v68 = *(v69 + 16);
              v74 = *(v69 + 24);
              sub_25F76E658(v68, v74);
              v75 = sub_25F82205C();
              v77 = v76;
              sub_25F76D178(v68, v74);
              v78 = v77 >> 62;
              if ((v77 >> 62) > 1)
              {
                if (v78 == 2)
                {
                  v82 = *(v75 + 16);
                  v83 = *(v75 + 24);
                  v84 = sub_25F821E4C();
                  if (v84)
                  {
                    v68 = v84;
                    v85 = sub_25F821E7C();
                    if (__OFSUB__(v82, v85))
                    {
                      goto LABEL_185;
                    }

                    v86 = v83;
                    v87 = (v82 - v85 + v68);
                    if (__OFSUB__(v86, v82))
                    {
                      goto LABEL_184;
                    }
                  }

                  else
                  {
                    v98 = v83;
                    v87 = 0;
                    if (__OFSUB__(v98, v82))
                    {
                      goto LABEL_184;
                    }
                  }

                  sub_25F821E6C();
                  if (v87)
                  {
                    LOWORD(v68) = *v87;
                  }
                }

                else
                {
                  LOWORD(v68) = 0;
                }
              }

              else if (v78)
              {
                if (v75 > v75 >> 32)
                {
                  goto LABEL_183;
                }

                v79 = sub_25F821E4C();
                if (v79)
                {
                  v68 = v79;
                  v80 = sub_25F821E7C();
                  if (__OFSUB__(v75, v80))
                  {
                    goto LABEL_186;
                  }

                  v81 = (v75 - v80 + v68);
                  sub_25F821E6C();
                  if (v81)
                  {
                    LOWORD(v68) = *v81;
                  }
                }

                else
                {
                  sub_25F821E6C();
                }
              }

              else
              {
                LOWORD(v68) = v75;
              }

              sub_25F76D178(v75, v77);
              v133[0] = v68 & 0xBFFF;
              swift_beginAccess();
              sub_25F821FAC();
              swift_endAccess();

              v10 = a1 + 56;
              v66 = v125;
              if (v67 == v125)
              {
                goto LABEL_13;
              }
            }

            v73 = ~v71;
            while (*(*(a1 + 48) + v72) != 6)
            {
              v72 = (v72 + 1) & v73;
              if (((*(v10 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
              {
                goto LABEL_120;
              }
            }

            swift_beginAccess();
            v88 = *(v69 + 16);
            v89 = *(v69 + 24);
            sub_25F76E658(v88, v89);
            v90 = sub_25F82205C();
            v92 = v91;
            sub_25F76D178(v88, v89);
            v93 = v92 >> 62;
            if ((v92 >> 62) > 1)
            {
              if (v93 == 2)
              {
                v94 = *(v90 + 16);
                v95 = *(v90 + 24);
                v96 = sub_25F821E4C();
                if (v96)
                {
                  v97 = sub_25F821E7C();
                  if (__OFSUB__(v94, v97))
                  {
                    goto LABEL_196;
                  }

                  v96 = (v96 + v94 - v97);
                }

                if (__OFSUB__(v95, v94))
                {
                  goto LABEL_194;
                }

                sub_25F821E6C();
                if (v96)
                {
                  v133[0] = *v96;
                }

                goto LABEL_159;
              }

              v133[0] = 0;
            }

            else
            {
              if (!v93)
              {
                v133[0] = v90;
                goto LABEL_161;
              }

              if (v90 >> 32 < v90)
              {
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
              }

              v99 = sub_25F821E4C();
              if (v99)
              {
                v100 = sub_25F821E7C();
                if (__OFSUB__(v90, v100))
                {
                  goto LABEL_197;
                }

                v99 += v90 - v100;
              }

              v101 = sub_25F821E6C();
              if (v101 >= (v90 >> 32) - v90)
              {
                v102 = (v90 >> 32) - v90;
              }

              else
              {
                v102 = v101;
              }

              v103 = v102 + v99;
              if (v99)
              {
                v104 = v103;
              }

              else
              {
                v104 = 0;
              }

              sub_25F7E2CF4(sub_25F7E2E20, 0, v99, v104);
LABEL_159:
              v10 = a1 + 56;
              v66 = v125;
            }

LABEL_161:
            sub_25F76D178(v90, v92);
            if ((v133[0] & 0x4000) == 0)
            {
              v133[0] |= 0x4000u;
            }

            swift_beginAccess();
            sub_25F821FAC();
            swift_endAccess();

            if (v67 == v66)
            {
              goto LABEL_13;
            }

            goto LABEL_109;
          }
        }

        else
        {
          v65 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
            goto LABEL_166;
          }
        }

        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v123 = v65;
        if (v66)
        {
          goto LABEL_106;
        }

LABEL_13:

        v8 = v114;
        v9 = v112;
        if (v114 == v113)
        {
        }
      }

      v15 = v13 + 32;
      v16 = MEMORY[0x277D84F90];

      do
      {
        sub_25F760954(v15, v130);
        sub_25F75CF9C(v130, v133);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD10, &unk_25F823F70);
        type metadata accessor for CTA861.HDRStaticMetadataDataBlock();
        if ((swift_dynamicCast() & 1) != 0 && v131)
        {
          MEMORY[0x25F8E75B0]();
          if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25F82252C();
            v10 = a1 + 56;
          }

          sub_25F82254C();
          v16 = v127;
        }

        v15 += 40;
        --v14;
      }

      while (v14);

      if (!(v16 >> 62))
      {
        goto LABEL_29;
      }

LABEL_95:
      v17 = sub_25F822A5C();
      if (!v17)
      {
        goto LABEL_96;
      }

LABEL_30:
      v18 = 0;
      v121 = v16;
      v122 = v16 & 0xC000000000000001;
      v116 = v16 + 32;
      v117 = v16 & 0xFFFFFFFFFFFFFF8;
      v120 = v17;
      while (1)
      {
        if (v122)
        {
          v126 = MEMORY[0x25F8E79F0](v18, v16);
        }

        else
        {
          if (v18 >= *(v117 + 16))
          {
            goto LABEL_176;
          }

          v126 = *(v116 + 8 * v18);
        }

        v11 = __OFADD__(v18++, 1);
        v20 = MEMORY[0x277D84F90];
        if (v11)
        {
          goto LABEL_174;
        }

        v21 = *(a1 + 16);
        v124 = v18;
        if (!v21)
        {
          goto LABEL_57;
        }

        *&v130[0] = MEMORY[0x277D84F90];
        sub_25F817DA8(0, v21, 0);
        v20 = *&v130[0];
        v22 = sub_25F82289C();
        for (i = 0; i != v21; ++i)
        {
          if (v22 < 0 || v22 >= 1 << *(a1 + 32))
          {
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v25 = v22 >> 6;
          v26 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            goto LABEL_169;
          }

          v27 = *(*(a1 + 48) + v22);
          v6 = *(a1 + 36);
          *&v130[0] = v20;
          v29 = *(v20 + 16);
          v28 = *(v20 + 24);
          if (v29 >= v28 >> 1)
          {
            v108 = v6;
            v109 = v22;
            sub_25F817DA8((v28 > 1), v29 + 1, 1);
            v6 = v108;
            v22 = v109;
            v20 = *&v130[0];
          }

          *(v20 + 16) = v29 + 1;
          *(v20 + v29 + 32) = 0x1020804040101uLL >> (8 * v27);
          v24 = 1 << *(a1 + 32);
          if (v22 >= v24)
          {
            goto LABEL_170;
          }

          v10 = a1 + 56;
          v30 = *(a1 + 56 + 8 * v25);
          if ((v30 & v26) == 0)
          {
            goto LABEL_171;
          }

          if (v6 != *(a1 + 36))
          {
            goto LABEL_172;
          }

          v31 = v30 & (-2 << (v22 & 0x3F));
          if (v31)
          {
            v24 = __clz(__rbit64(v31)) | v22 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v25 << 6;
            v33 = v25 + 1;
            v34 = (a1 + 64 + 8 * v25);
            while (v33 < (v24 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_25F7617C8(v22, v6, 0);
                v24 = __clz(__rbit64(v35)) + v32;
                goto LABEL_41;
              }
            }

            sub_25F7617C8(v22, v6, 0);
          }

LABEL_41:
          v22 = v24;
        }

        v18 = v124;
LABEL_57:
        v37 = *(v20 + 16);
        if (v37)
        {
          v38 = 0;
          v39 = (v20 + 32);
          do
          {
            v41 = *v39++;
            v40 = v41;
            if ((~v38 & v41) == 0)
            {
              v40 = 0;
            }

            v38 |= v40;
            --v37;
          }

          while (v37);
        }

        else
        {
          v38 = 0;
        }

        v19 = v126;
        swift_beginAccess();
        v43 = *(v126 + 16);
        v42 = *(v126 + 24);
        v44 = v42 >> 62;
        if ((v42 >> 62) > 1)
        {
          if (v44 != 2)
          {
            goto LABEL_198;
          }

          v46 = v42 & 0x3FFFFFFFFFFFFFFFLL;

          sub_25F76D178(v43, v42);
          *(v126 + 16) = xmmword_25F824200;
          sub_25F76D178(0, 0xC000000000000000);
          if (*(v43 + 16) <= 2)
          {
            if (*(v43 + 24) >= 3)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_88;
              }

              v47 = *(v43 + 16);
              v48 = *(v43 + 24);
              if (sub_25F821E4C())
              {
                if (__OFSUB__(v47, sub_25F821E7C()))
                {
                  goto LABEL_190;
                }

                if (!__OFSUB__(v48, v47))
                {
LABEL_87:
                  sub_25F821E8C();
                  swift_allocObject();
                  v54 = sub_25F821E2C();

                  v46 = v54;
                  v18 = v124;
LABEL_88:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v55 = *(v43 + 16);
                    v56 = *(v43 + 24);
                    sub_25F821F9C();
                    v57 = swift_allocObject();
                    *(v57 + 16) = v55;
                    *(v57 + 24) = v56;

                    v43 = v57;
                  }

                  sub_25F821E1C();
                  v58 = sub_25F821E4C();
                  if (!v58)
                  {
                    goto LABEL_200;
                  }

                  v59 = v58;
                  v60 = sub_25F821E7C();
                  if (!__OFSUB__(2, v60))
                  {
                    *(v59 + 2 - v60) = v38;
                    v45 = v46 | 0x8000000000000000;
                    goto LABEL_31;
                  }

LABEL_182:
                  __break(1u);
LABEL_183:
                  __break(1u);
LABEL_184:
                  __break(1u);
LABEL_185:
                  __break(1u);
LABEL_186:
                  __break(1u);
                }
              }

              else if (!__OFSUB__(v48, v47))
              {
                goto LABEL_87;
              }

              __break(1u);
              goto LABEL_188;
            }

LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }

LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        if (v44)
        {
          break;
        }

        sub_25F76D178(*(v126 + 16), *(v126 + 24));
        if (BYTE6(v42) < 3uLL)
        {
          goto LABEL_178;
        }

        v43 = v43 & 0xFFFFFFFFFF00FFFFLL | (v38 << 16);
        v45 = v118 & 0xF00000000000000 | v42 & 0xFFFFFFFFFFFFLL | (BYTE6(v42) << 48);
        v118 = v45;
LABEL_32:
        *(v19 + 16) = v43;
        *(v19 + 24) = v45;
        swift_endAccess();

        v16 = v121;
        if (v18 == v120)
        {
          goto LABEL_96;
        }
      }

      v49 = v42 & 0x3FFFFFFFFFFFFFFFLL;

      sub_25F76D178(v43, v42);
      *(v126 + 16) = xmmword_25F824200;
      sub_25F76D178(0, 0xC000000000000000);
      if (v43 >> 32 < 3 || v43 > 2)
      {
        goto LABEL_179;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_83;
      }

      if (!sub_25F821E4C() || !__OFSUB__(v43, sub_25F821E7C()))
      {
        sub_25F821E8C();
        swift_allocObject();
        v50 = sub_25F821E2C();

        v49 = v50;
LABEL_83:
        sub_25F821E1C();
        v51 = sub_25F821E4C();
        if (!v51)
        {
          goto LABEL_199;
        }

        v52 = v51;
        v53 = sub_25F821E7C();
        v18 = v124;
        if (!__OFSUB__(2, v53))
        {
          *(v52 + 2 - v53) = v38;
          v45 = v49 | 0x4000000000000000;
LABEL_31:
          v19 = v126;
          goto LABEL_32;
        }

        goto LABEL_181;
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      v105 = v6;
      v106 = sub_25F822A5C();
      v6 = v105;
      v7 = v106;
    }

    while (v106);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisplayID.bt2020Support(_:)(Swift::Bool a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v63 = MEMORY[0x277D84F90];
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = *v1 + 32;
    v53 = MEMORY[0x277D84F90];
    do
    {
      sub_25F760954(v3, v65);
      sub_25F75CF9C(v65, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.CTA861EncapsulationDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v61)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v53 = v63;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v4 = v53;
  if (v53 >> 62)
  {
    goto LABEL_90;
  }

  v5 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v51 = v5;
      v52 = v4 & 0xC000000000000001;
      v49 = v4 + 32;
      v50 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v52)
        {
          v7 = MEMORY[0x25F8E79F0](v6);
          v8 = __OFADD__(v6, 1);
          v9 = v6 + 1;
          if (v8)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v6 >= *(v50 + 16))
          {
            goto LABEL_89;
          }

          v7 = *(v49 + 8 * v6);

          v8 = __OFADD__(v6, 1);
          v9 = v6 + 1;
          if (v8)
          {
            goto LABEL_88;
          }
        }

        v54 = v9;
        swift_beginAccess();
        v10 = *(v7 + 16);
        v60 = MEMORY[0x277D84F90];
        v11 = *(v10 + 16);
        if (v11)
        {
          break;
        }

        v13 = MEMORY[0x277D84F90];
        if (MEMORY[0x277D84F90] >> 62)
        {
          goto LABEL_76;
        }

LABEL_29:
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_30;
        }

LABEL_13:

        v6 = v54;
        v4 = v53;
        if (v54 == v51)
        {
          goto LABEL_91;
        }
      }

      v12 = v10 + 32;
      v13 = MEMORY[0x277D84F90];

      do
      {
        sub_25F760954(v12, v65);
        sub_25F75CF9C(v65, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD10, &unk_25F823F70);
        type metadata accessor for CTA861.ColorimetryDataBlock();
        if ((swift_dynamicCast() & 1) != 0 && v62)
        {
          MEMORY[0x25F8E75B0]();
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25F82252C();
          }

          sub_25F82254C();
          v13 = v60;
        }

        v12 += 40;
        --v11;
      }

      while (v11);

      if (!(v13 >> 62))
      {
        goto LABEL_29;
      }

LABEL_76:
      v14 = sub_25F822A5C();
      if (!v14)
      {
        goto LABEL_13;
      }

LABEL_30:
      v15 = 0;
      v58 = v13;
      v59 = v13 & 0xC000000000000001;
      v55 = v13 & 0xFFFFFFFFFFFFFF8;
      v57 = v14;
      while (2)
      {
        if (v59)
        {
          v18 = MEMORY[0x25F8E79F0](v15, v13);
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          goto LABEL_40;
        }

        if (v15 >= *(v55 + 16))
        {
          goto LABEL_79;
        }

        v18 = *(v13 + 8 * v15 + 32);

        v19 = v15 + 1;
        if (!__OFADD__(v15, 1))
        {
LABEL_40:
          if (a1)
          {
            swift_beginAccess();
            v20 = *(v18 + 16);
            v21 = *(v18 + 24);
            sub_25F76E658(v20, v21);
            v22 = sub_25F82205C();
            v24 = v23;
            sub_25F76D178(v20, v21);
            v25 = v24 >> 62;
            if ((v24 >> 62) > 1)
            {
              if (v25 == 2)
              {
                v37 = *(v22 + 16);
                v26 = *(v22 + 24);
                v38 = sub_25F821E4C();
                if (v38)
                {
                  v39 = sub_25F821E7C();
                  if (__OFSUB__(v37, v39))
                  {
                    goto LABEL_85;
                  }

                  v38 = (v38 + v37 - v39);
                }

                if (__OFSUB__(v26, v37))
                {
                  goto LABEL_83;
                }

                sub_25F821E6C();
                if (v38)
                {
                  LOWORD(v26) = *v38;
                }
              }

              else
              {
                LOWORD(v26) = 0;
              }
            }

            else if (v25)
            {
              LOWORD(v26) = v22;
              if (v22 > v22 >> 32)
              {
                goto LABEL_81;
              }

              v43 = sub_25F821E4C();
              if (v43)
              {
                v44 = v43;
                v45 = sub_25F821E7C();
                if (__OFSUB__(v22, v45))
                {
                  goto LABEL_87;
                }

                v46 = (v22 - v45 + v44);
                sub_25F821E6C();
                if (v46)
                {
                  LOWORD(v26) = *v46;
                }
              }

              else
              {
                sub_25F821E6C();
              }
            }

            else
            {
              LOWORD(v26) = v22;
            }

            sub_25F76D178(v22, v24);
            v17 = v26 | 0x80;
          }

          else
          {
            swift_beginAccess();
            v27 = *(v18 + 16);
            v28 = *(v18 + 24);
            sub_25F76E658(v27, v28);
            v29 = sub_25F82205C();
            v31 = v30;
            sub_25F76D178(v27, v28);
            v32 = v31 >> 62;
            if ((v31 >> 62) > 1)
            {
              if (v32 == 2)
              {
                v40 = *(v29 + 16);
                v16 = *(v29 + 24);
                v41 = sub_25F821E4C();
                if (v41)
                {
                  v42 = sub_25F821E7C();
                  if (__OFSUB__(v40, v42))
                  {
                    goto LABEL_84;
                  }

                  v41 = (v41 + v40 - v42);
                }

                if (__OFSUB__(v16, v40))
                {
                  goto LABEL_82;
                }

                sub_25F821E6C();
                if (v41)
                {
                  LOWORD(v16) = *v41;
                }
              }

              else
              {
                LOWORD(v16) = 0;
              }
            }

            else if (v32)
            {
              LOWORD(v16) = v29;
              if (v29 > v29 >> 32)
              {
                goto LABEL_80;
              }

              v33 = sub_25F821E4C();
              if (v33)
              {
                v34 = v33;
                v35 = sub_25F821E7C();
                if (__OFSUB__(v29, v35))
                {
                  goto LABEL_86;
                }

                v36 = (v29 - v35 + v34);
                sub_25F821E6C();
                if (v36)
                {
                  LOWORD(v16) = *v36;
                }
              }

              else
              {
                sub_25F821E6C();
              }
            }

            else
            {
              LOWORD(v16) = v29;
            }

            sub_25F76D178(v29, v31);
            v17 = v16 & 0xFF7F;
          }

          v64[0] = v17;
          swift_beginAccess();
          sub_25F821FAC();
          swift_endAccess();

          ++v15;
          v13 = v58;
          if (v19 == v57)
          {
            goto LABEL_13;
          }

          continue;
        }

        break;
      }

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
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v47 = v4;
      v48 = sub_25F822A5C();
      v4 = v47;
      v5 = v48;
    }

    while (v48);
  }

LABEL_91:
}

uint64_t DisplayID.containerID(_:)()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = *v0 + 32;
    do
    {
      sub_25F760954(v3, v10);
      sub_25F75CF9C(v10, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.ContainerIDDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v9[5])
      {
        MEMORY[0x25F8E75B0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v1 = v8;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  if (v1 >> 62)
  {
    v4 = sub_25F822A5C();
    if (!v4)
    {
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8E79F0](v5, v1);
    }

    else
    {
    }

    ++v5;
    v9[0] = sub_25F82215C();
    v9[1] = v6;
    swift_beginAccess();
    sub_25F821FAC();
    swift_endAccess();
  }

  while (v4 != v5);
}

uint64_t sub_25F7E2C7C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F76E658(v2, v3);
  v4 = sub_25F821FDC();
  sub_25F76D178(v2, v3);
  return v4;
}

uint64_t sub_25F7E2CF4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return a1(a3, (a4 - a3) / 2, &v5);
  }

  else
  {
    return (a1)(0, 0, &v5, a4);
  }
}

uint64_t sub_25F7E2D5C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    return a1(a3, (a4 - a3) / 16, &v5);
  }

  else
  {
    return (a1)(0, 0, &v5, a4);
  }
}

uint64_t sub_25F7E2DCC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25F7E2E2C(uint64_t result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 > 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result > 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (BYTE6(a2) > 2uLL)
  {
LABEL_11:
    result = sub_25F821FDC();
    if (v4 == 2)
    {
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      v7 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v7)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (v4 == 1)
    {
      LODWORD(v12) = HIDWORD(v3) - v3;
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v12 = v12;
LABEL_19:
        if (result + 3 == v12)
        {
          return result;
        }

        sub_25F82292C();

        v15 = sub_25F822C7C();
        MEMORY[0x25F8E7510](v15);

        result = MEMORY[0x25F8E7510](0x6420656C69687720, 0xEF20736920617461);
        if (v4 == 2)
        {
          if (__OFSUB__(*(v3 + 24), *(v3 + 16)))
          {
            __break(1u);
          }

          goto LABEL_27;
        }

        if (v4 != 1 || !__OFSUB__(HIDWORD(v3), v3))
        {
LABEL_27:
          v16 = sub_25F822C7C();
          MEMORY[0x25F8E7510](v16);

          v11 = 0xD00000000000001BLL;
          v9 = 0x800000025F830410;
          sub_25F773C1C();
          swift_allocError();
          goto LABEL_28;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = v2;
    goto LABEL_19;
  }

LABEL_8:
  v9 = 0x800000025F830430;
  sub_25F773C1C();
  swift_allocError();
  v11 = 0xD00000000000002FLL;
LABEL_28:
  *v10 = v11;
  *(v10 + 8) = v9;
  *(v10 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_25F7E3098()
{
  result = qword_27FDB0C00;
  if (!qword_27FDB0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C00);
  }

  return result;
}

uint64_t sub_25F7E30EC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = 0;
  v9 = a2 >> 62;
  v34 = BYTE6(a2);
  v35 = a1;
  v32 = a1 >> 8;
  v33 = a1 >> 32;
  if (a4 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  v30 = a1 >> 24;
  v31 = a1 >> 16;
  v28 = a1 >> 40;
  v29 = HIDWORD(a1);
  v26 = HIBYTE(a1);
  v27 = HIWORD(a1);
  v24 = a2 >> 16;
  v25 = a2 >> 8;
  v23 = a2 >> 24;
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v21 = a2 >> 40;
  v22 = HIDWORD(a2);
  while (a4 != v11)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
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
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v10 == v11)
    {
      goto LABEL_29;
    }

    if (v9 > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_36;
      }

      if (v11 < *(a1 + 16))
      {
        goto LABEL_31;
      }

      if (v11 >= *(a1 + 24))
      {
        goto LABEL_34;
      }

      v14 = sub_25F821E4C();
      if (!v14)
      {
        goto LABEL_38;
      }

      v15 = v14;
      v16 = sub_25F821E7C();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_35;
      }

LABEL_5:
      v12 = *(v15 + v17);
      goto LABEL_6;
    }

    if (v9)
    {
      if (v11 < v35 || v11 >= v33)
      {
        goto LABEL_33;
      }

      v18 = sub_25F821E4C();
      if (!v18)
      {
        goto LABEL_37;
      }

      v15 = v18;
      v19 = sub_25F821E7C();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        __break(1u);
        return -v8;
      }

      goto LABEL_5;
    }

    if (v11 >= v34)
    {
      goto LABEL_32;
    }

    v36[0] = v35;
    v36[1] = v32;
    v36[2] = v31;
    v36[3] = v30;
    v36[4] = v29;
    v36[5] = v28;
    v36[6] = v27;
    v36[7] = v26;
    v36[8] = v6;
    v36[9] = v25;
    v36[10] = v24;
    v36[11] = v23;
    v36[12] = v22;
    v36[13] = v21;
    v12 = v36[v11];
LABEL_6:
    ++v11;
    v13 = __CFADD__(v8, v12);
    v8 += v12;
    if (v13)
    {
      goto LABEL_30;
    }
  }

  return -v8;
}

uint64_t sub_25F7E3360(double a1, double a2)
{
  v226 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v6 = MEMORY[0x277D84F90];
  v222 = MEMORY[0x277D84F90];
  v7 = *(*v2 + 16);
  if (v7)
  {
    v8 = v5 + 32;
    v9 = *(v5 + 16);
    do
    {
      sub_25F760954(v8, v225);
      sub_25F75CF9C(v225, v224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.DisplayParametersDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v220)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v6 = v222;
      }

      v8 += 40;
      --v9;
    }

    while (v9);
  }

  if (v6 >> 62)
  {
    v10 = sub_25F822A5C();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
  }

  v11 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x25F8E79F0](v11, v6);
    }

    else
    {
    }

    ++v11;
    LOWORD(v224[0]) = sub_25F7F2044(v12, a1);
    swift_beginAccess();
    sub_25F821FAC();
    v13 = swift_endAccess();
    LOWORD(v224[0]) = sub_25F7F2044(v13, a2);
    swift_beginAccess();
    sub_25F821FAC();
    LOWORD(v224[0]) = 0x8000;
    sub_25F821FAC();
    swift_endAccess();
  }

  while (v10 != v11);
LABEL_18:

  v223 = MEMORY[0x277D84F90];
  if (v7)
  {
    v14 = v5 + 32;
    v203 = MEMORY[0x277D84F90];
    do
    {
      sub_25F760954(v14, v225);
      sub_25F75CF9C(v225, v224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD28, &unk_25F827FD0);
      type metadata accessor for DisplayID.CTA861EncapsulationDataBlock();
      if ((swift_dynamicCast() & 1) != 0 && v220)
      {
        MEMORY[0x25F8E75B0]();
        if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25F82252C();
        }

        sub_25F82254C();
        v203 = v223;
      }

      v14 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v203 = MEMORY[0x277D84F90];
  }

  v15 = v203;
  if (v203 >> 62)
  {
    goto LABEL_370;
  }

  v16 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    do
    {
      v201 = v15 & 0xC000000000000001;
      v198 = v15 + 32;
      v199 = v15 & 0xFFFFFFFFFFFFFF8;
      v17 = v15;
      v18 = log2(a2 / 50.0) * 32.0;
      a2 = ceil(v18);
      v209 = vcvtpd_s64_f64(v18);
      v19 = log2(a1 / 50.0);
      v15 = v17;
      v20 = 0;
      v21 = v19 * 32.0;
      a1 = ceil(v21);
      v208 = vcvtpd_s64_f64(v21);
      v200 = v16;
      while (1)
      {
        if (v201)
        {
          v22 = MEMORY[0x25F8E79F0](v20, v15);
          v23 = __OFADD__(v20, 1);
          v24 = v20 + 1;
          if (v23)
          {
            goto LABEL_362;
          }
        }

        else
        {
          if (v20 >= *(v199 + 16))
          {
            goto LABEL_369;
          }

          v22 = *(v198 + 8 * v20);

          v23 = __OFADD__(v20, 1);
          v24 = v20 + 1;
          if (v23)
          {
            goto LABEL_362;
          }
        }

        v202 = v24;
        swift_beginAccess();
        v25 = *(v22 + 16);
        v219 = MEMORY[0x277D84F90];
        v26 = *(v25 + 16);
        if (v26)
        {
          break;
        }

        v28 = MEMORY[0x277D84F90];
        if (MEMORY[0x277D84F90] >> 62)
        {
          goto LABEL_295;
        }

LABEL_46:
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_47;
        }

LABEL_30:

        v20 = v202;
        v15 = v203;
        if (v202 == v200)
        {
        }
      }

      v27 = v25 + 32;
      v28 = MEMORY[0x277D84F90];

      do
      {
        sub_25F760954(v27, v225);
        sub_25F75CF9C(v225, v224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD10, &unk_25F823F70);
        type metadata accessor for CTA861.HDRStaticMetadataDataBlock();
        if ((swift_dynamicCast() & 1) != 0 && v221)
        {
          MEMORY[0x25F8E75B0]();
          if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25F82252C();
          }

          sub_25F82254C();
          v28 = v219;
        }

        v27 += 40;
        --v26;
      }

      while (v26);

      if (!(v28 >> 62))
      {
        goto LABEL_46;
      }

LABEL_295:
      v29 = sub_25F822A5C();
      if (!v29)
      {
        goto LABEL_30;
      }

LABEL_47:
      v30 = 0;
      v216 = v28;
      v217 = v28 & 0xC000000000000001;
      v207 = v28 & 0xFFFFFFFFFFFFFF8;
      v215 = v29;
      while (2)
      {
        if (v217)
        {
          v31 = MEMORY[0x25F8E79F0](v30, v28);
          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          goto LABEL_56;
        }

        if (v30 >= *(v207 + 16))
        {
          goto LABEL_307;
        }

        v31 = *(v28 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (!__OFADD__(v30, 1))
        {
LABEL_56:
          swift_beginAccess();
          v33 = *(v31 + 16);
          v34 = *(v31 + 24);
          v35 = v34 >> 62;
          if ((v34 >> 62) > 1)
          {
            v36 = 0;
            if (v35 == 2)
            {
              v39 = v33 + 16;
              v37 = *(v33 + 16);
              v38 = *(v39 + 8);
              v23 = __OFSUB__(v38, v37);
              v36 = v38 - v37;
              if (v23)
              {
                goto LABEL_326;
              }
            }
          }

          else if (v35)
          {
            v23 = __OFSUB__(HIDWORD(v33), v33);
            v40 = HIDWORD(v33) - v33;
            if (v23)
            {
              goto LABEL_327;
            }

            v36 = v40;
          }

          else
          {
            v36 = BYTE6(v34);
          }

          v218 = v32;
          v41 = 7 - v36;
          if (__OFSUB__(7, v36))
          {
            goto LABEL_298;
          }

          if (v41 >= 1)
          {
            if (v41 <= 0xE)
            {
              v43 = 0;
              v44 = v212 & 0xF00000000000000 | (v41 << 48);
              v212 = v44;
            }

            else
            {
              sub_25F821E8C();
              swift_allocObject();
              v42 = sub_25F821E5C();
              if (v41 >= 0x7FFFFFFF)
              {
                sub_25F821F9C();
                v43 = swift_allocObject();
                *(v43 + 16) = 0;
                *(v43 + 24) = v41;
                v44 = v42 | 0x8000000000000000;
              }

              else
              {
                v43 = v41 << 32;
                v44 = v42 | 0x4000000000000000;
              }
            }

            *&v225[0] = v43;
            *(&v225[0] + 1) = v44;
            sub_25F7BD8C4(v225, 0);
            v46 = *(&v225[0] + 1);
            v45 = *&v225[0];
            swift_beginAccess();
            sub_25F82204C();
            swift_endAccess();
            sub_25F76D178(v45, v46);
            swift_beginAccess();
            v47 = sub_25F821FDC();
            swift_endAccess();
            v48 = v47 & 0xE0 | 7;
            swift_beginAccess();
            v50 = *(v31 + 16);
            v49 = *(v31 + 24);
            v51 = v49 >> 62;
            if ((v49 >> 62) > 1)
            {
              if (v51 != 2)
              {
                goto LABEL_382;
              }

              v53 = v49 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v50, v49);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (*(v50 + 16) > 0)
              {
                goto LABEL_333;
              }

              if (*(v50 + 24) < 1)
              {
                goto LABEL_335;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = *(v50 + 16);
                v55 = *(v50 + 24);
                if (sub_25F821E4C())
                {
                  if (__OFSUB__(v54, sub_25F821E7C()))
                  {
                    goto LABEL_364;
                  }

                  if (__OFSUB__(v55, v54))
                  {
                    goto LABEL_353;
                  }
                }

                else if (__OFSUB__(v55, v54))
                {
                  goto LABEL_353;
                }

                sub_25F821E8C();
                swift_allocObject();
                v61 = sub_25F821E2C();

                v53 = v61;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = *(v50 + 16);
                v63 = *(v50 + 24);
                sub_25F821F9C();
                v64 = swift_allocObject();
                *(v64 + 16) = v62;
                *(v64 + 24) = v63;

                v50 = v64;
              }

              sub_25F821E1C();
              v65 = sub_25F821E4C();
              if (!v65)
              {
                goto LABEL_384;
              }

              v66 = v65;
              v67 = sub_25F821E7C();
              if (__OFSUB__(0, v67))
              {
                goto LABEL_337;
              }

              *(v66 - v67) = v48;
              v52 = v53 | 0x8000000000000000;
            }

            else if (v51)
            {
              v56 = v49 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v50, v49);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (v50 >> 32 < 1 || v50 > 0)
              {
                goto LABEL_334;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {

                if (sub_25F821E4C() && __OFSUB__(v50, sub_25F821E7C()))
                {
                  goto LABEL_363;
                }

                sub_25F821E8C();
                swift_allocObject();
                v57 = sub_25F821E2C();

                v56 = v57;
              }

              sub_25F821E1C();
              v58 = sub_25F821E4C();
              if (!v58)
              {
                goto LABEL_383;
              }

              v59 = v58;
              v60 = sub_25F821E7C();
              if (__OFSUB__(0, v60))
              {
                goto LABEL_336;
              }

              *(v59 - v60) = v48;
              v52 = v56 | 0x4000000000000000;
            }

            else
            {
              sub_25F76D178(*(v31 + 16), *(v31 + 24));
              if (!BYTE6(v49))
              {
                goto LABEL_332;
              }

              v50 = v50 & 0xFFFFFFFFFFFFFF00 | v48;
              v52 = v206 & 0xF00000000000000 | v49 & 0xFFFFFFFFFFFFLL | (BYTE6(v49) << 48);
              v206 = v52;
            }

            *(v31 + 16) = v50;
            *(v31 + 24) = v52;
            swift_endAccess();
          }

          if (a2 >= 1.0)
          {
            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_301;
            }

            if (a2 <= -1.0)
            {
              goto LABEL_302;
            }

            v68 = v209;
            if (a2 >= 256.0)
            {
              goto LABEL_303;
            }
          }

          else
          {
            v68 = 1;
          }

          swift_beginAccess();
          v70 = *(v31 + 16);
          v69 = *(v31 + 24);
          v71 = v69 >> 62;
          if ((v69 >> 62) > 1)
          {
            if (v71 != 2)
            {
              goto LABEL_373;
            }

            v73 = v69 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v70, v69);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (*(v70 + 16) > 4)
            {
              goto LABEL_308;
            }

            if (*(v70 + 24) < 5)
            {
              goto LABEL_311;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = *(v70 + 16);
              v75 = *(v70 + 24);
              if (sub_25F821E4C())
              {
                if (__OFSUB__(v74, sub_25F821E7C()))
                {
                  goto LABEL_355;
                }

                if (__OFSUB__(v75, v74))
                {
                  goto LABEL_350;
                }
              }

              else if (__OFSUB__(v75, v74))
              {
                goto LABEL_350;
              }

              sub_25F821E8C();
              swift_allocObject();
              v81 = sub_25F821E2C();

              v73 = v81;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = *(v70 + 16);
              v83 = *(v70 + 24);
              sub_25F821F9C();
              v84 = swift_allocObject();
              *(v84 + 16) = v82;
              *(v84 + 24) = v83;

              v70 = v84;
            }

            sub_25F821E1C();
            v85 = sub_25F821E4C();
            if (!v85)
            {
              goto LABEL_375;
            }

            v86 = v85;
            v87 = sub_25F821E7C();
            if (__OFSUB__(4, v87))
            {
              goto LABEL_313;
            }

            *(v86 + 4 - v87) = v68;
            v72 = v73 | 0x8000000000000000;
          }

          else if (v71)
          {
            v76 = v69 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v70, v69);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (v70 >> 32 < 5 || v70 > 4)
            {
              goto LABEL_310;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25F821E4C() && __OFSUB__(v70, sub_25F821E7C()))
              {
                goto LABEL_354;
              }

              sub_25F821E8C();
              swift_allocObject();
              v77 = sub_25F821E2C();

              v76 = v77;
            }

            sub_25F821E1C();
            v78 = sub_25F821E4C();
            if (!v78)
            {
              goto LABEL_374;
            }

            v79 = v78;
            v80 = sub_25F821E7C();
            if (__OFSUB__(4, v80))
            {
              goto LABEL_312;
            }

            *(v79 + 4 - v80) = v68;
            v72 = v76 | 0x4000000000000000;
          }

          else
          {
            sub_25F76D178(*(v31 + 16), *(v31 + 24));
            if (BYTE6(v69) < 5uLL)
            {
              goto LABEL_309;
            }

            v70 = v70 & 0xFFFFFF00FFFFFFFFLL | (v68 << 32);
            v72 = v214 & 0xF00000000000000 | v69 & 0xFFFFFFFFFFFFLL | (BYTE6(v69) << 48);
            v214 = v72;
          }

          *(v31 + 16) = v70;
          *(v31 + 24) = v72;
          swift_endAccess();
          v88 = *(v31 + 16);
          v89 = *(v31 + 24);
          v90 = v89 >> 62;
          if ((v89 >> 62) > 1)
          {
            if (v90 == 2)
            {
              v93 = v88 + 16;
              v91 = *(v88 + 16);
              v92 = *(v93 + 8);
              v23 = __OFSUB__(v92, v91);
              v88 = v92 - v91;
              if (v23)
              {
                goto LABEL_329;
              }
            }

            else
            {
              v88 = 0;
            }
          }

          else if (v90)
          {
            v23 = __OFSUB__(HIDWORD(v88), v88);
            LODWORD(v88) = HIDWORD(v88) - v88;
            if (v23)
            {
              goto LABEL_328;
            }

            v88 = v88;
          }

          else
          {
            v88 = BYTE6(v89);
          }

          v94 = 7 - v88;
          if (__OFSUB__(7, v88))
          {
            goto LABEL_299;
          }

          if (v94 >= 1)
          {
            if (v94 <= 0xE)
            {
              v96 = 0;
              v97 = v211 & 0xF00000000000000 | (v94 << 48);
              v211 = v97;
            }

            else
            {
              sub_25F821E8C();
              swift_allocObject();
              v95 = sub_25F821E5C();
              if (v94 >= 0x7FFFFFFF)
              {
                sub_25F821F9C();
                v96 = swift_allocObject();
                *(v96 + 16) = 0;
                *(v96 + 24) = v94;
                v97 = v95 | 0x8000000000000000;
              }

              else
              {
                v96 = v94 << 32;
                v97 = v95 | 0x4000000000000000;
              }
            }

            *&v225[0] = v96;
            *(&v225[0] + 1) = v97;
            sub_25F7BD8C4(v225, 0);
            v99 = *(&v225[0] + 1);
            v98 = *&v225[0];
            swift_beginAccess();
            sub_25F82204C();
            swift_endAccess();
            sub_25F76D178(v98, v99);
            swift_beginAccess();
            v100 = sub_25F821FDC();
            swift_endAccess();
            v101 = v100 & 0xE0 | 7;
            swift_beginAccess();
            v103 = *(v31 + 16);
            v102 = *(v31 + 24);
            v104 = v102 >> 62;
            if ((v102 >> 62) > 1)
            {
              if (v104 != 2)
              {
                goto LABEL_385;
              }

              v106 = v102 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v103, v102);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (*(v103 + 16) > 0)
              {
                goto LABEL_339;
              }

              if (*(v103 + 24) < 1)
              {
                goto LABEL_341;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v107 = *(v103 + 16);
                v108 = *(v103 + 24);
                if (sub_25F821E4C())
                {
                  if (__OFSUB__(v107, sub_25F821E7C()))
                  {
                    goto LABEL_366;
                  }

                  if (__OFSUB__(v108, v107))
                  {
                    goto LABEL_356;
                  }
                }

                else if (__OFSUB__(v108, v107))
                {
                  goto LABEL_356;
                }

                sub_25F821E8C();
                swift_allocObject();
                v114 = sub_25F821E2C();

                v106 = v114;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = *(v103 + 16);
                v116 = *(v103 + 24);
                sub_25F821F9C();
                v117 = swift_allocObject();
                *(v117 + 16) = v115;
                *(v117 + 24) = v116;

                v103 = v117;
              }

              sub_25F821E1C();
              v118 = sub_25F821E4C();
              if (!v118)
              {
                goto LABEL_387;
              }

              v119 = v118;
              v120 = sub_25F821E7C();
              if (__OFSUB__(0, v120))
              {
                goto LABEL_343;
              }

              *(v119 - v120) = v101;
              v105 = v106 | 0x8000000000000000;
            }

            else if (v104)
            {
              v109 = v102 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v103, v102);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (v103 >> 32 < 1 || v103 > 0)
              {
                goto LABEL_340;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {

                if (sub_25F821E4C() && __OFSUB__(v103, sub_25F821E7C()))
                {
                  goto LABEL_365;
                }

                sub_25F821E8C();
                swift_allocObject();
                v110 = sub_25F821E2C();

                v109 = v110;
              }

              sub_25F821E1C();
              v111 = sub_25F821E4C();
              if (!v111)
              {
                goto LABEL_386;
              }

              v112 = v111;
              v113 = sub_25F821E7C();
              if (__OFSUB__(0, v113))
              {
                goto LABEL_342;
              }

              *(v112 - v113) = v101;
              v105 = v109 | 0x4000000000000000;
            }

            else
            {
              sub_25F76D178(*(v31 + 16), *(v31 + 24));
              if (!BYTE6(v102))
              {
                goto LABEL_338;
              }

              v103 = v103 & 0xFFFFFFFFFFFFFF00 | v101;
              v105 = v205 & 0xF00000000000000 | v102 & 0xFFFFFFFFFFFFLL | (BYTE6(v102) << 48);
              v205 = v105;
            }

            *(v31 + 16) = v103;
            *(v31 + 24) = v105;
            swift_endAccess();
          }

          if (a1 >= 1.0)
          {
            if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_304;
            }

            if (a1 <= -1.0)
            {
              goto LABEL_305;
            }

            v121 = v208;
            if (a1 >= 256.0)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v121 = 1;
          }

          swift_beginAccess();
          v123 = *(v31 + 16);
          v122 = *(v31 + 24);
          v124 = v122 >> 62;
          if ((v122 >> 62) > 1)
          {
            if (v124 != 2)
            {
              goto LABEL_376;
            }

            v126 = v122 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v123, v122);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (*(v123 + 16) > 5)
            {
              goto LABEL_315;
            }

            if (*(v123 + 24) < 6)
            {
              goto LABEL_317;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = *(v123 + 16);
              v128 = *(v123 + 24);
              if (sub_25F821E4C())
              {
                if (__OFSUB__(v127, sub_25F821E7C()))
                {
                  goto LABEL_358;
                }

                if (__OFSUB__(v128, v127))
                {
                  goto LABEL_351;
                }
              }

              else if (__OFSUB__(v128, v127))
              {
                goto LABEL_351;
              }

              sub_25F821E8C();
              swift_allocObject();
              v134 = sub_25F821E2C();

              v126 = v134;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = *(v123 + 16);
              v136 = *(v123 + 24);
              sub_25F821F9C();
              v137 = swift_allocObject();
              *(v137 + 16) = v135;
              *(v137 + 24) = v136;

              v123 = v137;
            }

            sub_25F821E1C();
            v138 = sub_25F821E4C();
            if (!v138)
            {
              goto LABEL_378;
            }

            v139 = v138;
            v140 = sub_25F821E7C();
            if (__OFSUB__(5, v140))
            {
              goto LABEL_319;
            }

            *(v139 + 5 - v140) = v121;
            v125 = v126 | 0x8000000000000000;
          }

          else if (v124)
          {
            v129 = v122 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v123, v122);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (v123 >> 32 < 6 || v123 > 5)
            {
              goto LABEL_316;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25F821E4C() && __OFSUB__(v123, sub_25F821E7C()))
              {
                goto LABEL_357;
              }

              sub_25F821E8C();
              swift_allocObject();
              v130 = sub_25F821E2C();

              v129 = v130;
            }

            sub_25F821E1C();
            v131 = sub_25F821E4C();
            if (!v131)
            {
              goto LABEL_377;
            }

            v132 = v131;
            v133 = sub_25F821E7C();
            if (__OFSUB__(5, v133))
            {
              goto LABEL_318;
            }

            *(v132 + 5 - v133) = v121;
            v125 = v129 | 0x4000000000000000;
          }

          else
          {
            sub_25F76D178(*(v31 + 16), *(v31 + 24));
            if (BYTE6(v122) < 6uLL)
            {
              goto LABEL_314;
            }

            v123 = v123 & 0xFFFF00FFFFFFFFFFLL | (v121 << 40);
            v125 = v213 & 0xF00000000000000 | v122 & 0xFFFFFFFFFFFFLL | (BYTE6(v122) << 48);
            v213 = v125;
          }

          *(v31 + 16) = v123;
          *(v31 + 24) = v125;
          swift_endAccess();
          v141 = *(v31 + 16);
          v142 = *(v31 + 24);
          v143 = v142 >> 62;
          if ((v142 >> 62) > 1)
          {
            if (v143 == 2)
            {
              v146 = v141 + 16;
              v144 = *(v141 + 16);
              v145 = *(v146 + 8);
              v23 = __OFSUB__(v145, v144);
              v141 = v145 - v144;
              if (v23)
              {
                goto LABEL_331;
              }
            }

            else
            {
              v141 = 0;
            }
          }

          else if (v143)
          {
            v23 = __OFSUB__(HIDWORD(v141), v141);
            LODWORD(v141) = HIDWORD(v141) - v141;
            if (v23)
            {
              goto LABEL_330;
            }

            v141 = v141;
          }

          else
          {
            v141 = BYTE6(v142);
          }

          v147 = 7 - v141;
          if (__OFSUB__(7, v141))
          {
            goto LABEL_300;
          }

          if (v147 >= 1)
          {
            if (v147 <= 0xE)
            {
              v149 = 0;
              v150 = v210 & 0xF00000000000000 | (v147 << 48);
              v210 = v150;
            }

            else
            {
              sub_25F821E8C();
              swift_allocObject();
              v148 = sub_25F821E5C();
              if (v147 >= 0x7FFFFFFF)
              {
                sub_25F821F9C();
                v149 = swift_allocObject();
                *(v149 + 16) = 0;
                *(v149 + 24) = v147;
                v150 = v148 | 0x8000000000000000;
              }

              else
              {
                v149 = v147 << 32;
                v150 = v148 | 0x4000000000000000;
              }
            }

            *&v225[0] = v149;
            *(&v225[0] + 1) = v150;
            sub_25F7BD8C4(v225, 0);
            v152 = *(&v225[0] + 1);
            v151 = *&v225[0];
            swift_beginAccess();
            sub_25F82204C();
            swift_endAccess();
            sub_25F76D178(v151, v152);
            swift_beginAccess();
            v153 = sub_25F821FDC();
            swift_endAccess();
            v154 = v153 & 0xE0 | 7;
            swift_beginAccess();
            v156 = *(v31 + 16);
            v155 = *(v31 + 24);
            v157 = v155 >> 62;
            if ((v155 >> 62) > 1)
            {
              if (v157 != 2)
              {
                goto LABEL_388;
              }

              v159 = v155 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v156, v155);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (*(v156 + 16) > 0)
              {
                goto LABEL_345;
              }

              if (*(v156 + 24) < 1)
              {
                goto LABEL_347;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v160 = *(v156 + 16);
                v161 = *(v156 + 24);
                if (sub_25F821E4C())
                {
                  if (__OFSUB__(v160, sub_25F821E7C()))
                  {
                    goto LABEL_368;
                  }

                  if (__OFSUB__(v161, v160))
                  {
                    goto LABEL_360;
                  }
                }

                else if (__OFSUB__(v161, v160))
                {
                  goto LABEL_360;
                }

                sub_25F821E8C();
                swift_allocObject();
                v167 = sub_25F821E2C();

                v159 = v167;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v168 = *(v156 + 16);
                v169 = *(v156 + 24);
                sub_25F821F9C();
                v170 = swift_allocObject();
                *(v170 + 16) = v168;
                *(v170 + 24) = v169;

                v156 = v170;
              }

              sub_25F821E1C();
              v171 = sub_25F821E4C();
              if (!v171)
              {
                goto LABEL_390;
              }

              v172 = v171;
              v173 = sub_25F821E7C();
              if (__OFSUB__(0, v173))
              {
                goto LABEL_349;
              }

              *(v172 - v173) = v154;
              v158 = v159 | 0x8000000000000000;
            }

            else if (v157)
            {
              v162 = v155 & 0x3FFFFFFFFFFFFFFFLL;

              sub_25F76D178(v156, v155);
              *(v31 + 16) = xmmword_25F824200;
              sub_25F76D178(0, 0xC000000000000000);
              if (v156 >> 32 < 1 || v156 > 0)
              {
                goto LABEL_346;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {

                if (sub_25F821E4C() && __OFSUB__(v156, sub_25F821E7C()))
                {
                  goto LABEL_367;
                }

                sub_25F821E8C();
                swift_allocObject();
                v163 = sub_25F821E2C();

                v162 = v163;
              }

              sub_25F821E1C();
              v164 = sub_25F821E4C();
              if (!v164)
              {
                goto LABEL_389;
              }

              v165 = v164;
              v166 = sub_25F821E7C();
              if (__OFSUB__(0, v166))
              {
                goto LABEL_348;
              }

              *(v165 - v166) = v154;
              v158 = v162 | 0x4000000000000000;
            }

            else
            {
              sub_25F76D178(*(v31 + 16), *(v31 + 24));
              if (!BYTE6(v155))
              {
                goto LABEL_344;
              }

              v156 = v156 & 0xFFFFFFFFFFFFFF00 | v154;
              v158 = v204 & 0xF00000000000000 | v155 & 0xFFFFFFFFFFFFLL | (BYTE6(v155) << 48);
              v204 = v158;
            }

            *(v31 + 16) = v156;
            *(v31 + 24) = v158;
            swift_endAccess();
          }

          swift_beginAccess();
          v175 = *(v31 + 16);
          v174 = *(v31 + 24);
          v176 = v174 >> 62;
          if ((v174 >> 62) > 1)
          {
            if (v176 != 2)
            {
              goto LABEL_379;
            }

            v180 = v174 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v175, v174);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (*(v175 + 16) > 6)
            {
              goto LABEL_321;
            }

            if (*(v175 + 24) < 7)
            {
              goto LABEL_323;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v182 = *(v175 + 16);
              v181 = *(v175 + 24);
              if (sub_25F821E4C())
              {
                if (__OFSUB__(v182, sub_25F821E7C()))
                {
                  goto LABEL_361;
                }

                if (__OFSUB__(v181, v182))
                {
                  goto LABEL_352;
                }
              }

              else if (__OFSUB__(v181, v182))
              {
                goto LABEL_352;
              }

              sub_25F821E8C();
              swift_allocObject();
              v188 = sub_25F821E2C();

              v180 = v188;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v189 = *(v175 + 16);
              v190 = *(v175 + 24);
              sub_25F821F9C();
              v191 = swift_allocObject();
              *(v191 + 16) = v189;
              *(v191 + 24) = v190;

              v175 = v191;
            }

            sub_25F821E1C();
            v192 = sub_25F821E4C();
            if (!v192)
            {
              goto LABEL_381;
            }

            v193 = v192;
            v194 = sub_25F821E7C();
            if (__OFSUB__(6, v194))
            {
              goto LABEL_325;
            }

            *(v193 + 6 - v194) = 0;
            v179 = v180 | 0x8000000000000000;
          }

          else
          {
            if (!v176)
            {
              v178 = *(v31 + 16);
              v177 = v178 >> 56;
              sub_25F76D178(v178, *(&v178 + 1));
              if (HIBYTE(v177) < 7u)
              {
                goto LABEL_320;
              }

              LOWORD(v224[0]) = v175;
              BYTE2(v224[0]) = BYTE2(v175);
              BYTE3(v224[0]) = BYTE3(v175);
              BYTE4(v224[0]) = BYTE4(v175);
              *(v224 + 5) = BYTE5(v175);
              *(v224 + 7) = v177;
              v179 = *(&v224[0] + 1) & 0xFFFFFFFFFFFFFFFLL;
              *(v31 + 16) = *&v224[0];
              goto LABEL_49;
            }

            v183 = v174 & 0x3FFFFFFFFFFFFFFFLL;

            sub_25F76D178(v175, v174);
            *(v31 + 16) = xmmword_25F824200;
            sub_25F76D178(0, 0xC000000000000000);
            if (v175 >> 32 < 7 || v175 > 6)
            {
              goto LABEL_322;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25F821E4C() && __OFSUB__(v175, sub_25F821E7C()))
              {
                goto LABEL_359;
              }

              sub_25F821E8C();
              swift_allocObject();
              v184 = sub_25F821E2C();

              v183 = v184;
            }

            sub_25F821E1C();
            v185 = sub_25F821E4C();
            if (!v185)
            {
              goto LABEL_380;
            }

            v186 = v185;
            v187 = sub_25F821E7C();
            if (__OFSUB__(6, v187))
            {
              goto LABEL_324;
            }

            *(v186 + 6 - v187) = 0;
            v179 = v183 | 0x4000000000000000;
          }

          *(v31 + 16) = v175;
LABEL_49:
          *(v31 + 24) = v179;
          swift_endAccess();

          ++v30;
          v28 = v216;
          if (v218 == v215)
          {
            goto LABEL_30;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      v195 = v15;
      v196 = sub_25F822A5C();
      v15 = v195;
      v16 = v196;
    }

    while (v196);
  }
}

unint64_t sub_25F7E50DC()
{
  result = qword_27FDB0C38;
  if (!qword_27FDB0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C38);
  }

  return result;
}

unint64_t sub_25F7E5134()
{
  result = qword_27FDB0C40;
  if (!qword_27FDB0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C40);
  }

  return result;
}

unint64_t sub_25F7E518C()
{
  result = qword_27FDB0C48;
  if (!qword_27FDB0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0C48);
  }

  return result;
}

uint64_t sub_25F7E51E0(uint64_t a1, uint64_t a2)
{
  result = sub_25F7E5238(&qword_27FDB0C50, a2, type metadata accessor for DisplayID.UnknownDataBlock, &protocol conformance descriptor for DisplayID.UnknownDataBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F7E5238(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F7E5280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25F7E52C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayID.PrimaryUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayID.PrimaryUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F7E554C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F7E5594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F7E55FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25F7E5644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F7E56AC()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDC0868);
  v1 = __swift_project_value_buffer(v0, qword_27FDC0868);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8, &qword_25F8243F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7E57DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10, &unk_25F823DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDC0880);
  v4 = __swift_project_value_buffer(v3, qword_27FDC0880);
  if (qword_27FDAF9C0 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82E0E0;
  v23 = 0x800000025F82E110;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDC0868);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20, &unk_25F823DC0);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18, &qword_25F824310);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000020;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD0000000000000D6;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20, &unk_25F823DC0);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10, &unk_25F823DB0);
}

uint64_t sub_25F7E5AD8()
{
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50, &qword_25F823FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F824220;
  if (qword_27FDAFB18 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1378;
  v9[2] = xmmword_27FDB1368;
  v9[3] = *&byte_27FDB1378;
  v2 = xmmword_27FDB1388;
  v9[4] = xmmword_27FDB1388;
  v4 = xmmword_27FDB1348;
  v3 = *&byte_27FDB1358;
  v9[0] = xmmword_27FDB1348;
  v9[1] = *&byte_27FDB1358;
  *(v0 + 64) = xmmword_27FDB1368;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  v7[0] = 1;
  v7[96] = 1;
  v7[88] = 1;
  v7[80] = 1;
  *(v0 + 192) = 5;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = 0;
  v5 = sub_25F792BC4(&unk_2871C3CB8);
  xmmword_27FDC0898 = 0u;
  unk_27FDC08A8 = 0u;
  xmmword_27FDC08B8 = 0u;
  byte_27FDC08C8 = 1;
  unk_27FDC08D0 = 0u;
  *(&xmmword_27FDC08D8 + 8) = 0u;
  unk_27FDC08F0 = 0u;
  byte_27FDC0900 = 0;
  byte_27FDC0901 = v8;
  xmmword_27FDC0908 = xmmword_25F824920;
  LOBYTE(xmmword_27FDC0918) = 1;
  *(&xmmword_27FDC0918 + 8) = xmmword_25F828500;
  word_27FDC0930 = 1;
  xmmword_27FDC0938 = xmmword_25F828510;
  qword_27FDC0948 = 0x3F40624DD2F1A9FCLL;
  unk_27FDC0950 = v0;
  LOBYTE(xmmword_27FDC0958) = 0;
  *(&xmmword_27FDC0958 + 1) = 0x400199999999999ALL;
  word_27FDC0968 = 1;
  unk_27FDC0970 = xmmword_25F825710;
  qword_27FDC0980 = v5;
  dword_27FDC0988 = 16843008;
  return sub_25F777DAC(v9, v7);
}