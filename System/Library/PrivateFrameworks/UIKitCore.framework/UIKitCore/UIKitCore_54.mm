uint64_t *sub_18904B9E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v3;
  *(a3 + 56) = v4;
  *(a3 + 64) = a2;
  return result;
}

uint64_t *static UICornerConfiguration.uniformEdges(topRadius:bottomRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = &unk_1EFAB8D80;
  return result;
}

uint64_t *static UICornerConfiguration.uniformEdges(leftRadius:rightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = &unk_1EFAB8DB0;
  return result;
}

uint64_t *static UICornerConfiguration.uniformTopRadius(_:bottomLeftRadius:bottomRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v5;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = &unk_1EFAB8DE0;
  return result;
}

uint64_t *static UICornerConfiguration.uniformBottomRadius(_:topLeftRadius:topRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  *a4 = *a2;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  *(a4 + 64) = &unk_1EFAB8E08;
  return result;
}

uint64_t *static UICornerConfiguration.uniformLeftRadius(_:topRightRadius:bottomRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = &unk_1EFAB8E30;
  return result;
}

uint64_t *static UICornerConfiguration.uniformRightRadius(_:topLeftRadius:bottomLeftRadius:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  *a4 = *a2;
  *(a4 + 8) = v6;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  *(a4 + 64) = &unk_1EFAB8E58;
  return result;
}

uint64_t UICornerConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v8 = v0[8];
  if (v1 == 255)
  {
    sub_18A4A88A8();
    if (v3 != 255)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_18A4A88A8();
    if (v5 != 255)
    {
      goto LABEL_15;
    }

LABEL_7:
    sub_18A4A88A8();
    if (v7 != 255)
    {
      goto LABEL_19;
    }

LABEL_8:
    result = sub_18A4A88A8();
    v11 = *(v8 + 16);
    if (!v11)
    {
      return result;
    }

    goto LABEL_23;
  }

  v9 = *v0;
  sub_18A4A88A8();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 0;
  }

  MEMORY[0x18CFE37E0]((v1 & 1) != 0);
  MEMORY[0x18CFE3810](v9);
  if (v3 == 255)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_18A4A88A8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x18CFE37E0]((v3 & 1) != 0);
  MEMORY[0x18CFE3810](v12);
  if (v5 == 255)
  {
    goto LABEL_7;
  }

LABEL_15:
  sub_18A4A88A8();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x18CFE37E0]((v5 & 1) != 0);
  MEMORY[0x18CFE3810](v13);
  if (v7 == 255)
  {
    goto LABEL_8;
  }

LABEL_19:
  sub_18A4A88A8();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x18CFE37E0]((v7 & 1) != 0);
  result = MEMORY[0x18CFE3810](v14);
  v11 = *(v8 + 16);
  if (v11)
  {
LABEL_23:
    result = 0;
    v15 = v8 + 32;
    do
    {
      v16 = *(v15 + 8 * result);
      v17 = result + 1;
      MEMORY[0x18CFE37E0]();
      MEMORY[0x18CFE37E0](v16);
      result = v17;
    }

    while (v11 != v17);
  }

  return result;
}

uint64_t UICornerConfiguration.description.getter()
{
  v1 = *v0;
  v2 = 0xEB00000000646569;
  v3 = *(v0 + 8);
  v4 = 0x6669636570736E75;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v20 = *(v0 + 32);
  v21 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A6A1670);
  if (v3 == 255)
  {
    v9 = 0x6669636570736E75;
    v11 = 0xEB00000000646569;
  }

  else
  {
    v9 = sub_188E6B000(v1, v3 & 1);
    v11 = v10;
  }

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6A16A0);
  if (v6 == 255)
  {
    v12 = 0x6669636570736E75;
    v14 = 0xEB00000000646569;
  }

  else
  {
    v12 = sub_188E6B000(v5, v6 & 1);
    v14 = v13;
  }

  MEMORY[0x18CFE22D0](v12, v14);

  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6A16C0);
  if (v7 == 255)
  {
    v15 = 0x6669636570736E75;
    v17 = 0xEB00000000646569;
  }

  else
  {
    v15 = sub_188E6B000(v20, v7 & 1);
    v17 = v16;
  }

  MEMORY[0x18CFE22D0](v15, v17);

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A16E0);
  if (v8 != 255)
  {
    v4 = sub_188E6B000(v21, v8 & 1);
    v2 = v18;
  }

  MEMORY[0x18CFE22D0](v4, v2);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0;
}

{
  v1 = 0xEB00000000646569;
  v2 = 0x6669636570736E75;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A6A1700);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6A1720);
  v3 = v0 + OBJC_IVAR___UICornerConfiguration_impl;
  v4 = *(v0 + OBJC_IVAR___UICornerConfiguration_impl + 8);
  if (v4 == 255)
  {
    v5 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  else
  {
    v5 = sub_188E6B000(*v3, v4 & 1);
    v7 = v6;
  }

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6A1740);
  v8 = *(v3 + 24);
  if (v8 == 255)
  {
    v9 = 0x6669636570736E75;
    v11 = 0xEB00000000646569;
  }

  else
  {
    v9 = sub_188E6B000(*(v3 + 16), v8 & 1);
    v11 = v10;
  }

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6A1760);
  v12 = *(v3 + 40);
  if (v12 == 255)
  {
    v13 = 0x6669636570736E75;
    v15 = 0xEB00000000646569;
  }

  else
  {
    v13 = sub_188E6B000(*(v3 + 32), v12 & 1);
    v15 = v14;
  }

  MEMORY[0x18CFE22D0](v13, v15);

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A1780);
  v16 = *(v3 + 56);
  if (v16 != 255)
  {
    v2 = sub_188E6B000(*(v3 + 48), v16 & 1);
    v1 = v17;
  }

  MEMORY[0x18CFE22D0](v2, v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t UICornerConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904BFBC()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904C000()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = -1;
    if (a2)
    {
LABEL_3:
      v6 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
      v7 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      v9 = -1;
      if (a4)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0;
      v11 = -1;
      goto LABEL_10;
    }
  }

  v6 = 0;
  v7 = -1;
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
  v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = *(a4 + OBJC_IVAR___UICornerRadius_impl);
  v11 = *(a4 + OBJC_IVAR___UICornerRadius_impl + 8);
LABEL_10:
  v12 = [objc_allocWithZone(UICornerConfiguration) init];
  v13 = &v12[OBJC_IVAR___UICornerConfiguration_impl];
  v19[0] = *&v12[OBJC_IVAR___UICornerConfiguration_impl];
  v15 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v14 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v16 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v20 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v19[2] = v15;
  v19[3] = v14;
  v19[1] = v16;
  *v13 = v4;
  v13[8] = v5;
  *(v13 + 2) = v6;
  v13[24] = v7;
  *(v13 + 4) = v8;
  v13[40] = v9;
  *(v13 + 6) = v10;
  v13[56] = v11;
  *(v13 + 8) = MEMORY[0x1E69E7CC0];
  v17 = v12;
  sub_188E4342C(v19);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C2F4(double a1)
{
  v2 = [objc_allocWithZone(UICornerConfiguration) init];
  v3 = &v2[OBJC_IVAR___UICornerConfiguration_impl];
  v9[0] = *&v2[OBJC_IVAR___UICornerConfiguration_impl];
  v5 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v4 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v6 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v10 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v9[2] = v5;
  v9[3] = v4;
  v9[1] = v6;
  *v3 = a1;
  *(v3 + 8) = 0;
  v3[2] = a1;
  *(v3 + 24) = 0;
  v3[4] = a1;
  *(v3 + 40) = 0;
  v3[6] = a1;
  *(v3 + 56) = 0;
  *(v3 + 8) = MEMORY[0x1E69E7CC0];
  v7 = v2;
  sub_188E4342C(v9);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C408(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v5 = [objc_allocWithZone(UICornerConfiguration) init];
  v6 = &v5[OBJC_IVAR___UICornerConfiguration_impl];
  v12[0] = *&v5[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v7 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v9 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v13 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v12[2] = v8;
  v12[3] = v7;
  v12[1] = v9;
  *v6 = v3;
  v6[8] = v4;
  *(v6 + 2) = v3;
  v6[24] = v4;
  *(v6 + 4) = v3;
  v6[40] = v4;
  *(v6 + 6) = v3;
  v6[56] = v4;
  *(v6 + 8) = a2;
  v10 = v5;
  sub_188E4342C(v12);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
  v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  v6 = [objc_allocWithZone(UICornerConfiguration) init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v13[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v14 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v13[2] = v9;
  v13[3] = v8;
  v13[1] = v10;
  *v7 = v2;
  v7[8] = v3;
  *(v7 + 2) = v2;
  v7[24] = v3;
  *(v7 + 4) = v4;
  v7[40] = v5;
  *(v7 + 6) = v4;
  v7[56] = v5;
  *(v7 + 8) = &unk_1EFAB8EA8;
  v11 = v6;
  sub_188E4342C(v13);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C648(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
  v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  v6 = [objc_allocWithZone(UICornerConfiguration) init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v13[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v14 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v13[2] = v9;
  v13[3] = v8;
  v13[1] = v10;
  *v7 = v2;
  v7[8] = v3;
  *(v7 + 2) = v4;
  v7[24] = v5;
  *(v7 + 4) = v2;
  v7[40] = v3;
  *(v7 + 6) = v4;
  v7[56] = v5;
  *(v7 + 8) = &unk_1EFAB8ED8;
  v11 = v6;
  sub_188E4342C(v13);

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_18904C754(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, id))
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5(v8, v9);

  return v10;
}

uint64_t sub_18904C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v6;
  v11[8] = v7;
  *(v11 + 2) = v6;
  v11[24] = v7;
  *(v11 + 4) = v4;
  v11[40] = v5;
  *(v11 + 6) = v8;
  v11[56] = v9;
  *(v11 + 8) = &unk_1EFAB8F08;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v4;
  v11[8] = v5;
  *(v11 + 2) = v8;
  v11[24] = v9;
  *(v11 + 4) = v6;
  v11[40] = v7;
  *(v11 + 6) = v6;
  v11[56] = v7;
  *(v11 + 8) = &unk_1EFAB8F30;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v6;
  v11[8] = v7;
  *(v11 + 2) = v4;
  v11[24] = v5;
  *(v11 + 4) = v6;
  v11[40] = v7;
  *(v11 + 6) = v8;
  v11[56] = v9;
  *(v11 + 8) = &unk_1EFAB8F58;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v4;
  v11[8] = v5;
  *(v11 + 2) = v6;
  v11[24] = v7;
  *(v11 + 4) = v8;
  v11[40] = v9;
  *(v11 + 6) = v6;
  v11[56] = v7;
  *(v11 + 8) = &unk_1EFAB8F80;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_18904CCD8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, void *, void *))
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6(v10, a4, a5);

  return v13;
}

uint64_t sub_18904CD78(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(UICornerConfiguration) init];
  v5 = &v4[OBJC_IVAR___UICornerConfiguration_impl];
  v11[0] = *&v4[OBJC_IVAR___UICornerConfiguration_impl];
  v7 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v6 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v8 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v12 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v11[2] = v7;
  v11[3] = v6;
  v11[1] = v8;
  *v5 = a1;
  v5[8] = a2;
  *(v5 + 2) = a1;
  v5[24] = a2;
  *(v5 + 4) = a1;
  v5[40] = a2;
  *(v5 + 6) = a1;
  v5[56] = a2;
  *(v5 + 8) = MEMORY[0x1E69E7CC0];
  v9 = v4;
  sub_188E4342C(v11);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = (a2 << 63 >> 63) & v2;
  if (a2)
  {
    v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = -1;
  }

  v5 = v2 & (a2 << 62 >> 63);
  if ((a2 & 2) != 0)
  {
    v6 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v6 = -1;
  }

  v7 = v2 & (a2 << 61 >> 63);
  if ((a2 & 4) != 0)
  {
    v8 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = -1;
  }

  v9 = v2 & (a2 << 60 >> 63);
  if ((a2 & 8) != 0)
  {
    v10 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v10 = -1;
  }

  v11 = [objc_allocWithZone(UICornerConfiguration) init];
  v12 = &v11[OBJC_IVAR___UICornerConfiguration_impl];
  v18[0] = *&v11[OBJC_IVAR___UICornerConfiguration_impl];
  v14 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v13 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v15 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v19 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v18[2] = v14;
  v18[3] = v13;
  v18[1] = v15;
  *v12 = v3;
  v12[8] = v4;
  *(v12 + 2) = v5;
  v12[24] = v6;
  *(v12 + 4) = v7;
  v12[40] = v8;
  *(v12 + 6) = v9;
  v12[56] = v10;
  *(v12 + 8) = MEMORY[0x1E69E7CC0];
  v16 = v11;
  sub_188E4342C(v18);

  return swift_dynamicCastUnknownClassUnconditional();
}

void sub_18904D1AC(void *a1)
{
  v3 = (v1 + OBJC_IVAR___UICornerConfiguration_impl);
  v4 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 8);
  if (v4 == 255)
  {
    v6 = 0;
  }

  else
  {
    v5 = *v3;
    v6 = [objc_allocWithZone(UICornerRadius) init];
    v7 = &v6[OBJC_IVAR___UICornerRadius_impl];
    *v7 = v5;
    v7[8] = v4 & 1;
  }

  v8 = sub_18A4A7258();
  [a1 encodeObject:v6 forKey:v8];

  v9 = *(v3 + 24);
  if (v9 == 255)
  {
    v11 = 0;
  }

  else
  {
    v10 = v3[2];
    v11 = [objc_allocWithZone(UICornerRadius) init];
    v12 = &v11[OBJC_IVAR___UICornerRadius_impl];
    *v12 = v10;
    v12[8] = v9 & 1;
  }

  v13 = sub_18A4A7258();
  [a1 encodeObject:v11 forKey:v13];

  v14 = *(v3 + 40);
  if (v14 == 255)
  {
    v16 = 0;
  }

  else
  {
    v15 = v3[4];
    v16 = [objc_allocWithZone(UICornerRadius) init];
    v17 = &v16[OBJC_IVAR___UICornerRadius_impl];
    *v17 = v15;
    v17[8] = v14 & 1;
  }

  v18 = sub_18A4A7258();
  [a1 encodeObject:v16 forKey:v18];

  v19 = *(v3 + 56);
  if (v19 == 255)
  {
    v21 = 0;
  }

  else
  {
    v20 = v3[6];
    v21 = [objc_allocWithZone(UICornerRadius) init];
    v22 = &v21[OBJC_IVAR___UICornerRadius_impl];
    *v22 = v20;
    v22[8] = v19 & 1;
  }

  v23 = sub_18A4A7258();
  [a1 encodeObject:v21 forKey:v23];

  v24 = v3[8];
  v25 = *(v24 + 16);
  if (v25)
  {

    sub_18A4A8208();
    v26 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v26 += 8;
      --v25;
    }

    while (v25);
  }

  sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v27 = sub_18A4A7518();

  v28 = sub_18A4A7258();
  [a1 encodeObject:v27 forKey:v28];
}

uint64_t UICornerConfiguration.hash.getter()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t UICornerConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v36);
  if (!v37)
  {
    sub_188A553EC(v36);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v3 = v35;
  v4 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 16);
  v5 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 48);
  v26 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 32);
  v27 = v5;
  v28 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 64);
  v6 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 16);
  v25[0] = *(v1 + OBJC_IVAR___UICornerConfiguration_impl);
  v25[1] = v6;
  v7 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 48);
  v22 = v26;
  v23 = v7;
  v24 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 64);
  v20 = v25[0];
  v21 = v4;
  v29[0] = *&v35[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v9 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v10 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v30 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v29[2] = v9;
  v29[3] = v10;
  v29[1] = v8;
  v11 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v17 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v18 = v11;
  v19 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v12 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v15 = *&v35[OBJC_IVAR___UICornerConfiguration_impl];
  v16 = v12;
  v13 = _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(&v20, &v15);
  sub_188E41F80(v25, v33);
  sub_188E41F80(v29, v33);

  v31[2] = v17;
  v31[3] = v18;
  v32 = v19;
  v31[0] = v15;
  v31[1] = v16;
  sub_188E4342C(v31);
  v33[2] = v22;
  v33[3] = v23;
  v34 = v24;
  v33[0] = v20;
  v33[1] = v21;
  sub_188E4342C(v33);
  return v13 & 1;
}

uint64_t _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  if (v4 == 255)
  {
    if (v12 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == 255)
    {
      return 0;
    }

    if (v4)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (*a1 != *a2)
    {
      return 0;
    }
  }

  if (v6 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 255)
    {
      return 0;
    }

    if (v6)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    if (v5 != v13)
    {
      return 0;
    }
  }

  if (v8 == 255)
  {
    if (v16 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 255)
    {
      return 0;
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v7 != v15)
    {
      return 0;
    }
  }

  if (v10 == 255)
  {
    if (v18 == 255)
    {
      return sub_1890152AC(v11, v19);
    }
  }

  else if (v18 != 255)
  {
    if (v10)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v9 == v17)
    {
      return sub_1890152AC(v11, v19);
    }
  }

  return 0;
}

unint64_t sub_18904DC48()
{
  result = qword_1EA93ABC0;
  if (!qword_1EA93ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABC0);
  }

  return result;
}

uint64_t sub_18904DC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18904DCE4(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

id sub_18904DD58()
{
  type metadata accessor for UICornerRadius(0);
  v29 = sub_18A4A7C18();
  v30 = sub_18A4A7C18();
  v1 = sub_18A4A7C18();
  v2 = sub_18A4A7C18();
  sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v3 = sub_18A4A7C28();
  v31 = v0;
  if (v3)
  {
    v4 = v3;
    v27 = v1;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v6; i = v2)
    {
      v2 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = sub_188E48F84(v2, v4);
        }

        else
        {
          if (v2 >= *(v5 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v2 + 32);
        }

        v9 = v8;
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v11 = [v8 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_188E4C8BC(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_188E4C8BC((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        *&v7[8 * v13 + 32] = v11;
        ++v2;
        if (v10 == v6)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v6 = sub_18A4A7F68();
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v1 = v27;
    v2 = i;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v29)
  {
    v14 = *&v29[OBJC_IVAR___UICornerRadius_impl];
    v15 = v29[OBJC_IVAR___UICornerRadius_impl + 8];

    v16 = v30;
    if (v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
    v15 = -1;
    v16 = v30;
    if (v30)
    {
LABEL_24:
      v17 = *&v16[OBJC_IVAR___UICornerRadius_impl];
      v18 = v16[OBJC_IVAR___UICornerRadius_impl + 8];

      if (v1)
      {
        goto LABEL_25;
      }

LABEL_29:
      v19 = 0;
      v21 = -1;
      if (v2)
      {
        goto LABEL_26;
      }

LABEL_30:
      v22 = 0;
      v24 = -1;
      goto LABEL_31;
    }
  }

  v17 = 0;
  v18 = -1;
  if (!v1)
  {
    goto LABEL_29;
  }

LABEL_25:
  v19 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v20 = v1;
  v21 = *(v1 + OBJC_IVAR___UICornerRadius_impl + 8);

  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_26:
  v22 = *(v2 + OBJC_IVAR___UICornerRadius_impl);
  v23 = v2;
  v24 = *(v2 + OBJC_IVAR___UICornerRadius_impl + 8);

LABEL_31:
  v25 = &v31[OBJC_IVAR___UICornerConfiguration_impl];
  *v25 = v14;
  v25[8] = v15;
  *(v25 + 2) = v17;
  v25[24] = v18;
  *(v25 + 4) = v19;
  v25[40] = v21;
  *(v25 + 6) = v22;
  v25[56] = v24;
  *(v25 + 8) = v7;
  v32.receiver = v31;
  v32.super_class = UICornerConfiguration;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t _UIWindowSceneBackgroundPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_18904E180@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(_UIWindowSceneBackgroundPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ABD8, &qword_18A65F920);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

unint64_t sub_18904E1E4(uint64_t a1)
{
  result = sub_18904E20C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18904E20C()
{
  result = qword_1EA93ABE0;
  if (!qword_1EA93ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABE0);
  }

  return result;
}

unint64_t sub_18904E264()
{
  result = qword_1EA93ABE8;
  if (!qword_1EA93ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABE8);
  }

  return result;
}

unint64_t sub_18904E2BC()
{
  result = qword_1EA93ABF0;
  if (!qword_1EA93ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABF0);
  }

  return result;
}

uint64_t sub_18904E324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_189053460(&unk_1EA930C08, type metadata accessor for _MaterialRenderingMode, &unk_18A64AD00);
  return v5(&v8, &type metadata for _UITraitColorMaterialRenderingMode, &type metadata for _UITraitColorMaterialRenderingMode, &off_1EE439290, v6, a2, a3);
}

void sub_18904E400(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_18904E470()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1ED4A3620 = result;
  return result;
}

uint64_t sub_18904E4F4()
{
  if (qword_1ED48FCC0 != -1)
  {
    swift_once();
  }

  return byte_1ED4A3620;
}

void sub_18904E544()
{
  v0 = sub_188B8AD8C(&unk_1EFAB8FA8);
  swift_arrayDestroy();
  qword_1EA930C40 = v0;
}

id sub_18904E590(void *a1, double a2)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v3 = 120.0;
  }

  else
  {
    v3 = 195.0;
  }

  if (a2 * 255.0 <= v3)
  {
    v4 = &selRef_whiteColor;
  }

  else
  {
    v4 = &selRef_blackColor;
  }

  v5 = [objc_opt_self() *v4];

  return v5;
}

void sub_18904E7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660, &unk_18A64D440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64FD70;
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = [v2 _systemColorName];

  v4 = sub_18A4A7288();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = [v1 secondaryLabelColor];
  v8 = [v7 _systemColorName];

  v9 = sub_18A4A7288();
  v11 = v10;

  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = [v1 tertiaryLabelColor];
  v13 = [v12 _systemColorName];

  v14 = sub_18A4A7288();
  v16 = v15;

  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = [v1 quaternaryLabelColor];
  v18 = [v17 _systemColorName];

  v19 = sub_18A4A7288();
  v21 = v20;

  *(inited + 80) = v19;
  *(inited + 88) = v21;
  v22 = [v1 systemFillColor];
  v23 = [v22 _systemColorName];

  v24 = sub_18A4A7288();
  v26 = v25;

  *(inited + 96) = v24;
  *(inited + 104) = v26;
  v27 = [v1 secondarySystemFillColor];
  v28 = [v27 _systemColorName];

  v29 = sub_18A4A7288();
  v31 = v30;

  *(inited + 112) = v29;
  *(inited + 120) = v31;
  v32 = [v1 tertiarySystemFillColor];
  v33 = [v32 _systemColorName];

  v34 = sub_18A4A7288();
  v36 = v35;

  *(inited + 128) = v34;
  *(inited + 136) = v36;
  v37 = [v1 quaternarySystemFillColor];
  v38 = [v37 _systemColorName];

  v39 = sub_18A4A7288();
  v41 = v40;

  *(inited + 144) = v39;
  *(inited + 152) = v41;
  v42 = sub_188B8AD8C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  qword_1ED48C4E8 = v42;
}

void sub_18904EAF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660, &unk_18A64D440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A65FA30;
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  v3 = [v2 _systemColorName];

  v50 = v3;
  *(inited + 32) = sub_18A4A7288();
  *(inited + 40) = v4;
  v5 = [v1 systemGroupedBackgroundColor];
  v6 = [v5 _systemColorName];

  v49 = v6;
  *(inited + 48) = sub_18A4A7288();
  *(inited + 56) = v7;
  v8 = [v1 secondarySystemBackgroundColor];
  v9 = [v8 _systemColorName];

  v48 = v9;
  *(inited + 64) = sub_18A4A7288();
  *(inited + 72) = v10;
  v11 = [v1 secondarySystemGroupedBackgroundColor];
  v12 = [v11 _systemColorName];

  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v13;
  v14 = [v1 tertiarySystemBackgroundColor];
  v15 = [v14 _systemColorName];

  *(inited + 96) = sub_18A4A7288();
  *(inited + 104) = v16;
  v17 = [v1 tertiarySystemGroupedBackgroundColor];
  v18 = [v17 _systemColorName];

  *(inited + 112) = sub_18A4A7288();
  *(inited + 120) = v19;
  v20 = [v1 groupTableViewBackgroundColor];
  v21 = [v20 _systemColorName];

  *(inited + 128) = sub_18A4A7288();
  *(inited + 136) = v22;
  v23 = [v1 tableBackgroundColor];
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = v23;
  v25 = [v23 _systemColorName];

  *(inited + 144) = sub_18A4A7288();
  *(inited + 152) = v26;
  v27 = [v1 tableCellPlainBackgroundColor];
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v27;
  v29 = [v27 _systemColorName];

  *(inited + 160) = sub_18A4A7288();
  *(inited + 168) = v30;
  v31 = [v1 tableCellGroupedBackgroundColor];
  if (v31)
  {
    v32 = v31;

    v33 = [v32 _systemColorName];
    v34 = sub_18A4A7288();
    v36 = v35;

    *(inited + 176) = v34;
    *(inited + 184) = v36;
    v37 = [v1 tableCellPlainSelectedBackgroundColor];
    v38 = [v37 _systemColorName];

    v39 = sub_18A4A7288();
    v41 = v40;

    *(inited + 192) = v39;
    *(inited + 200) = v41;
    v42 = [v1 tableCellGroupedSelectedBackgroundColor];
    v43 = [v42 _systemColorName];

    v44 = sub_18A4A7288();
    v46 = v45;

    *(inited + 208) = v44;
    *(inited + 216) = v46;
    v47 = sub_188B8AD8C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    qword_1EA93AC00 = v47;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_18904EF30()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_18904EFA8(uint64_t a1)
{
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  return sub_18A4A71A8();
}

uint64_t sub_18904F004()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_18904F078(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_18A4A86C8() & 1) != 0)
  {
    return MEMORY[0x18CFDDCF0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_18904F10C()
{
  v0 = sub_18A4A6228();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A6238();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18A4A6248();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E6981AD8] || v8 == *MEMORY[0x1E6981AE8])
  {
    (*(v5 + 96))(v7, v4);
    v10 = v7[1];
    v23 = *v7;
    v22 = v10;
    v11 = v7[3];
    v21 = v7[2];
    v20 = v11;
    v19 = v7[4];
    v12 = objc_opt_self();
    v30 = v23;
    *v31 = v22;
    *&v31[16] = v21;
    v32 = v20;
    v33 = v19;
    return [v12 _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
  }

  else if (v8 == *MEMORY[0x1E6981AE0])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    sub_18A4A6218();
    sub_18A4A61F8();
    v15 = v14;
    v16 = sub_18A4A6208();
    v17 = objc_opt_self();
    v24 = v30;
    v25 = *v31;
    v26 = *&v31[8];
    v27 = *&v31[24];
    v28 = v32;
    v29 = v33;
    v18 = [v17 _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
    (*(v1 + 8))(v3, v0);
    return v18;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

void sub_18904F42C(void *a1, void *a2, uint64_t a3, double a4)
{
  v7 = sub_18A4A6B98();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_18A4A4428();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_18A4A6258();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_18A4A5318();
  v49 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v48 - v14;
  v48 = [a1 userInterfaceStyle];
  CAColorMatrixMakeColorSourceOver();
  v63 = [objc_opt_self() _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
  v15 = [a2 resolvedColorWithTraitCollection_];
  v16 = sub_188B56C3C(v15);
  v18 = v17;
  v20 = v19;

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v65[0] = v16;
    v65[1] = v18;
    v66 = 2143289344;
    v21 = sub_18A4A2DB8();
    v61 = &v48;
    v22 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v21);
    v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
    v60 = &v48;
    MEMORY[0x1EEE9AC00](v25 - 8);
    v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v28);
    v30 = &v48 - v29;
    v31 = v22;
    sub_188A3F29C(a3, &v48 - v29, &qword_1EA935D70, &qword_18A654CE0);
    v32 = *(v22 + 48);
    if (v32(v30, 1, v21) == 1)
    {
      v33 = v31;
      v34 = sub_188B56DB8();
      if (v34)
      {
        v35 = v34;
        (*(v33 + 16))(v27, v34 + *((*MEMORY[0x1E69E7D40] & *v34) + 0x60), v21);

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      (*(v33 + 56))(v27, v36, 1, v21);
      v31 = v33;
      if (v32(v30, 1, v21) != 1)
      {
        sub_188A3F5FC(v30, &qword_1EA935D70, &qword_18A654CE0);
      }
    }

    else
    {
      (*(v31 + 32))(v27, v30, v21);
      (*(v31 + 56))(v27, 0, 1, v21);
    }

    if (v32(v27, 1, v21) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA935D70, &qword_18A654CE0);
    }

    else
    {
      v37 = v24;
      (*(v31 + 32))(v24, v27, v21);
      v38 = v62;
      sub_188B0C0A4(a1);
      v39 = v55;
      v40 = MEMORY[0x1E697DBA8];
      if (v48 != 2)
      {
        v40 = MEMORY[0x1E697DBB8];
      }

      v41 = v52;
      v42 = v57;
      (*(v55 + 104))(v52, *v40, v57);
      v43 = v49;
      (*(v49 + 16))(v50, v38, v64);
      v44 = v31;
      v45 = v56;
      sub_18A4A6B58();
      v46 = v51;
      sub_18A4A2D98();
      (*(v58 + 8))(v45, v59);
      (*(v39 + 8))(v41, v42);
      v47 = sub_18904F10C();
      (*(v53 + 8))(v46, v54);
      (*(v43 + 8))(v62, v64);
      (*(v44 + 8))(v37, v21);
      if (v47)
      {
      }
    }
  }
}

void sub_18904FB90(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t *a5)
{
  v155 = a5;
  v145 = a3;
  v144 = a2;
  v146 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AC18, &qword_18A65FA98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v135 = (&v111 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v134 = (&v111 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AC20, &qword_18A65FAA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v143 = &v111 - v25;
  v141 = sub_18A4A6B98();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v128 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v111 - v28;
  v147 = sub_18A4A5318();
  v153 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v142 = &v111 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v152 = &v111 - v34;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_188E36ADC;
  *(v35 + 24) = 0;
  v162 = sub_188EB96AC;
  v163 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v159 = 1107296256;
  v160 = sub_188A7AC24;
  v161 = &block_descriptor_28;
  v36 = _Block_copy(&aBlock);

  v157 = [a4 traitCollectionByModifyingTraits_];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_37;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = sub_188E36AE0;
  *(v37 + 24) = 0;
  v162 = sub_188EB96AC;
  v163 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v159 = 1107296256;
  v160 = sub_188A7AC24;
  v161 = &block_descriptor_35_3;
  v38 = _Block_copy(&aBlock);

  v154 = [a4 traitCollectionByModifyingTraits_];
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v131 = v30;
  v123 = v13;
  v124 = v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  v151 = &v111;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18A4A2DB8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 16);
  v139 = v44 + 16;
  v138 = v45;
  v45(v42, v155, v43);
  v46 = *(v44 + 56);
  v47 = (v46)(v42, 0, 1, v43);
  v150 = &v111;
  MEMORY[0x1EEE9AC00](v47);
  v129 = v48;
  v148 = &v111 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v130 = v41;
  MEMORY[0x1EEE9AC00](v50);
  v149 = v42;
  sub_188A3F29C(v42, v42, &qword_1EA935D70, &qword_18A654CE0);
  v51 = *(v44 + 48);
  v156 = v44 + 48;
  if (v51(v42, 1, v43) == 1)
  {
    v52 = v51;
    v53 = v43;
    v54 = sub_188B56DB8();
    if (v54)
    {
      v55 = v54;
      v138(v42, v54 + *((*MEMORY[0x1E69E7D40] & *v54) + 0x60), v53);

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v46(v42, v56, 1, v53);
    v57 = v52(v42, 1, v53);
    v43 = v53;
    v51 = v52;
    if (v57 != 1)
    {
      sub_188A3F5FC(v42, &qword_1EA935D70, &qword_18A654CE0);
    }
  }

  else
  {
    (*(v44 + 32))(v42, v42, v43);
    v46(v42, 0, 1, v43);
  }

  if (v51(v42, 1, v43) == 1)
  {

    sub_188A3F5FC(v149, &qword_1EA935D70, &qword_18A654CE0);
    sub_188A3F5FC(v42, &qword_1EA935D70, &qword_18A654CE0);
    return;
  }

  v121 = v46;
  v122 = v44 + 56;
  v127 = v44;
  v60 = *(v44 + 32);
  v58 = v44 + 32;
  v59 = v60;
  v136 = v43;
  v60(v148, v42, v43);
  v61 = v152;
  sub_188B0C0A4(v157);
  v62 = *(v153 + 16);
  v63 = v147;
  v119 = v153 + 16;
  v117 = v62;
  v62(v142, v61, v147);
  v64 = v137;
  sub_18A4A6B58();
  v65 = sub_18A4A6CF8();
  v66 = *(v65 - 8);
  v67 = *(v66 + 16);
  v68 = v143;
  v116 = v66 + 16;
  v115 = v67;
  v67(v143, v144, v65);
  v69 = *(v66 + 56);
  v118 = v65;
  v114 = v69;
  v69(v68, 0, 1, v65);
  sub_18A4A6B88();
  if (v145)
  {
    v70 = v132;
    sub_18A4A2D88();
    v71 = v70;
    v72 = &v164;
  }

  else
  {
    v70 = v133;
    MEMORY[0x18CFDDCC0](v146, v64);
    v71 = v70;
    v72 = &v165;
  }

  v73 = *(v72 - 32);
  sub_188A3F29C(v71, v73, &qword_1EA93AC18, &qword_18A65FA98);
  v74 = sub_18A4A6258();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {

    sub_188A3F5FC(v70, &qword_1EA93AC18, &qword_18A65FA98);
    (*(v140 + 8))(v64, v141);
    (*(v153 + 8))(v152, v63);
    (*(v127 + 8))(v148, v136);
    sub_188A3F5FC(v149, &qword_1EA935D70, &qword_18A654CE0);
    sub_188A3F5FC(v73, &qword_1EA93AC18, &qword_18A65FA98);
    return;
  }

  v112 = v59;
  v113 = v58;
  v120 = sub_18904F10C();
  sub_188A3F5FC(v70, &qword_1EA93AC18, &qword_18A65FA98);
  v76 = *(v140 + 8);
  v76(v64, v141);
  v77 = *(v153 + 8);
  v77(v152, v63);
  v78 = *(v127 + 8);
  v78(v148, v136);
  sub_188A3F5FC(v149, &qword_1EA935D70, &qword_18A654CE0);
  v79 = (*(v75 + 8))(v73, v74);
  v80 = v120;
  if (v120)
  {
    v134 = v76;
    v135 = v77;
    v137 = v78;
    v152 = &v111;
    v81 = v130;
    v82 = MEMORY[0x1EEE9AC00](v79);
    v83 = &v111 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = v136;
    (v138)(v83, v155, v136, v82);
    v85 = v121;
    v86 = (v121)(v83, 0, 1, v84);
    v155 = &v111;
    MEMORY[0x1EEE9AC00](v86);
    v148 = &v111 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = &v111;
    MEMORY[0x1EEE9AC00](v88);
    v89 = v83;
    v149 = &v111;
    MEMORY[0x1EEE9AC00](v90);
    v91 = v83;
    v151 = v83;
    sub_188A3F29C(v83, v83, &qword_1EA935D70, &qword_18A654CE0);
    if (v51(v83, 1, v84) == 1)
    {
      v92 = sub_188B56DB8();
      v93 = v131;
      if (v92)
      {
        v94 = v92;
        v95 = v136;
        v138(v89, v92 + *((*MEMORY[0x1E69E7D40] & *v92) + 0x60), v136);

        v96 = 0;
      }

      else
      {
        v96 = 1;
        v95 = v136;
      }

      v121(v89, v96, 1, v95);
      v84 = v95;
      if (v51(v91, 1, v95) != 1)
      {
        sub_188A3F5FC(v91, &qword_1EA935D70, &qword_18A654CE0);
      }
    }

    else
    {
      v112(v83, v83, v84);
      v85(v83, 0, 1, v84);
      v93 = v131;
    }

    if (v51(v89, 1, v84) == 1)
    {

      sub_188A3F5FC(v151, &qword_1EA935D70, &qword_18A654CE0);
      sub_188A3F5FC(v89, &qword_1EA935D70, &qword_18A654CE0);
      return;
    }

    v97 = v148;
    v112(v148, v89, v84);
    sub_188B0C0A4(v154);
    v98 = v93;
    v117(v142, v93, v147);
    v99 = v128;
    sub_18A4A6B58();
    v100 = v143;
    v101 = v118;
    v115(v143, v144, v118);
    v114(v100, 0, 1, v101);
    sub_18A4A6B88();
    if (v145)
    {
      v102 = v125;
      sub_18A4A2D88();
      v103 = v102;
      v104 = &v155;
    }

    else
    {
      v102 = v126;
      MEMORY[0x18CFDDCC0](v146, v99);
      v103 = v102;
      v104 = &v156;
    }

    v105 = *(v104 - 32);
    sub_188A3F29C(v103, v105, &qword_1EA93AC18, &qword_18A65FA98);
    v106 = sub_18A4A6258();
    v107 = *(v106 - 8);
    if ((*(v107 + 48))(v105, 1, v106) == 1)
    {

      sub_188A3F5FC(v102, &qword_1EA93AC18, &qword_18A65FA98);
      v134(v99, v141);
      v135(v98, v147);
      (v137)(v97, v136);
      sub_188A3F5FC(v151, &qword_1EA935D70, &qword_18A654CE0);
      sub_188A3F5FC(v105, &qword_1EA93AC18, &qword_18A65FA98);
      return;
    }

    v108 = sub_18904F10C();
    sub_188A3F5FC(v102, &qword_1EA93AC18, &qword_18A65FA98);
    v134(v99, v141);
    v135(v98, v147);
    (v137)(v97, v136);
    sub_188A3F5FC(v151, &qword_1EA935D70, &qword_18A654CE0);
    (*(v107 + 8))(v105, v106);
    v109 = v120;
    if (v108)
    {
      v110 = [objc_opt_self() _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];
      [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];

      return;
    }
  }
}

id sub_189050FD0(void *a1, char *a2)
{
  v4 = sub_18A4A6CF8();
  v5 = *(v4 - 1);
  v278 = v4;
  v279 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v277 = (&v269 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = _s8CacheKeyVMa(0);
  v8 = *(v7 - 8);
  v287 = v7;
  v288 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v269 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v269 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v280 = (&v269 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93AC08, &unk_18A65FA80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v283 = &v269 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v269 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v269 - v22;
  v24 = sub_18A4A2DB8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v269 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v269 - v29;
  v284 = a2;
  v31 = sub_188B56DB8();
  if (!v31)
  {
    return 0;
  }

  v272 = v10;
  v276 = v13;
  v286 = v23;
  v32 = a1;
  v33 = v25 + 16;
  v34 = *(v25 + 16);
  v35 = v31;
  v34(v30, v31 + *((*MEMORY[0x1E69E7D40] & *v31) + 0x60), v24);

  v281 = v25;
  (*(v25 + 32))(v27, v30, v24);
  v274 = v32;
  v36 = [v32 _systemColorName];
  v37 = sub_18A4A7288();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v282 = v24;
  if (v40)
  {
    v41 = v24;
    v42 = v286;
    v43 = v287;
    v44 = v33;
    v34(v286 + *(v287 + 20), v27, v41);
    *v42 = v37;
    v42[1] = v39;
    v45 = v288;
    (*(v288 + 56))(v42, 0, 1, v43);
    v46 = v39;
  }

  else
  {
    v44 = v33;
    v46 = v39;
    v45 = v288;
    (*(v288 + 56))(v286, 1, 1, v287);
  }

  v47 = v34;
  if (qword_1ED48C4E0 != -1)
  {
    swift_once();
  }

  v48 = v46;
  v49 = sub_188A551E4(v37, v46, qword_1ED48C4E8);
  v285 = v27;
  v275 = v37;
  v50 = v44;
  v273 = v47;
  if (v49)
  {
    goto LABEL_10;
  }

  if (!_UIMaterialPresentationsEnabled())
  {
    goto LABEL_15;
  }

  if (qword_1EA931E68 != -1)
  {
    swift_once();
  }

  if (sub_188A551E4(v37, v46, qword_1EA93AC00))
  {
LABEL_10:
    v51 = 0;
    v52 = 1;
  }

  else
  {
LABEL_15:
    if (qword_1ED491B40 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v53 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    sub_18901BD20(&type metadata for _UITraitColorMaterialRenderingMode, sub_188EB2F58, 0);
    os_unfair_lock_unlock(v53[2]);
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
    v54 = sub_188A74A44();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v55 = [v284 _valueForNSIntegerTraitToken_];
    swift_unknownObjectRelease();
    if (v55 == 2)
    {
      v52 = 0;
      v51 = 1;
    }

    else
    {
      if (qword_1EA930C38 != -1)
      {
        swift_once();
      }

      v56 = qword_1EA930C40;
      v57 = [v274 _systemColorName];
      v58 = sub_18A4A7288();
      v60 = v59;

      v51 = sub_188A551E4(v58, v60, v56);

      v52 = 0;
    }

    v45 = v288;
  }

  sub_188A3F29C(v286, v20, &unk_1EA93AC08, &unk_18A65FA80);
  v63 = *(v45 + 48);
  v61 = v45 + 48;
  v62 = v63;
  if ((v63)(v20, 1, v287) == 1)
  {
    sub_188A3F5FC(v20, &unk_1EA93AC08, &unk_18A65FA80);
    v288 = v61;
    if (v52)
    {
      goto LABEL_27;
    }

LABEL_38:

    if ((v51 & 1) == 0)
    {
      v76 = 0;
      v103 = v281;
      goto LABEL_53;
    }

    v280 = v62;
    v62 = v282;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_188E36ADC;
    *(v77 + 24) = 0;
    v293 = sub_188A86D40;
    v294 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v290 = 1107296256;
    v278 = &v291;
    v291 = sub_188A7AC24;
    v292 = &block_descriptor_85;
    v78 = _Block_copy(&aBlock);

    v79 = [v284 traitCollectionByModifyingTraits_];
    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if (v78)
    {
      __break(1u);
    }

    else
    {
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
      v81 = MEMORY[0x1EEE9AC00](v80 - 8);
      v271 = v82;
      v48 = (&v269 - v82);
      v77 = v273;
      v273(&v269 - v82, v285, v62, v81);
      v275 = *(v281 + 56);
      v83 = (v275)(v48, 0, 1, v62);
      v279 = v50;
      v84 = v274;
      sub_18904F42C(v79, v274, v48, v83);
      v277 = v85;

      sub_188A3F5FC(v48, &qword_1EA935D70, &qword_18A654CE0);
      v86 = swift_allocObject();
      *(v86 + 16) = sub_188E36AE0;
      *(v86 + 24) = 0;
      v293 = sub_188EB96AC;
      v294 = v86;
      aBlock = MEMORY[0x1E69E9820];
      v290 = 1107296256;
      v291 = sub_188A7AC24;
      v292 = &block_descriptor_7_1;
      v87 = _Block_copy(&aBlock);

      v37 = [v284 traitCollectionByModifyingTraits_];
      _Block_release(v87);
      LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

      if ((v87 & 1) == 0)
      {
        v89 = MEMORY[0x1EEE9AC00](v88);
        v90 = (&v269 - v271);
        (v77)(&v269 - v271, v285, v62, v89);
        v91 = (v275)(v90, 0, 1, v62);
        sub_18904F42C(v37, v84, v90, v91);
        v93 = v92;

        sub_188A3F5FC(v90, &qword_1EA935D70, &qword_18A654CE0);
        v94 = objc_opt_self();
        v95 = v277;
        v96 = [v94 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

        v76 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
LABEL_51:
        v62 = v280;
        v103 = v281;
LABEL_53:
        v104 = v276;
        v71 = v283;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_92;
  }

  v37 = v280;
  sub_189053248(v20, v280);
  if (qword_1ED48C4D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v72 = off_1ED48C4D8;
  if (*(off_1ED48C4D8 + 2))
  {
    v73 = sub_188E8BC8C(v37);
    if (v74)
    {
      v75 = *(v72[7] + 8 * v73);
      swift_endAccess();
      v76 = v75;

      sub_1890532AC(v37);
      sub_188A3F5FC(v286, &unk_1EA93AC08, &unk_18A65FA80);
      (*(v281 + 8))(v285, v282);
      if ((v52 | v51))
      {
        return v76;
      }

      return 0;
    }
  }

  swift_endAccess();
  sub_1890532AC(v37);
  v288 = v61;
  if (!v52)
  {
    goto LABEL_38;
  }

LABEL_27:
  v37 = objc_opt_self();
  v64 = [v37 labelColor];
  v65 = [v64 _systemColorName];

  v66 = sub_18A4A7288();
  v68 = v67;

  if (v66 == v275 && v68 == v48)
  {
    v69 = v37;

    v70 = v285;
    v71 = v283;
LABEL_44:

    v99 = v278;
    v98 = v279;
    v100 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F20], v278);
    v101 = v284;
    sub_18904FB90(0, v100, 1, v284, v70);
    v76 = v102;
    (*(v98 + 8))(v100, v99);
    v103 = v281;
    v104 = v276;
    if (v76)
    {
      goto LABEL_54;
    }

    v280 = v62;
    v105 = v282;
    v278 = [v69 blackColor];
    v275 = [v69 whiteColor];
    v106 = swift_allocObject();
    *(v106 + 16) = sub_188E36ADC;
    *(v106 + 24) = 0;
    v293 = sub_188EB96AC;
    v294 = v106;
    aBlock = MEMORY[0x1E69E9820];
    v290 = 1107296256;
    v277 = &v291;
    v291 = sub_188A7AC24;
    v292 = &block_descriptor_14_4;
    v107 = _Block_copy(&aBlock);

    v48 = [v101 traitCollectionByModifyingTraits_];
    _Block_release(v107);
    LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

    if (v107)
    {
      __break(1u);
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
      v109 = MEMORY[0x1EEE9AC00](v108 - 8);
      v270 = v110;
      v111 = &v269 - v110;
      v112 = v273;
      v273(&v269 - v110, v285, v105, v109);
      v279 = v50;
      v271 = *(v281 + 56);
      v113 = (v271)(v111, 0, 1, v105);
      sub_18904F42C(v48, v278, v111, v113);
      v274 = v114;

      sub_188A3F5FC(v111, &qword_1EA935D70, &qword_18A654CE0);
      v48 = swift_allocObject();
      v48[2] = sub_188E36AE0;
      v48[3] = 0;
      v293 = sub_188EB96AC;
      v294 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v290 = 1107296256;
      v291 = sub_188A7AC24;
      v292 = &block_descriptor_21_1;
      v115 = _Block_copy(&aBlock);

      v69 = [v101 traitCollectionByModifyingTraits_];
      _Block_release(v115);
      LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

      if ((v115 & 1) == 0)
      {
        v117 = v275;
        v118 = v278;
        if (v275)
        {
          v119 = v275;
        }

        else
        {
          v119 = v278;
        }

        v120 = MEMORY[0x1EEE9AC00](v116);
        v121 = &v269 - v270;
        v122 = v282;
        v112(&v269 - v270, v285, v282, v120);
        v123 = (v271)(v121, 0, 1, v122);
        sub_18904F42C(v69, v119, v121, v123);
        v125 = v124;

        sub_188A3F5FC(v121, &qword_1EA935D70, &qword_18A654CE0);
        v126 = objc_opt_self();
        v127 = v274;
        v128 = [v126 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

        v76 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  v97 = sub_18A4A86C8();

  if (v97)
  {
    v69 = v37;
    v71 = v283;
    v70 = v285;
    goto LABEL_44;
  }

  v135 = [v37 secondaryLabelColor];
  v136 = [v135 _systemColorName];

  v137 = sub_18A4A7288();
  v139 = v138;

  if (v137 == v275 && v139 == v48)
  {

    v71 = v283;
    v140 = v284;
LABEL_67:

    v142 = MEMORY[0x1E6981F20];
LABEL_68:
    v144 = v278;
    v143 = v279;
    v145 = v277;
    (*(v279 + 104))(v277, *v142, v278);
    v146 = 1;
LABEL_69:
    sub_18904FB90(v146, v145, 1, v140, v285);
    v76 = v147;
    (*(v143 + 8))(v145, v144);
    v103 = v281;
    v104 = v276;
    goto LABEL_54;
  }

  v141 = sub_18A4A86C8();

  v140 = v284;
  if (v141)
  {
    v71 = v283;
    goto LABEL_67;
  }

  v148 = [v37 tertiaryLabelColor];
  v149 = [v148 _systemColorName];

  v150 = sub_18A4A7288();
  v152 = v151;

  if (v150 == v275 && v152 == v48)
  {

LABEL_74:
    v71 = v283;

    v144 = v278;
    v143 = v279;
    v145 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F20], v278);
    v146 = 2;
    goto LABEL_69;
  }

  v153 = sub_18A4A86C8();

  if (v153)
  {
    goto LABEL_74;
  }

  v154 = [v37 quaternaryLabelColor];
  v155 = [v154 _systemColorName];

  v156 = sub_18A4A7288();
  v158 = v157;

  if (v156 == v275 && v158 == v48)
  {

LABEL_79:
    v71 = v283;

    v144 = v278;
    v143 = v279;
    v145 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F20], v278);
    v146 = 3;
    goto LABEL_69;
  }

  v159 = sub_18A4A86C8();

  if (v159)
  {
    goto LABEL_79;
  }

  v160 = [v37 systemFillColor];
  v161 = [v160 _systemColorName];

  v162 = sub_18A4A7288();
  v164 = v163;

  if (v162 == v275 && v164 == v48)
  {

LABEL_84:
    v71 = v283;

    v144 = v278;
    v143 = v279;
    v145 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v146 = 0;
    goto LABEL_69;
  }

  v165 = sub_18A4A86C8();

  if (v165)
  {
    goto LABEL_84;
  }

  v166 = [v37 secondarySystemFillColor];
  v167 = [v166 _systemColorName];

  v168 = sub_18A4A7288();
  v170 = v169;

  v77 = v275;
  if (v168 == v275 && v170 == v48)
  {

LABEL_89:
    v71 = v283;

    v142 = MEMORY[0x1E6981F18];
    goto LABEL_68;
  }

  v171 = sub_18A4A86C8();

  if (v171)
  {
    goto LABEL_89;
  }

LABEL_92:
  v101 = v62;
  v69 = v37;
  v172 = [v37 tertiarySystemFillColor];
  v173 = [v172 _systemColorName];

  v174 = sub_18A4A7288();
  v176 = v175;

  if (v174 == v77 && v176 == v48)
  {
    goto LABEL_94;
  }

LABEL_97:
  v177 = sub_18A4A86C8();

  if (v177)
  {
    goto LABEL_98;
  }

  v185 = [v69 quaternarySystemFillColor];
  v186 = [v185 _systemColorName];

  v187 = sub_18A4A7288();
  v189 = v188;

  if (v187 == v275 && v189 == v48)
  {

LABEL_106:

    v179 = v278;
    v178 = v279;
    v180 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v181 = 3;
    goto LABEL_99;
  }

  v190 = sub_18A4A86C8();

  if (v190)
  {
    goto LABEL_106;
  }

  v191 = [v69 systemBackgroundColor];
  v192 = [v191 _systemColorName];

  v193 = sub_18A4A7288();
  v195 = v194;

  if (v193 == v275 && v195 == v48)
  {
    goto LABEL_109;
  }

  v196 = sub_18A4A86C8();

  if (v196)
  {
    goto LABEL_111;
  }

  v197 = [v69 systemGroupedBackgroundColor];
  v198 = [v197 _systemColorName];

  v199 = sub_18A4A7288();
  v201 = v200;

  if (v199 == v275 && v201 == v48)
  {
    goto LABEL_109;
  }

  v202 = sub_18A4A86C8();

  if (v202)
  {
    goto LABEL_111;
  }

  v203 = [v69 groupTableViewBackgroundColor];
  v204 = [v203 _systemColorName];

  v205 = sub_18A4A7288();
  v207 = v206;

  if (v205 == v275 && v207 == v48)
  {
LABEL_109:

LABEL_111:

    v179 = v278;
    v178 = v279;
    v180 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v181 = 0;
LABEL_112:
    v182 = v180;
    v183 = 0;
    goto LABEL_100;
  }

  v208 = sub_18A4A86C8();

  if (v208)
  {
    goto LABEL_111;
  }

  v209 = [v69 secondarySystemBackgroundColor];
  v210 = [v209 _systemColorName];

  v211 = sub_18A4A7288();
  v213 = v212;

  if (v211 == v275 && v213 == v48)
  {
    goto LABEL_146;
  }

  v214 = sub_18A4A86C8();

  if (v214)
  {
LABEL_123:

    v179 = v278;
    v178 = v279;
    v180 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v181 = 1;
    goto LABEL_112;
  }

  v215 = [v69 secondarySystemGroupedBackgroundColor];
  v216 = [v215 _systemColorName];

  v217 = sub_18A4A7288();
  v219 = v218;

  if (v217 == v275 && v219 == v48)
  {
LABEL_146:

    goto LABEL_123;
  }

  v220 = sub_18A4A86C8();

  if (v220)
  {
    goto LABEL_123;
  }

  v221 = [v69 tertiarySystemBackgroundColor];
  v222 = [v221 _systemColorName];

  v223 = sub_18A4A7288();
  v225 = v224;

  if (v223 == v275 && v225 == v48)
  {
    goto LABEL_132;
  }

  v226 = sub_18A4A86C8();

  if (v226)
  {
LABEL_133:

    v179 = v278;
    v178 = v279;
    v180 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v181 = 2;
    goto LABEL_112;
  }

  v227 = [v69 tertiarySystemGroupedBackgroundColor];
  v228 = [v227 _systemColorName];

  v229 = sub_18A4A7288();
  v231 = v230;

  if (v229 == v275 && v231 == v48)
  {
LABEL_132:

    goto LABEL_133;
  }

  v232 = sub_18A4A86C8();

  if (v232)
  {
    goto LABEL_133;
  }

  result = [v69 tableBackgroundColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_162;
  }

  v233 = result;
  v234 = [result _systemColorName];

  v235 = sub_18A4A7288();
  v237 = v236;

  if (v235 == v275 && v237 == v48)
  {
    goto LABEL_109;
  }

  v238 = sub_18A4A86C8();

  if (v238)
  {
    goto LABEL_111;
  }

  result = [v69 tableCellPlainBackgroundColor];
  if (!result)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v239 = result;
  v240 = [result _systemColorName];

  v241 = sub_18A4A7288();
  v243 = v242;

  if (v241 == v275 && v243 == v48)
  {
    goto LABEL_109;
  }

  v244 = sub_18A4A86C8();

  if (v244)
  {
    goto LABEL_111;
  }

  result = [v69 tableCellGroupedBackgroundColor];
  if (result)
  {
    v245 = result;
    v246 = [result _systemColorName];

    v247 = sub_18A4A7288();
    v249 = v248;

    if (v247 == v275 && v249 == v48)
    {
      goto LABEL_146;
    }

    v250 = sub_18A4A86C8();

    if (v250)
    {
      goto LABEL_123;
    }

    v251 = [v69 tableCellPlainSelectedBackgroundColor];
    v252 = [v251 _systemColorName];

    v253 = sub_18A4A7288();
    v255 = v254;

    if (v253 != v275 || v255 != v48)
    {
      v256 = sub_18A4A86C8();

      if (v256)
      {
        goto LABEL_98;
      }

      v257 = [v69 tableCellPlainSelectedBackgroundColor];
      v258 = [v257 _systemColorName];

      v259 = sub_18A4A7288();
      v261 = v260;

      if (v259 != v275 || v261 != v48)
      {
        v262 = sub_18A4A86C8();

        if ((v262 & 1) == 0)
        {
          v263 = [v69 tableCellGroupedSelectedBackgroundColor];
          v264 = [v263 _systemColorName];

          v265 = sub_18A4A7288();
          v267 = v266;

          if (v265 == v275 && v267 == v48)
          {
          }

          else
          {
            v268 = sub_18A4A86C8();

            if ((v268 & 1) == 0)
            {
              v76 = 0;
              goto LABEL_101;
            }
          }

          v179 = v278;
          v178 = v279;
          v180 = v277;
          (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
          v181 = 1;
          goto LABEL_99;
        }

        goto LABEL_98;
      }
    }

LABEL_94:

LABEL_98:

    v179 = v278;
    v178 = v279;
    v180 = v277;
    (*(v279 + 104))(v277, *MEMORY[0x1E6981F18], v278);
    v181 = 2;
LABEL_99:
    v182 = v180;
    v183 = 1;
LABEL_100:
    sub_18904FB90(v181, v182, v183, v284, v285);
    v76 = v184;
    (*(v178 + 8))(v180, v179);
LABEL_101:
    v103 = v281;
    v104 = v276;
    v71 = v283;
    v62 = v101;
LABEL_54:
    v129 = v286;
    sub_188A3F29C(v286, v71, &unk_1EA93AC08, &unk_18A65FA80);
    if ((v62)(v71, 1, v287) == 1)
    {
      sub_188A3F5FC(v129, &unk_1EA93AC08, &unk_18A65FA80);
      (*(v103 + 8))(v285, v282);
      sub_188A3F5FC(v71, &unk_1EA93AC08, &unk_18A65FA80);
    }

    else
    {
      sub_189053248(v71, v104);
      if (v76)
      {
        v130 = qword_1ED48C4D0;
        v131 = v76;
        if (v130 != -1)
        {
          swift_once();
        }

        v132 = v272;
        sub_189053308(v104, v272);
        swift_beginAccess();
        v133 = v131;
        sub_188F29154(v76, v132);
        swift_endAccess();
      }

      sub_1890532AC(v104);
      sub_188A3F5FC(v129, &unk_1EA93AC08, &unk_18A65FA80);
      (*(v103 + 8))(v285, v282);
    }

    return v76;
  }

LABEL_163:
  __break(1u);
  return result;
}

uint64_t _s8CacheKeyVMa(uint64_t a1)
{
  result = qword_1ED48D3A8;
  if (!qword_1ED48D3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_189053248(uint64_t a1, uint64_t a2)
{
  v4 = _s8CacheKeyVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890532AC(uint64_t a1)
{
  v2 = _s8CacheKeyVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189053308(uint64_t a1, uint64_t a2)
{
  v4 = _s8CacheKeyVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18905339C(uint64_t a1)
{
  result = sub_18A4A2DB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_189053460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1890534C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = sub_18A4A2D48();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 6)
  {
    v6 = MEMORY[0x1E6999C30];
  }

  else
  {
    v6 = qword_1E70F1F68[v3];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t _UITransitionOverlayView.transitionCompletionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1, v1[1]);
  return v2;
}

double _UITransitionOverlayView.transitionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6, v7);
}

void *sub_1890537E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transitionCompletionBlock];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188B17524;
    result[3] = v5;
    v6 = sub_188AA727C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_189053888(uint64_t a1, void **a2, double a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = *a2;
    v8[4] = sub_189055258;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1890552D0;
    v8[3] = &block_descriptor_25_3;
    v4 = _Block_copy(v8);
  }

  else
  {
    v7 = *a2;
  }

  [v7 setTransitionCompletionBlock_];
  _Block_release(v4);
}

id _UITransitionOverlayView.init(snapshot:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSnapshot_];

  return v2;
}

char *_UITransitionOverlayView.init(snapshot:)(void *a1)
{
  *&v1[OBJC_IVAR____UITransitionOverlayView_state] = 0;
  v3 = &v1[OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____UITransitionOverlayView_snapshot] = a1;
  type metadata accessor for _UITransitionBackdropView();
  v5 = objc_allocWithZone(v4);
  v6 = a1;
  v7 = [v5 initWithFrame_];
  *&v1[OBJC_IVAR____UITransitionOverlayView_backdrop] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v9 = sub_18A4A7518();
  v10 = sub_18A4A7258();
  [v8 setValue:v9 forKey:v10];

  v11 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v12 = sub_18A4A7668();
  v13 = sub_18A4A7258();
  [v11 setValue:v12 forKey:v13];

  v14 = sub_18A4A7668();
  v15 = sub_18A4A7258();
  [v11 setValue:v14 forKey:v15];

  v16 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v26.receiver = v1;
  v26.super_class = _UITransitionOverlayView;
  v17 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v17 addSubview_];
  [v17 addSubview_];
  v18 = [v17 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18A64D660;
  v20 = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
  *(v19 + 32) = v8;
  *(v19 + 56) = v20;
  *(v19 + 64) = v11;
  *(v19 + 120) = v20;
  *(v19 + 88) = v20;
  *(v19 + 96) = v16;
  v21 = v8;
  v22 = v11;
  v23 = v16;
  v24 = sub_18A4A7518();

  [v18 setFilters_];

  return v17;
}

Swift::Void __swiftcall _UITransitionOverlayView.startTransition()()
{
  v1 = OBJC_IVAR____UITransitionOverlayView_state;
  if (!*&v0[OBJC_IVAR____UITransitionOverlayView_state])
  {
    [*&v0[OBJC_IVAR____UITransitionOverlayView_snapshot] setAlpha_];
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_189054048;
    v18 = v3;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1890552D0;
    v16 = &block_descriptor_86;
    v4 = _Block_copy(&v13);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:0.38];
    _Block_release(v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;
    sub_189054050(v6);
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v17 = sub_18905487C;
    v18 = v9;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188A4A8F0;
    v16 = &block_descriptor_6_9;
    v10 = _Block_copy(&v13);
    v11 = v0;

    v17 = signpost_c2_entryLock_start;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188C3DD6C;
    v16 = &block_descriptor_9_1;
    v12 = _Block_copy(&v13);
    [v8 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
    _Block_release(v12);
    _Block_release(v10);
  }
}

void sub_189053FE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____UITransitionOverlayView_state) >= 3uLL)
    {
      _sSo24_UITransitionOverlayViewC5UIKitE27finishTransitionImmediatelyyyF_0();
    }
  }
}

void sub_189054050(id a1)
{
  if (a1 >= 3)
  {
  }
}

void _sSo24_UITransitionOverlayViewC5UIKitE27finishTransitionImmediatelyyyF_0()
{
  v1 = sub_18A4A6E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A6E08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_18A4A6E88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = OBJC_IVAR____UITransitionOverlayView_state;
  v19 = *&v0[OBJC_IVAR____UITransitionOverlayView_state];
  if (v19 >= 3)
  {
    v39 = &v37 - v16;
    v40 = v17;
    v41 = v15;
    v42 = v4;
    v43 = v5;
    v44 = v2;
    v45 = v1;
    v38 = v19;
    [v19 invalidate];
    v20 = *&v0[v18];
    *&v0[v18] = 1;
    sub_189054050(v20);
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    v52 = sub_189055290;
    v53 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188A4A8F0;
    v51 = &block_descriptor_38_2;
    v23 = _Block_copy(&aBlock);
    v37 = v0;

    v52 = signpost_c2_entryLock_start;
    v53 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188C3DD6C;
    v51 = &block_descriptor_41_2;
    v24 = _Block_copy(&aBlock);
    [v21 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
    _Block_release(v24);
    _Block_release(v23);
    sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
    v25 = sub_18A4A7A68();
    sub_18A4A6E68();
    v26 = UIAnimationDragCoefficient();
    if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v26 > -9.2234e18)
    {
      if (v26 < 9.2234e18)
      {
        v27 = 70 * v26;
        if ((v26 * 70) >> 64 == v27 >> 63)
        {
          *v10 = v27;
          (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
          v28 = v39;
          MEMORY[0x18CFE1DF0](v13, v10);
          (*(v8 + 8))(v10, v7);
          v29 = v41;
          v40 = *(v40 + 8);
          (v40)(v13, v41);
          v30 = swift_allocObject();
          v31 = v37;
          *(v30 + 16) = v37;
          v52 = sub_1890552B0;
          v53 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v49 = 1107296256;
          v50 = sub_188A4A8F0;
          v51 = &block_descriptor_47_0;
          v32 = _Block_copy(&aBlock);
          v33 = v31;

          v34 = v46;
          sub_18A4A6E38();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_188D7609C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
          sub_188BA3728();
          v35 = v42;
          v36 = v45;
          sub_18A4A7EB8();
          MEMORY[0x18CFE2990](v28, v34, v35, v32);
          _Block_release(v32);

          sub_189054050(v38);
          (*(v44 + 8))(v35, v36);
          (*(v47 + 8))(v34, v43);
          (v40)(v28, v29);
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_189054694(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____UITransitionOverlayView_backdrop] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setZoom_];

  v3 = [a1 layer];
  v4 = sub_18A4A77F8();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a1 layer];
  v7 = sub_18A4A2D28();
  v8 = sub_18A4A7258();
  [v6 setValue:v7 forKeyPath:v8];

  v9 = [a1 layer];
  v10 = sub_18A4A2D28();
  v11 = sub_18A4A7258();
  [v9 setValue:v10 forKeyPath:v11];
}

void sub_189054918(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_1890552B8;
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_188A4A8F0;
  v12 = &block_descriptor_53_2;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1890552C0;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_188C3DD6C;
  v12 = &block_descriptor_59;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_189054AB0(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____UITransitionOverlayView_backdrop] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setZoom_];

  v3 = [a1 layer];
  v4 = sub_18A4A77F8();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a1 layer];
  v7 = sub_18A4A77F8();
  v8 = sub_18A4A7258();
  [v6 setValue:v7 forKeyPath:v8];

  v9 = [a1 layer];
  v10 = sub_18A4A77F8();
  v11 = sub_18A4A7258();
  [v9 setValue:v10 forKeyPath:v11];
}

void sub_189054C8C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *&a3[OBJC_IVAR____UITransitionOverlayView_state];
  *&a3[OBJC_IVAR____UITransitionOverlayView_state] = 2;
  sub_189054050(v4);
  [a3 removeFromSuperview];
  v5 = [a3 transitionCompletionBlock];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, a3);

    _Block_release(v6);
  }
}

id _UITransitionOverlayView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void _UITransitionOverlayView.init(coder:)()
{
  *(v0 + OBJC_IVAR____UITransitionOverlayView_state) = 0;
  v1 = (v0 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_18A4A8398();
  __break(1u);
}

Swift::Void __swiftcall _UITransitionOverlayView.layoutSubviews()()
{
  v3.super_class = _UITransitionOverlayView;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____UITransitionOverlayView_snapshot];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____UITransitionOverlayView_backdrop];
  [v0 bounds];
  [v2 setFrame_];
}

id _UITransitionOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id sub_189055220()
{
  v1 = type metadata accessor for _UITransitionBackdropView();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t sub_189055258(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double sub_1890552D4()
{
  v1 = v0;
  v2 = *(v0 + 136);
  sub_188A53994(v1, v9);
  sub_188A53994(v9, v8);
  v3 = (v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  sub_188A5EBAC(v8, v3);
  v3[5] = 0;
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_188CAFA64();
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  KeyPath = swift_getKeyPath();
  sub_188A53994(v1, v9);
  v7[2] = KeyPath;
  v7[3] = v9;
  if (*(*(v1 + 144) + 16))
  {
    v5 = sub_1892186AC(*(v1 + 144), sub_189055764, v7);

    *(v1 + 144) = v5;
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_189055400(uint64_t a1, uint64_t a2)
{
  sub_188A53994(a1, v6);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 16))(v6, v3, v4);
}

uint64_t sub_18905546C()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);
  v22 = *(v0 + 40);
  v23 = v3;
  v24[0] = *(v0 + 72);
  *(v24 + 9) = *(v0 + 81);
  v4 = (v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *(v27 + 9) = *(v4 + 41);
  v26 = v6;
  v27[0] = v7;
  v25 = v5;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  *(v29 + 9) = *(v4 + 41);
  v28[1] = v9;
  v29[0] = v10;
  v28[0] = v8;
  v11 = v22;
  v12 = v23;
  v13 = v24[0];
  *(v4 + 41) = *(v24 + 9);
  v4[1] = v12;
  v4[2] = v13;
  *v4 = v11;
  sub_188A3F29C(&v22, &v19, &qword_1EA934C40, &qword_18A64DFE0);
  sub_188A3F29C(&v25, &v19, &qword_1EA934C40, &qword_18A64DFE0);
  sub_188A3F5FC(v28, &qword_1EA934C40, &qword_18A64DFE0);
  v19 = v25;
  v20 = v26;
  v21[0] = v27[0];
  *(v21 + 9) = *(v27 + 9);
  sub_188E83D28(&v19);
  sub_188A3F5FC(&v25, &qword_1EA934C40, &qword_18A64DFE0);
  swift_endAccess();
  v14 = *(v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v14)
  {
    [v14 invalidate];
  }

  KeyPath = swift_getKeyPath();
  v16 = *(v1 + 56);
  v19 = *(v1 + 40);
  v20 = v16;
  v21[0] = *(v1 + 72);
  *(v21 + 9) = *(v1 + 81);
  sub_188A3F29C(&v19, &v18, &qword_1EA934C40, &qword_18A64DFE0);
  return sub_189215DE0(&v19, KeyPath);
}

uint64_t sub_18905562C(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v7 = *(v5 + 40);
  sub_188A3F29C(v12, &v9, &qword_1EA934C40, &qword_18A64DFE0);
  return v7(v10, v4, v5);
}

uint64_t sub_1890556E4(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a1, v6, &unk_1EA93F7F0, &qword_18A65FC60);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 64))(v6, v3, v4);
}

uint64_t sub_18905580C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_189055854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890558C8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1890568BC(a1, v6, type metadata accessor for UIPromptSuggestionView.Configuration);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(v6, v7 + v8);
  swift_endAccess();
  sub_1890559A0(v9);
  return sub_189056020(v6);
}

double sub_1890559A0(double a1)
{
  v2 = sub_18A4A2588();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceUI.PromptEntryView(0);
  sub_18915048C(0, &v37);
  v11 = v1;
  v12 = &v1[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration];
  swift_beginAccess();
  v13 = *v12;
  v14 = v37;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v15 = *(v14 + 16);
  }

  else
  {
    [*(v14 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50, off_1E70E9510);
    swift_dynamicCast();
    v15 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30, &unk_18A64F460);
    v14 = swift_allocObject();
    *(v14 + 16) = v15;

    v37 = v14;
  }

  [v15 setImage_];

  v16 = v11;
  [*&v11[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView] setConfiguration_];
  v17 = *&v11[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  v18 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  sub_1890568BC(v12 + *(v18 + 20), v10, type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v10, v2);
    sub_188A34624(0, &qword_1EA930C60, 0x1E696AAB0);
    (*(v3 + 16))(v35, v7, v2);
    v19 = sub_18A4A7AC8();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0, &unk_18A65FF10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    v21 = *off_1E70EC918;
    *(inited + 32) = *off_1E70EC918;
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 preferredFontForTextStyle_];
    v25 = sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    *(inited + 40) = v24;
    v26 = *off_1E70EC920;
    *(inited + 64) = v25;
    *(inited + 72) = v26;
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 labelColor];
    *(inited + 104) = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    *(inited + 80) = v29;
    sub_188AEC99C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0, &unk_18A64E7C0);
    swift_arrayDestroy();
    v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v31 = sub_18A4A7258();

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v32 = sub_18A4A7088();

    v19 = [v30 initWithString:v31 attributes:v32];
  }

  [v17 setAttributedText_];

  [v16 invalidateIntrinsicContentSize];

  return result;
}

uint64_t sub_189055EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  return sub_1890568BC(v1 + v3, a1, type metadata accessor for UIPromptSuggestionView.Configuration);
}

uint64_t sub_189055F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(a1, v1 + v3);
  swift_endAccess();
  sub_1890559A0(v4);
  return sub_189056020(a1);
}

uint64_t sub_189055FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_189056020(uint64_t a1)
{
  v2 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double (*sub_18905607C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1890560E0;
}

double sub_1890560E0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1890559A0(result);
  }

  return result;
}

char *UIPromptSuggestionView.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  if (qword_1EA931E78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  v9 = __swift_project_value_buffer(v8, qword_1EA995148);
  sub_1890568BC(v9, &v2[v7], type metadata accessor for UIPromptSuggestionView.Configuration);
  v10 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView;
  if (qword_1EA92FCB8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EA92FCC8);
  sub_1890568BC(v11, v6, type metadata accessor for UIPromptBackgroundView.Configuration);
  v12 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView(0));
  *&v2[v10] = UIPromptBackgroundView.init(configuration:)(v6);
  v13 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  *&v2[v13] = [objc_allocWithZone(UILabel) initWithFrame_];
  v14 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  *&v2[v14] = [objc_allocWithZone(UIButton) init];
  v15 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  *&v2[v15] = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
  v2[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating] = 0;
  v16 = type metadata accessor for UIPromptSuggestionView(0);
  v28.receiver = v2;
  v28.super_class = v16;
  v17 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  v21 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(a1, &v19[v21]);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView] setClipsToBounds_];
  [v19 addSubview_];
  v23 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label] setNumberOfLines_];
  [*&v19[v23] setLineBreakMode_];
  v24 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView] setUserInteractionEnabled_];
  [*&v19[v22] addSubview_];
  [*&v19[v22] addSubview_];
  [*&v19[v22] addSubview_];
  sub_1890559A0(v25);

  sub_189056020(a1);
  return v19;
}

id UIPromptSuggestionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UIPromptSuggestionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UIPromptSuggestionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPromptSuggestionView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIPromptSuggestionView.Configuration.init(image:labelContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for UIPromptSuggestionView.Configuration(0) + 20);

  return sub_1890570F8(a2, v4);
}

uint64_t sub_189056848()
{
  v0 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_1EA995148);
  v1 = __swift_project_value_buffer(v0, qword_1EA995148);
  v2 = (v1 + *(v0 + 20));
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  result = swift_storeEnumTagMultiPayload();
  *v1 = 0;
  return result;
}

uint64_t sub_1890568BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

CGSize __swiftcall UIPromptSuggestionView.sizeThatFits(_:lineLimit:)(CGSize _, Swift::Int lineLimit)
{
  height = _.height;
  width = _.width;
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(v2 + v6))
  {
    v7 = 60.0;
  }

  else
  {
    v7 = 34.0;
  }

  [*(v2 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label) textRectForBounds:lineLimit limitedToNumberOfLines:{0.0, 0.0, width - v7, height}];
  v9 = v8 + 28.0;
  v11 = v7 + v10;
  result.height = v9;
  result.width = v11;
  return result;
}

CGSize __swiftcall UIPromptSuggestionView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label);
  v5 = [v4 numberOfLines];
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    v7 = 60.0;
  }

  else
  {
    v7 = 34.0;
  }

  [v4 textRectForBounds:v5 limitedToNumberOfLines:{0.0, 0.0, width - v7, height}];
  v9 = v8 + 28.0;
  v11 = v7 + v10;
  result.height = v9;
  result.width = v11;
  return result;
}

CGSize __swiftcall UIPromptSuggestionView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  [v1 sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

id UIPromptSuggestionView.intrinsicContentSize.getter()
{
  [v0 bounds];

  return [v0 sizeThatFits_];
}

Swift::Void __swiftcall UIPromptSuggestionView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UIPromptSuggestionView(0);
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  v3 = *&v0[v2];
  [v0 bounds];
  if (*&v0[v2])
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 34.0;
  }

  v6 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  [v6 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, v4 - v5}];
  v8 = v7 + 28.0;
  v10 = v5 + v9;
  v11 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 34.0;
  v22.size.height = 34.0;
  v23 = CGRectOffset(v22, 8.0, 0.0);
  [v11 setFrame_];
  [v1 bounds];
  [v6 setFrame_];
  [v6 frame];
  if (v3)
  {
    v24 = CGRectInset(*&v12, 13.0, 0.0);
    v16 = UIRectInsetEdges(2, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height, 34.0);
  }

  else
  {
    *&v16 = CGRectInset(*&v12, 16.0, 0.0);
  }

  [v6 setFrame_];
  v20 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView];
  [v1 bounds];
  [v20 setFrame_];
  [v20 _setCornerRadius_];
}

void _s5UIKit22UIPromptSuggestionViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  if (qword_1EA931E78 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  v7 = __swift_project_value_buffer(v6, qword_1EA995148);
  sub_1890568BC(v7, v1 + v5, type metadata accessor for UIPromptSuggestionView.Configuration);
  v8 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView;
  if (qword_1EA92FCB8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EA92FCC8);
  sub_1890568BC(v9, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  v10 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView(0));
  *(v1 + v8) = UIPromptBackgroundView.init(configuration:)(v4);
  v11 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  *(v1 + v11) = [objc_allocWithZone(UILabel) initWithFrame_];
  v12 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  *(v1 + v12) = [objc_allocWithZone(UIButton) init];
  v13 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  *(v1 + v13) = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_1890570F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189057184(uint64_t a1)
{
  result = type metadata accessor for UIPromptSuggestionView.Configuration(319);
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

void sub_189057320(uint64_t a1)
{
  sub_1890573A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1890573A4(uint64_t a1)
{
  if (!qword_1EA93ACA0)
  {
    sub_188A34624(255, &unk_1EA93A1A0, off_1E70E9A58);
    v1 = sub_18A4A7D38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA93ACA0);
    }
  }
}

uint64_t sub_18905740C(uint64_t a1, double a2)
{
  result = sub_18A4A2588();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_189057478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_188E6D344(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);
      v11 = v7;
      if (v9 >= v10 >> 1)
      {
        sub_188E6D344((v10 > 1), v9 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for UIRBDirectionalLightEffectView.Pondering.Effect;
      v16 = &protocol witness table for UIRBDirectionalLightEffectView.Pondering.Effect;
      v12 = swift_allocObject();
      *&v14 = v12;
      v12[2] = v5;
      v12[3] = v6;
      v12[4] = v8;
      v12[5] = v11;
      *(v2 + 16) = v9 + 1;
      sub_188A5EBAC(&v14, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1890575A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v4 = a1 + 32;
    do
    {
      sub_188A55598(v4, &v5);
      sub_188A34624(0, &qword_1EA92F7A8, off_1E70EAB10);
      swift_dynamicCast();
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_18905769C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_188B221A4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_188B221A4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_188A55538(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1890577D0(uint64_t a1)
{
  v19 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 56);
  v11(&v1[*((v3 & v2) + 0x60)], 1, 1, v4, v7);
  v13 = type metadata accessor for ElementWrapper(0, v4, *((v3 & v2) + 0x58), v12);
  v20.receiver = v1;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, sel_init);
  (*(v10 + 32))(v9, v19, v4);
  (v11)(v9, 0, 1, v4);
  v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x60);
  swift_beginAccess();
  v16 = *(v6 + 40);
  v17 = v14;
  v16(v14 + v15, v9, v5);
  swift_endAccess();

  return v17;
}

uint64_t sub_1890579F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_18A4A7D38();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

id sub_189057AB4@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  a1[3] = type metadata accessor for ElementWrapper(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a2);
  *a1 = v5;

  return v5;
}

uint64_t sub_189057B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_189057AB4(v6, a4);
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

uint64_t sub_189057B98(void *a1)
{
  v1 = a1;
  v2 = sub_189057BCC();

  return v2;
}

uint64_t sub_189057BCC()
{
  v0 = sub_18A4A7D38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1890579F4(&v6 - v2);
  v4 = sub_18A4A7D58();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_189057CDC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v44 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v43 = &v39 - v8;
  v9 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v39 - v11;
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_188A3F29C(a1, v49, &qword_1EA934050, qword_18A64CA10);
  if (!v50)
  {
    sub_188A553EC(v49);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  v21 = v48;
  sub_1890579F4(v20);
  v42 = v21;
  sub_1890579F4(v17);
  v39 = TupleTypeMetadata2;
  v22 = v6;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v47;
  v25 = *(v47 + 16);
  v25(v12, v20, v9);
  v41 = v23;
  v26 = &v12[v23];
  v27 = v22;
  v25(v26, v17, v9);
  v40 = v7;
  v28 = *(v7 + 48);
  if (v28(v12, 1, v27) != 1)
  {
    v31 = v46;
    v25(v46, v12, v9);
    v32 = v41;
    if (v28(&v12[v41], 1, v27) != 1)
    {
      v35 = v40;
      v36 = v43;
      (*(v40 + 32))(v43, &v12[v32], v27);
      v30 = sub_18A4A7248();

      v37 = *(v35 + 8);
      v37(v36, v27);
      v38 = *(v47 + 8);
      v38(v17, v9);
      v38(v20, v9);
      v37(v46, v27);
      v38(v12, v9);
      return v30 & 1;
    }

    v33 = *(v47 + 8);
    v33(v17, v9);
    v33(v20, v9);
    (*(v40 + 8))(v31, v27);
    goto LABEL_9;
  }

  v29 = *(v24 + 8);
  v29(v17, v9);
  v29(v20, v9);
  if (v28(&v12[v41], 1, v27) != 1)
  {
LABEL_9:
    (*(v45 + 8))(v12, v39);
    goto LABEL_10;
  }

  v29(v12, v9);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_18905820C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_189057CDC(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

uint64_t sub_1890582B4(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = sub_18A4A7D38();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t UITextSearchAggregator.allFoundRanges.getter()
{
  v1 = [*v0 allFoundRanges];
  v2 = [v1 array];

  v3 = sub_18A4A7548();
  v4 = sub_1890575A4(v3);

  return v4;
}

void UITextSearchAggregator.foundRange(_:searchString:document:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = sub_18A4A7258();
  v16 = type metadata accessor for ElementWrapper(0, v9, *(a5 + 24), v15);
  (*(v10 + 16))(v12, a4, v9);
  v17 = objc_allocWithZone(v16);
  v18 = sub_1890577D0(v12);
  [v13 foundRange:a1 forSearchString:v14 inDocument:v18];
}

void UITextSearchAggregator.invalidateFoundRange(_:document:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v13 = type metadata accessor for ElementWrapper(0, v6, *(v11 + 24), v12);
  (*(v7 + 16))(v9, a2, v6);
  v14 = objc_allocWithZone(v13);
  v15 = sub_1890577D0(v9);
  [v10 invalidateFoundRange:a1 inDocument:v15];
}

uint64_t UITextSearching.selectedTextSearchDocument.getter@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_189058730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for ElementWrapper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    if (swift_dynamicCastClass())
    {
      return sub_1890579F4(a2);
    }
  }

  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

id sub_18905888C(void *a1)
{
  v1 = a1;
  v2 = sub_1890588D0();

  return v2;
}

uint64_t sub_1890588D0()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = (*(*(v1 + 88) + 24))(*(v1 + 80));
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

uint64_t sub_189058964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_189058730(a3, v12);
  v13 = (*(v7 + 32))(a1, a2, v12, v8, v7);
  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_189058B00(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = sub_189058964(v8, v9, a5);

  swift_unknownObjectRelease();
  return v11;
}

double sub_189058B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v10 + 80;
    v12 = *(v10 + 80);
    v13 = *(v14 + 8);
    v16 = a4;
    v15 = *(v13 + 40);
    swift_unknownObjectRetain();
    v15(a1, a2, a3, &v16, v12, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_189058C7C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_18A4A7288();
  v10 = v9;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_189058B84(v8, v10, v11, a5);

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_189058D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v12);
    (*(v7 + 48))(a1, v12, a3, v8, v7);
    swift_unknownObjectRelease();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_189058EA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_189058D14(v8, a4, a5);

  swift_unknownObjectRelease();
}

double sub_189058F28()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(*(v1 + 88) + 56))(*(v1 + 80));

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_189058FCC(void *a1)
{
  v1 = a1;
  sub_189058F28();
}

uint64_t sub_189059014(void *a1)
{
  v1 = a1;
  v2 = sub_189059048();

  return v2 & 1;
}

uint64_t sub_189059048()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = (*(*(v1 + 88) + 64))(*(v1 + 80));
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

uint64_t sub_1890590DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_189058730(a2, v13);
    v14 = (*(v8 + 72))(a1, v13, a3, v17, v9, v8);
    swift_unknownObjectRelease();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_189059284(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18A4A7288();
  v10 = v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  LOBYTE(a1) = sub_1890590DC(v11, a4, v8, v10);

  swift_unknownObjectRelease();

  return a1 & 1;
}

uint64_t sub_189059318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v13);
    (*(v8 + 80))(a1, v13, a3, v16, v9, v8);
    swift_unknownObjectRelease();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

double sub_1890594B0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18A4A7288();
  v10 = v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_189059318(v11, a4, v8, v10);

  swift_unknownObjectRelease();

  return result;
}

double sub_189059548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *MEMORY[0x1E69E7D40] & *v6;
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(*(v12 + 88) + 88))(a1, a2, a3, a4, a5, *(v12 + 80));

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_189059640(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_18A4A7288();
  v9 = v8;
  v10 = sub_18A4A7288();
  v12 = v11;
  v13 = a4;
  v14 = a1;
  sub_189059548(v7, v9, v13, v10, v12);

  return result;
}

uint64_t sub_1890596EC(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v10);
    (*(v5 + 96))(a1, v10, v6, v5);
    swift_unknownObjectRelease();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_189059888(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v10);
    (*(v5 + 104))(a1, v10, v6, v5);
    swift_unknownObjectRelease();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_189059A24(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void *sub_189059AAC(void *a1)
{
  v1 = a1;
  v2 = sub_189059AF0();

  return v2;
}

void *sub_189059AF0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18A4A7D38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v1 + 112))(v2, v1);
    swift_unknownObjectRelease();
    if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {
      (*(v8 + 32))(v14, v7, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = type metadata accessor for ElementWrapper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
      (*(v8 + 16))(v11, v14, AssociatedTypeWitness);
      v18 = objc_allocWithZone(v17);
      v19 = sub_1890577D0(v11);
      (*(v8 + 8))(v14, AssociatedTypeWitness);
      return v19;
    }
  }

  else
  {
    (*(v8 + 56))(v7, 1, 1, AssociatedTypeWitness);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_189059DE0(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v20 = v6;
  sub_189058730(a1, v13);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 48);
  result = v15(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_189058730(a2, v10);
    result = v15(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v17 = (*(v5 + 120))(v13, v10, v20, v5);
      swift_unknownObjectRelease();
      v18 = *(v14 + 8);
      v18(v10, AssociatedTypeWitness);
      v18(v13, AssociatedTypeWitness);
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18905A024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_189059DE0(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

id sub_18905A108(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id UITextSearchingFindSession.init<A>(searchableObject:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for _UITextSearchingWrapper(0, a2, a3, v7);
  v11 = sub_18905ABF0(a1, v8, v9, v10);
  v12 = [v6 initWithStronglyHeldSearchableObject_];

  swift_unknownObjectRelease();
  return v12;
}

id UITextView.compare(_:toRange:document:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188A3F29C(a3, v17, &qword_1EA93ACC0, &qword_18A65FF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8, &qword_18A65FF28);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v16.receiver = v7;
  v16.super_class = v6;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v14[0] = v17[0];
  v14[1] = v17[1];
  v15 = v18;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v14, v10 + v11);
  swift_endAccess();
  v12 = [v3 compareFoundRange:a1 toRange:a2 inDocument:v10];

  return v12;
}

void UITextView.performTextSearch(queryString:options:resultAggregator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = sub_18A4A7258();
  [v4 performTextSearchWithQueryString:v7 usingOptions:a3 resultAggregator:v6];
}

void UITextView.decorate(foundTextRange:document:usingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188A3F29C(a2, v15, &qword_1EA93ACC0, &qword_18A65FF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8, &qword_18A65FF28);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v12, v10 + v11);
  swift_endAccess();
  [v3 decorateFoundTextRange:a1 inDocument:v10 usingStyle:a3];
}

id UITextView.shouldReplace(foundTextRange:document:withText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188A3F29C(a2, v18, &qword_1EA93ACC0, &qword_18A65FF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8, &qword_18A65FF28);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v17.receiver = v7;
  v17.super_class = v6;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  v15[0] = v18[0];
  v15[1] = v18[1];
  v16 = v19;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v15, v10 + v11);
  swift_endAccess();
  v12 = sub_18A4A7258();
  v13 = [v4 shouldReplaceFoundTextInRange:a1 inDocument:v10 withText:v12];

  return v13;
}

void UITextView.replace(foundTextRange:document:withText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188A3F29C(a2, v16, &qword_1EA93ACC0, &qword_18A65FF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8, &qword_18A65FF28);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v15.receiver = v7;
  v15.super_class = v6;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v13[0] = v16[0];
  v13[1] = v16[1];
  v14 = v17;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v13, v10 + v11);
  swift_endAccess();
  v12 = sub_18A4A7258();
  [v4 replaceFoundTextInRange:a1 inDocument:v10 withText:v12];
}

Swift::Void __swiftcall UITextView.replaceAll(queryString:options:withText:)(Swift::String queryString, UITextSearchOptions options, Swift::String withText)
{
  isa = options.super.isa;
  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  [v3 replaceAllOccurrencesOfQueryString:v5 usingOptions:isa withText:v6];
}

void sub_18905A898(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_188A3F29C(a2, v15, &qword_1EA93ACC0, &qword_18A65FF20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8, &qword_18A65FF28);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v12, v10 + v11);
  swift_endAccess();
  [v3 *a3];
}

id sub_18905A9D4()
{
  v1 = [v0 selectedTextRange];

  return v1;
}

void sub_18905AA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = sub_18A4A7258();
  [v4 performTextSearchWithQueryString:v7 usingOptions:a3 resultAggregator:v6];
}

void sub_18905AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  [v5 replaceAllOccurrencesOfQueryString:v7 usingOptions:a3 withText:v8];
}

double sub_18905AB2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18A6507C0;
  return result;
}

id sub_18905AB44(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = type metadata accessor for _UITextSearchingWrapper(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  v7.receiver = v1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_18905AC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACD0, qword_18A65FF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18905AC9C()
{
  result = qword_1EA93ACD8[0];
  if (!qword_1EA93ACD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA937A80, &unk_18A650500);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA93ACD8);
  }

  return result;
}

uint64_t sub_18905AD18(uint64_t a1)
{
  result = sub_18A4A7D38();
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

uint64_t sub_18905ADAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18905AFF8(uint64_t a1)
{
  if (qword_1EA930918 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (qword_1EA994EC8 == a1)
  {
    return 0;
  }

  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 152) != a1)
  {
    v4 = v3[16];
    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    while (v5)
    {
      v7 = *v6++;
      --v5;
      if (v7 == a1)
      {
        return 3;
      }
    }

    v8 = *v3;
    v9 = *(*v3 + 16);
    v10 = (v8 + 32);
    while (v9)
    {
      v11 = *v10++;
      --v9;
      if (v11 == a1)
      {
        return 4;
      }
    }

    return 0;
  }

  return 2;
}

__n128 sub_18905B138@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  v6 = *(v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 128);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == a2)
    {
      goto LABEL_10;
    }
  }

  v10 = *v5;
  v11 = *(*v5 + 16);
  v12 = (v10 + 32);
  while (v11)
  {
    v13 = *v12++;
    --v11;
    if (v13 == a2)
    {
      v4 = a2;
      break;
    }
  }

  a2 = *(a1 + 24);
LABEL_10:
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = a2;
  result = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v15;
  *(a3 + 64) = *(a1 + 64);
  return result;
}

__n128 sub_18905B244@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 136) == a2)
  {
    if (qword_1EA930918 != -1)
    {
      v15 = a1;
      v14 = a3;
      swift_once();
      a1 = v15;
      a3 = v14;
    }

    v6 = qword_1EA994EC8;
  }

  else
  {
    v6 = *(a1 + 24);
    if (v5[21] == a2)
    {
      v7 = *v5;
      v8 = *(v7 + 16);
      v9 = (v7 + 32);
      v10 = 1;
      while (v8 + v10 != 1)
      {
        v11 = *v9++;
        --v10;
        if (v11 == a2)
        {
          if (v10)
          {
            v4 = *(v9 - 2);
          }

          else
          {
            v4 = a2;
          }

          break;
        }
      }
    }
  }

  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v13;
  *(a3 + 64) = *(a1 + 64);
  return result;
}

uint64_t sub_18905B46C()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000033, 0x800000018A6A1CE0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x6F43746F6F72203BLL, 0xEF203D206E6D756CLL);
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](0x6C6F43706F74203BLL, 0xEE00203D206E6D75);
  v1 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

void __swiftcall _UISplitViewControllerAdaptiveSingleColumnLayout.init()(_UISplitViewControllerAdaptiveSingleColumnLayout *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_18905B68C()
{
  if (*(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 152) == 3)
  {
    return 3;
  }

  v2 = *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  v3 = *(v2 + 16);
  if (UIApp)
  {
    if (v3)
    {
      return *(v2 + 8 * v3 + 24);
    }
  }

  else if (v3)
  {
    return *(v2 + 32);
  }

  if (qword_1EA930918 != -1)
  {
    swift_once();
  }

  return qword_1EA994EC8;
}

uint64_t sub_18905B738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_18905B780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18905B7FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_188C45F1C(v7, v14);
      result = v6(v14);
      if (v3)
      {
        return sub_188C460F0(v14);
      }

      if (result)
      {
        break;
      }

      result = sub_188C460F0(v14);
      v7 += 192;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v14[9];
    a3[8] = v14[8];
    a3[9] = v8;
    v9 = v14[11];
    a3[10] = v14[10];
    a3[11] = v9;
    v10 = v14[5];
    a3[4] = v14[4];
    a3[5] = v10;
    v11 = v14[7];
    a3[6] = v14[6];
    a3[7] = v11;
    v12 = v14[1];
    *a3 = v14[0];
    a3[1] = v12;
    v13 = v14[3];
    a3[2] = v14[2];
    a3[3] = v13;
  }

  else
  {
LABEL_6:
    a3[10] = 0u;
    a3[11] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18905B8E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_18A4A56B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v3 + v13, v8, &qword_1EA935CD0, &qword_18A64FA60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_188A3F5FC(v8, &qword_1EA935CD0, &qword_18A64FA60);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_189063EF0(&qword_1EA931288, v15, type metadata accessor for _GlassGroupView, &protocol conformance descriptor for _GlassGroupView);
  sub_18A4A5668();
  *(v3 + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags) |= a2;
  v16 = sub_18A4A5688();
  v17 = (v16 & 0x100000000) == 0;
  v18 = HIDWORD(v16) & 1;
  v19 = *&v16;
  v20 = a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v21 = *(a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v22 = *(a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v17)
  {
    v19 = 0.0;
  }

  *v20 = v19;
  *(v20 + 8) = v18;
  sub_18905BFDC(v21, v22);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_18905BB50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  sub_188A3F29C(a1, v21 - v4, &qword_1EA935D70, &qword_18A654CE0);
  v6 = sub_18A4A2DB8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v21[0] = v21;
    v10 = *(v7 + 64);
    v11 = MEMORY[0x1EEE9AC00](0);
    v12 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = (*(v7 + 32))(v12, v5, v6, v11);
    v21[1] = v1;
    v14 = MEMORY[0x1EEE9AC00](v13);
    v15 = *(v7 + 16);
    v15(v12, v12, v6, v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E30, &qword_18A654CE8);
    v17 = objc_allocWithZone(v16);
    (v15)(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x60), v12, v6);
    v22.receiver = v17;
    v22.super_class = v16;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    v19 = *(v7 + 8);
    v19(v12, v6);
    v19(v12, v6);
    v9 = v18;
  }

  sub_188B6EDCC(v9);
  return sub_188A3F5FC(a1, &qword_1EA935D70, &qword_18A654CE0);
}

void sub_18905BDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_188B622F4(a2);
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
    swift_beginAccess();
    sub_189063880(&v11[v12], v9, type metadata accessor for GlassState);
    if (MEMORY[0x18CFDDF80](v9, a1))
    {
      v13 = &v9[*(v4 + 20)];
      v14 = *v13;
      v15 = v13[8];
      sub_1890639A8(v9, type metadata accessor for GlassState);
      v16 = a1 + *(v4 + 20);
      v17 = *(v16 + 8);
      if (v15)
      {
        if (*(v16 + 8))
        {
LABEL_12:
          sub_189063880(a1, v6, type metadata accessor for GlassState);
          sub_18905D630(v6);
LABEL_13:

          return;
        }
      }

      else
      {
        if (v14 != *v16)
        {
          v17 = 1;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1890639A8(v9, type metadata accessor for GlassState);
    }

    sub_189063880(a1, v6, type metadata accessor for GlassState);
    sub_18905D630(v6);
    [v11 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v11 layoutIfNeeded];
    }

    goto LABEL_13;
  }
}

void sub_18905BFDC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = v2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  if (*(v2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *v11 == *&a1)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }

    goto LABEL_8;
  }

  v30 = *(v2 + v12);
  v31 = sub_18A4A7F68();
  v13 = v30;
  v14 = v31;
  if (v31)
  {
LABEL_8:
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v32 = v13 & 0xC000000000000001;
    v15 = v13;

    v16 = v15;
    v17 = 0;
    v33 = v14;
    v34 = v15;
    while (1)
    {
      v18 = v32 ? sub_188E49160(v17, v16) : *(v16 + 8 * v17 + 32);
      v19 = v18;
      v20 = *v11;
      v21 = *(v11 + 8);
      v22 = v18 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
      swift_beginAccess();
      sub_189063880(v22, v10, type metadata accessor for GlassState);
      v23 = &v10[*(v5 + 20)];
      *v23 = v20;
      v23[8] = v21;
      sub_189063880(v22, v7, type metadata accessor for GlassState);
      swift_beginAccess();
      sub_189063E58(v10, v22, type metadata accessor for GlassState);
      swift_endAccess();
      v24 = *(v5 + 20);
      v25 = &v7[v24];
      v26 = v7[v24 + 8];
      v27 = (v22 + v24);
      v28 = *(v22 + v24 + 8);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v29 = v33;
      if (!v28)
      {
        goto LABEL_20;
      }

LABEL_10:
      ++v17;

      sub_1890639A8(v7, type metadata accessor for GlassState);
      sub_1890639A8(v10, type metadata accessor for GlassState);
      v16 = v34;
      if (v29 == v17)
      {

        return;
      }
    }

    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    v29 = v33;
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    [v19 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v19 layoutIfNeeded];
    }

    goto LABEL_10;
  }
}

void sub_18905C2DC(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
    *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = 0;

    sub_18905B8E8(v1, 1);
    return;
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
  *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = a1;
  v7 = a1;
}

id sub_18905C394(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup] = 1;
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness];
  *v11 = 0;
  v11[8] = 1;
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for _GlassGroupView();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for MaterialBackdropContextTrait;
  *(inited + 40) = &off_1ED48F1B8;
  v14 = swift_allocObject();
  *(v14 + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)(inited, sub_189063EE8, v14, ObjectType);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_18A64BFB0;
  *(v15 + 32) = &type metadata for GlassGroupBackdropNameTrait;
  *(v15 + 40) = &off_1EE43A6E8;
  UIView.registerForTraitChanges<A>(_:handler:)(v15, sub_189062EB0, 0, ObjectType);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  v16 = [v12 traitCollection];

  v17 = sub_188E1AF8C();
  sub_18905C2DC(v17);

  return v12;
}

void sub_18905C5F4(void *a1)
{
  v2 = sub_18A4A56B8();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850, &unk_18A64FD60);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-v13];
  v15 = sub_188E1AF8C();
  v39 = a1;
  v16 = [a1 traitCollection];
  v17 = sub_188E1AF8C();

  v18 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v40 = v15;
  v37 = v18;
  v19 = v15 + v18;
  v20 = v2;
  sub_188A3F29C(v19, v14, &qword_1EA935CD0, &qword_18A64FA60);
  v21 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v22 = *(v5 + 56);
  sub_188A3F29C(v14, v7, &qword_1EA935CD0, &qword_18A64FA60);
  v23 = v17 + v21;
  v24 = v17;
  sub_188A3F29C(v23, &v7[v22], &qword_1EA935CD0, &qword_18A64FA60);
  v25 = *(v41 + 48);
  if (v25(v7, 1, v2) == 1)
  {
    sub_188A3F5FC(v14, &qword_1EA935CD0, &qword_18A64FA60);
    if (v25(&v7[v22], 1, v2) == 1)
    {

      sub_188A3F5FC(v7, &qword_1EA935CD0, &qword_18A64FA60);
      return;
    }

    goto LABEL_6;
  }

  v26 = v36;
  sub_188A3F29C(v7, v36, &qword_1EA935CD0, &qword_18A64FA60);
  if (v25(&v7[v22], 1, v20) == 1)
  {
    sub_188A3F5FC(v14, &qword_1EA935CD0, &qword_18A64FA60);
    (*(v41 + 8))(v26, v20);
LABEL_6:
    sub_188A3F5FC(v7, &unk_1EA934850, &unk_18A64FD60);
    goto LABEL_7;
  }

  v30 = v41;
  v31 = v35;
  (*(v41 + 32))(v35, &v7[v22], v20);
  sub_189063EF0(&qword_1EA930AA0, 255, MEMORY[0x1E697FC78], MEMORY[0x1E697FC80]);
  v34 = sub_18A4A7248();
  v32 = *(v30 + 8);
  v32(v31, v20);
  sub_188A3F5FC(v14, &qword_1EA935CD0, &qword_18A64FA60);
  v32(v26, v20);
  v24 = v17;
  sub_188A3F5FC(v7, &qword_1EA935CD0, &qword_18A64FA60);
  if (v34)
  {

    return;
  }

LABEL_7:
  v27 = v38;
  v28 = v40;
  sub_188A3F29C(v40 + v37, v38, &qword_1EA935CD0, &qword_18A64FA60);
  if (v25(v27, 1, v20) == 1)
  {
    sub_188A3F5FC(v27, &qword_1EA935CD0, &qword_18A64FA60);
  }

  else
  {
    sub_189063EF0(&qword_1EA931288, v29, type metadata accessor for _GlassGroupView, &protocol conformance descriptor for _GlassGroupView);
    sub_18A4A5678();
    (*(v41 + 8))(v27, v20);
  }

  sub_18905C2DC(v24);
}

void sub_18905CB84(uint64_t a1, void *a2, char a3)
{
  v54[0] = 0;
  v7 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v8 = *&v3[v7];
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v3[v7] = v8;
  v47 = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = sub_188B8AD14(v8);
    *&v3[v7] = v8;
  }

  v46 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = a3;
  v12 = 0;
  if (v11)
  {
    v13 = v10 + 32;
    v43 = v10 + 32;
    v44 = v10 + 24;
    do
    {
      v14 = (v13 + 8 * v12);
      while (1)
      {
        v15 = *v14;
        v16 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
        swift_beginAccess();
        v17 = *&v15[v16];
        if (!*(v17 + 16))
        {
          break;
        }

        v18 = type metadata accessor for GlassPair(0);
        v19 = *(v17 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(v18 + 20));
        v20 = v15;
        v21 = v19;
        v22 = sub_189122420(a2, v21);

        if (v22 == -1)
        {
          break;
        }

        ++v12;
        ++v14;
        if (v12 >= v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 >= v11 - 1)
      {
        break;
      }

      v23 = (v44 + 8 * v11--);
      while (1)
      {
        v24 = *v23;
        v25 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
        swift_beginAccess();
        v26 = *&v24[v25];
        if (*(v26 + 16))
        {
          v27 = type metadata accessor for GlassPair(0);
          v28 = *(v26 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(v27 + 20));
          v29 = v24;
          v30 = v28;
          v31 = sub_189122420(a2, v30);

          if (v31 != -1)
          {
            break;
          }
        }

        --v11;
        --v23;
        if (v12 >= v11)
        {
          goto LABEL_18;
        }
      }

      v32 = *v14;
      *v14 = *v23;
      *v23 = v32;
      ++v12;
      v13 = v43;
    }

    while (v12 < v11);
  }

LABEL_18:
  *&v3[v47] = v46;
  swift_endAccess();
  v33 = objc_opt_self();
  v34 = swift_allocObject();
  v34[2] = v54;
  v34[3] = v3;
  v34[4] = v12;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_189063EC0;
  *(v35 + 24) = v34;
  v52 = sub_188E3FE50;
  v53 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_188A4A968;
  v51 = &block_descriptor_198_1;
  v36 = _Block_copy(&aBlock);
  v37 = v3;

  [v33 performWithoutAnimation_];
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (!v54[0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v54[0];
  sub_18905D7C8(a2, a1, v45 & 1);

  v40 = swift_allocObject();
  *(v40 + 16) = v54;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_189063ECC;
  *(v41 + 24) = v40;
  v52 = sub_188E3FE50;
  v53 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_188A4A968;
  v51 = &block_descriptor_208;
  v42 = _Block_copy(&aBlock);

  [v33 performWithoutAnimation_];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v54[0])
  {

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_18905D080(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GlassState(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v14 = [objc_allocWithZone(type metadata accessor for GlassGroupLayerView(0)) initWithFrame_];
  v15 = *a1;
  *a1 = v14;
  v16 = v14;

  if (!v16)
  {
    goto LABEL_37;
  }

  v16[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground);

  if (!*a1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius) = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius);
  if (!*a1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup) = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup);
  if (!*a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [*a1 setAutoresizingMask_];
  if (!*a1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8) = &off_1EFADDFD0;
  swift_unknownObjectWeakAssign();
  if (!*a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness + 8);
  v18 = *a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride;
  *v18 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness);
  v18[8] = v17;
  if ((*(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8) & 1) == 0)
  {
    v19 = *a1;
    if (!*a1)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v20 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
    v21 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
    swift_beginAccess();
    sub_189063880(v19 + v21, v9, type metadata accessor for GlassState);
    v22 = &v9[*(v6 + 20)];
    *v22 = v20;
    v22[8] = 0;
    v23 = v19;
    sub_18905D630(v9);
  }

  v24 = [a2 traitCollection];
  v25 = sub_188E1ADFC();
  v27 = v26;

  if (v27)
  {
    if (!*a1)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v24 = *a1;
    sub_188B65E58(v25, v27);
  }

  v28 = *a1;
  if (!a3)
  {
    if (v28)
    {
      [a2 insertSubview:*a1 atIndex:0];
      a1 = *a1;
      if (!a1)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    goto LABEL_46;
  }

  if (!v28)
  {
    goto LABEL_44;
  }

  v27 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_33;
  }

  v29 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v24 = *(a2 + v29);
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = *(v24 + 8 * v27 + 32);
  v31 = v28;
  v27 = v30;
  while (1)
  {
    [a2 insertSubview:v28 aboveSubview:v27];

    a1 = *a1;
    if (a1)
    {
LABEL_21:
      v28 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
      swift_beginAccess();
      v32 = *&v28[a2];
      if (!(v32 >> 62))
      {
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < a3)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }
    }

    else
    {
LABEL_29:
      __break(1u);
    }

    if (sub_18A4A7F68() < a3)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_23:
    if ((a3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v37 = v28;

    v27 = sub_188E49160(v27, v24);
  }

  v33 = a1;
  sub_1890147A0(a3, a3, v33);
  swift_endAccess();

  v34 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext;
  v35 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
  if (v35)
  {
    v36 = v35;
    sub_18905B8E8(a2, 1);

    v35 = *(a2 + v34);
  }

  *(a2 + v34) = 0;
}

Swift::Void __swiftcall _GlassGroupView.luminanceDidChange(_:)(Swift::Float_optional *a1)
{
  v2 = (a1 & 0x100000000) == 0;
  v3 = (a1 >> 32) & 1;
  v4 = *&a1;
  v5 = v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v2)
  {
    v4 = 0.0;
  }

  *v5 = v4;
  *(v5 + 8) = v3;
  sub_18905BFDC(v6, v7);
}

void sub_18905D570(unint64_t a1)
{
  v2 = (a1 & 0x100000000) == 0;
  v3 = HIDWORD(a1) & 1;
  v4 = *&a1;
  v5 = v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v2)
  {
    v4 = 0.0;
  }

  *v5 = v4;
  *(v5 + 8) = v3;
  sub_18905BFDC(v6, v7);
}

uint64_t sub_18905D5C0()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry;
  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry);
  }

  else
  {
    type metadata accessor for SDFElementContainerRegistry();
    v2 = swift_allocObject();
    *(v2 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_18905D630(uint64_t a1)
{
  v3 = type metadata accessor for GlassState(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
  swift_beginAccess();
  sub_189063880(v7, v6, type metadata accessor for GlassState);
  swift_beginAccess();
  sub_189063E58(a1, v7, type metadata accessor for GlassState);
  swift_endAccess();
  v8 = *(v4 + 28);
  v9 = &v6[v8];
  v10 = v6[v8 + 8];
  v11 = (v7 + v8);
  v12 = *(v7 + v8 + 8);
  if (v10)
  {
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*v9 != *v11)
  {
    LOBYTE(v12) = 1;
  }

  if (v12)
  {
LABEL_7:
    [v1 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v1 layoutIfNeeded];
    }
  }

LABEL_9:
  sub_1890639A8(a1, type metadata accessor for GlassState);
  return sub_1890639A8(v6, type metadata accessor for GlassState);
}

void sub_18905D7C8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for GlassPair(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_189063880(a2, v12, type metadata accessor for _Glass);
  *&v12[*(v9 + 28)] = a1;
  v13 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v14 = *&v4[v13];
  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_188B65E30(0, v14[2] + 1, 1, v14);
    *&v4[v13] = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_188B65E30((v17 > 1), v18 + 1, 1, v14);
  }

  v14[2] = v18 + 1;
  sub_188B6549C(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, type metadata accessor for GlassPair);
  *&v4[v13] = v14;
  swift_endAccess();
  swift_beginAccess();
  v19 = sub_188B6625C(v15);
  swift_endAccess();
  v20 = type metadata accessor for _ShapeSetTagBox();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v22 = objc_msgSendSuper2(&v28, sel_init);
  v23 = *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
  if (v23)
  {
    [v23 _addTrackedElementFor_with_];
  }

  v24 = *(a2 + 8);
  v25 = *(a2 + 16);

  sub_188B65E58(v24, v25);
  if ((a3 & 1) != 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    v26 = [v4 traitCollection];
    sub_18906330C(v15, a2, 0);
  }
}

void sub_18905DA8C(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188BBAA3C(v8);
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v10 = a1;
  v11 = sub_189062FCC(&v2[v9], v10);

  v12 = *(*&v3[v9] + 16);
  if (v12 < v11)
  {
    __break(1u);
  }

  else
  {
    sub_188BBADE8(v11, v12);
    swift_endAccess();
    [*&v3[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] _removeTrackedElementFor_];
    v13 = sub_18A4A7258();
    [(UIView *)v10 _removeChildTraitCollectionTransformWithIdentifier:v13];

    v14 = sub_189021694();
    if (v14)
    {
      v15 = v14;
      v16 = sub_18A4A7258();
      [(UIView *)v15 _removeChildTraitCollectionTransformWithIdentifier:v16];
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
    MEMORY[0x1EEE9AC00](v17 - 8);
    v19 = &v38[-v18];
    v20 = sub_18A4A2DB8();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = [(UIView *)v10 _traitOverrides];
    v22 = [(_UITraitOverrides *)v21 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    v39 = inited;
    sub_18905BB50(v19);
    v24 = v39;
    v25 = [(UIView *)v10 _traitOverrides];
    v26 = *(v24 + 16);

    [(_UITraitOverrides *)v25 _replaceWithOverrides:v26];

    if ((a2 & 1) != 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      v27 = [v3 superview];
      if (!v27 || (v28 = v27, v29 = [v27 traitCollection], v28, !v29))
      {
        v29 = [v3 traitCollection];
      }

      sub_18906330C(v10, v8, 1);
    }

    else if (!*(*&v3[v9] + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
        swift_beginAccess();
        v33 = *(v31 + v32);

        v34 = sub_188BBA908(v3, v33);
        v36 = v35;

        if ((v36 & 1) == 0)
        {
          swift_beginAccess();
          v37 = sub_188B747B4(v34);
          swift_endAccess();
        }

        [v3 removeFromSuperview];
        swift_unknownObjectRelease();
      }
    }

    sub_1890639A8(v8, type metadata accessor for _Glass);
  }
}

void sub_18905DEA4(void *a1, uint64_t a2)
{
  v55 = a2;
  v4 = type metadata accessor for GlassPair(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v50 - v9;
  v10 = type metadata accessor for _Glass(0);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v56 = (&v50 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - v15;
  v51 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v58 = (&v50 - v18);
  v19 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v57 = v2;
  v20 = *&v2[v19];
  v21 = *(v20 + 16);

  if (v21)
  {
    v22 = 0;
    while (v22 < *(v20 + 16))
    {
      sub_189063880(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, type metadata accessor for GlassPair);
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      if (sub_18A4A7C88())
      {
        goto LABEL_7;
      }

      ++v22;
      sub_1890639A8(v7, type metadata accessor for GlassPair);
      if (v21 == v22)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  __break(1u);
LABEL_7:

  v23 = v54;
  sub_188B6549C(v7, v54, type metadata accessor for GlassPair);
  v24 = v53;
  sub_189063880(v23, v53, type metadata accessor for _Glass);
  sub_1890639A8(v23, type metadata accessor for GlassPair);
  v25 = v58;
  sub_188B6549C(v24, v58, type metadata accessor for _Glass);
  v26 = v56;
  sub_189063880(v55, v56, type metadata accessor for _Glass);
  v27 = objc_opt_self();
  if (![v27 _isInAnimationBlockWithAnimationsEnabled] || *v25 || (v32 = *v26) == 0)
  {
    v28 = [v27 _isInAnimationBlockWithAnimationsEnabled];
    v29 = v57;
    if (v28 && !*v26 && *v25)
    {
      v42 = *v25;
      v43 = [v42 colorWithAlphaComponent_];
      v44 = v52;
      sub_189063880(v26, v52, type metadata accessor for _Glass);

      *v44 = v43;
      sub_188B607CC(a1, v44);
      sub_1890639A8(v44, type metadata accessor for _Glass);
      sub_189063880(v26, v44, type metadata accessor for _Glass);
      v45 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v29;
      *(v46 + 24) = a1;
      sub_188B6549C(v44, v46 + v45, type metadata accessor for _Glass);
      v63 = sub_189063CFC;
      v64 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_188ABD010;
      v62 = &block_descriptor_171_0;
      v47 = _Block_copy(&aBlock);
      v48 = v29;
      v49 = a1;

      [v27 _addCompletion_];

      _Block_release(v47);
      v30 = 0;
      v31 = 0;
      goto LABEL_13;
    }

    v30 = 0;
    v31 = 0;
LABEL_12:
    sub_188B607CC(a1, v26);
LABEL_13:
    sub_1890639A8(v26, type metadata accessor for _Glass);
    sub_1890639A8(v25, type metadata accessor for _Glass);
    sub_188A55B8C(v30, v31);
    return;
  }

  v33 = v52;
  sub_189063880(v26, v52, type metadata accessor for _Glass);
  v34 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v35 = (v51 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v36 = v57;
  *(v31 + 16) = v57;
  *(v31 + 24) = a1;
  sub_188B6549C(v33, v31 + v34, type metadata accessor for _Glass);
  *(v31 + v35) = v32;
  v37 = swift_allocObject();
  v30 = sub_189063D60;
  *(v37 + 16) = sub_189063D60;
  *(v37 + 24) = v31;
  v63 = sub_188E3FE50;
  v64 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_188A4A968;
  v62 = &block_descriptor_181_0;
  v38 = _Block_copy(&aBlock);
  v39 = v32;
  v40 = v36;
  v41 = a1;

  [v27 performWithoutAnimation_];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if ((v38 & 1) == 0)
  {
    v25 = v58;
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
}

id sub_18905E5B0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a4 colorWithAlphaComponent_];
  sub_189063880(a3, v10, type metadata accessor for _Glass);

  *v10 = v11;
  sub_188B607CC(a2, v10);
  sub_1890639A8(v10, type metadata accessor for _Glass);
  return [a1 layoutIfNeeded];
}

void sub_18905E6AC()
{
  v1 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for GlassGroupLayerView(0);
  v18.receiver = v0;
  v18.super_class = v10;
  objc_msgSendSuper2(&v18, sel__prepareForLayerDump);
  v11 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (*(v12 + 16))
  {
    v13 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v6, type metadata accessor for _Glass);
    sub_188B6549C(v6, v9, type metadata accessor for _Glass);
    v14 = *&v0[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
    if (v14)
    {
      v15 = [v14 layer];
      sub_189063880(v9, v3, type metadata accessor for _Glass);
      sub_18A4A72F8();
      v16 = sub_18A4A7258();

      [v15 setName_];
    }

    sub_1890639A8(v9, type metadata accessor for _Glass);
  }
}

void sub_18905E910()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for GlassGroupLayerView(0);
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!*(v2 + 16))
  {
    [v0 setHidden_];
    goto LABEL_5;
  }

  v3 = *(type metadata accessor for GlassPair(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(type metadata accessor for _Glass(0) + 32));
  [v0 setHidden_];
  if ((v5 & 1) == 0)
  {
LABEL_5:
    sub_188B65054();
  }
}

void sub_18905E9F8(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = [v3 layer];
    [v4 setCompositingFilter_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18905EA80(uint64_t a1, uint64_t a2, double a3, uint64_t a4, unint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v230) = a6;
  v238 = a5;
  v226 = a2;
  v219 = a1;
  v237 = sub_18A4A5318();
  v235 = *(v237 - 1);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for GlassPair(0);
  v232 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v10 = (&v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v229);
  v220 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_18A4A6288();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v225 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_18A4A4428();
  v213 = *(v216 - 1);
  MEMORY[0x1EEE9AC00](v216);
  v211 = (&v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v212 = &v210 - v15;
  v239 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v239);
  v234 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v249);
  v246 = (&v210 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v231 = (&v210 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0, &qword_18A64FA60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v210 - v25;
  v27 = [v6 traitCollection];
  v28 = sub_188E1AF8C();

  v29 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v28 + v29, v26, &qword_1EA935CD0, &qword_18A64FA60);

  v30 = sub_18A4A56B8();
  v31 = *(v30 - 8);
  v248 = *(v31 + 48);
  v247 = v31 + 48;
  LODWORD(v28) = (v248)(v26, 1, v30);
  sub_188A3F5FC(v26, &qword_1EA935CD0, &qword_18A64FA60);
  v32 = 0;
  LODWORD(v251) = v28;
  if (v28 != 1)
  {
    v33 = [v7 &selRef_traitCollectionWithPreferredContentSizeCategory_];
    v34 = [v33 glassUserInterfaceStyle];

    v35 = [v7 &selRef_traitCollectionWithPreferredContentSizeCategory_];
    v36 = v35;
    v37 = &selRef_userInterfaceStyle;
    if (v34)
    {
      v37 = &selRef_glassUserInterfaceStyle;
    }

    v32 = [v35 *v37];
  }

  v250 = v32;
  v224 = sub_18A4A3148();
  v223 = *(v224 - 8);
  v38 = MEMORY[0x1EEE9AC00](v224);
  v40 = &v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = [v7 &selRef:v38 traitCollectionWithPreferredContentSizeCategory:?];
  LODWORD(v228) = v7[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground];
  v221 = v7;
  v41 = [v7 &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v42 = sub_188E1AF8C();

  v43 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v42 + v43, v22, &qword_1EA935CD0, &qword_18A64FA60);

  (v248)(v22, 1, v30);
  sub_188A3F5FC(v22, &qword_1EA935CD0, &qword_18A64FA60);
  v247 = *(v226 + 16);
  if (!v247)
  {
    goto LABEL_59;
  }

  v248 = v226 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
  v44 = v246;
  sub_189063880(v248, v246, type metadata accessor for _Glass);
  v45 = v44;
  v46 = v231;
  sub_188B6549C(v45, v231, type metadata accessor for _Glass);
  v47 = v234;
  sub_189063880(v46 + v249[6], v234, type metadata accessor for _Glass._GlassVariant);
  v48 = sub_18A4A2F58();
  v227 = &v210;
  v49 = *(v48 - 8);
  v50 = v49[8];
  v51 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v210 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v49[2];
  v215 = (v49 + 2);
  v214 = v53;
  v54 = (v53)(v52, v47, v48, v51);
  v246 = v50;
  MEMORY[0x1EEE9AC00](v54);
  sub_18A4A2E88();
  v55 = v49[1];
  v243 = (v49 + 1);
  v242 = v55;
  (v55)(v52, v48);
  v56 = v49[4];
  v245 = v48;
  v241 = (v49 + 4);
  v240 = v56;
  v56(v52, v52, v48);
  if (v251 == 1)
  {
    goto LABEL_12;
  }

  if (v250 == 1)
  {
    v57 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (v250 != 2)
    {
      goto LABEL_12;
    }

    v57 = MEMORY[0x1E697DBA8];
  }

  v58 = v213;
  v59 = v211;
  v60 = v216;
  (v213[13])(v211, *v57, v216);
  v61 = v212;
  v62 = (v58[4])(v212, v59, v60);
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = &v210 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18CFDDE70](v61, v63);
  (v58[1])(v61, v60);
  v66 = v245;
  (v242)(v52, v245);
  v240(v52, v65, v66);
LABEL_12:
  v216 = &v210;
  sub_188EB3AA8(aBlock);
  v68 = LOBYTE(aBlock[0]);
  v69 = v239;
  v70 = LOBYTE(aBlock[0]) == *(v234 + *(v239 + 20));
  v222 = v40;
  if (!v70)
  {
    MEMORY[0x1EEE9AC00](v67);
    v72 = &v210 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = sub_18A4A3028();
    v74 = *(v73 - 8);
    MEMORY[0x1EEE9AC00](v73);
    v76 = &v210 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v68 == 1)
    {
      sub_18A4A3008();
    }

    else if (v68 == 2)
    {
      sub_18A4A2FF8();
    }

    else
    {
      sub_18A4A3018();
    }

    sub_18A4A2EE8();
    (*(v74 + 8))(v76, v73);
    v77 = v245;
    (v242)(v52, v245);
    v240(v52, v72, v77);
    v69 = v239;
  }

  v78 = sub_18A4A2FE8();
  v213 = &v210;
  v79 = *(v78 - 8);
  v80 = *(v79 + 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = MEMORY[0x1EEE9AC00](v82);
  (*(v79 + 13))(&v210 - v81, **(&unk_1E70F1FC8 + *(v234 + *(v69 + 24))), v78, v83);
  v84 = (*(v79 + 4))(&v210 - v81, &v210 - v81, v78);
  v85 = MEMORY[0x1EEE9AC00](v84);
  v211 = v79;
  v86 = *(v79 + 2);
  v210 = &v210 - v81;
  v212 = v78;
  v86(&v210 - v81, &v210 - v81, v78, v85);
  sub_18A4A2EC8();
  v87 = v250;
  if (v251 == 1 || (v88 = [v233 userInterfaceStyle], v87 == v88))
  {
    v250 = v233;
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](v88);
  *(&v210 - 2) = v87;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_189063A08;
  *(v89 + 24) = &v210 - 4;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_188C01D50;
  *(v90 + 24) = v89;
  aBlock[4] = sub_188A86D40;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A7AC24;
  aBlock[3] = &block_descriptor_143_0;
  v91 = _Block_copy(aBlock);

  v250 = [v233 traitCollectionByModifyingTraits_];
  _Block_release(v91);
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

LABEL_23:
  ++v235;
  v251 = v232[9];
  v92 = v248;
  v93 = v247;
  do
  {
    sub_189063880(v92, v10, type metadata accessor for GlassPair);
    if (*v10)
    {
      v95 = [*v10 resolvedColorWithTraitCollection_];
      v96 = [v95 CGColor];

      if (v96)
      {
        MEMORY[0x1EEE9AC00](v97);
        v99 = &v210 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (!*(v238 + 16))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_188A403F4(*(v10 + *(v244 + 20)));
        if ((v100 & 1) == 0)
        {
          goto LABEL_57;
        }

        v101 = v96;
        sub_18A4A5E68();
        v102 = v236;
        sub_18A4A5308();
        sub_18A4A5D98();

        v103 = v102;
        v69 = v239;
        (*v235)(v103, v237);
        sub_18A4A2ED8();

        v104 = v245;
        (v242)(v52, v245);
        v240(v52, v99, v104);
      }
    }

    v105 = *(v10 + v249[6] + *(v69 + 28));
    if (v105 && (v106 = [v105 resolvedColorWithTraitCollection_]) != 0)
    {
      v107 = MEMORY[0x1EEE9AC00](v106);
      v109 = &v210 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
      v111 = v110;
      v112 = [v110 CGColor];
      sub_18A4A5E68();
      sub_18A4A2E48();

      v113 = v245;
      (v242)(v52, v245);
      sub_1890639A8(v10, type metadata accessor for GlassPair);
      v94 = (v240)(v52, v109, v113);
    }

    else
    {
      v94 = sub_1890639A8(v10, type metadata accessor for GlassPair);
    }

    v92 += v251;
    --v93;
  }

  while (v93);
  if ((v228 & 1) == 0)
  {
    v114 = sub_18A4A3118();
    v115 = *(v114 - 8);
    MEMORY[0x1EEE9AC00](v114);
    v117 = &v210 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v118);
    v120 = &v210 - v119;
    sub_18A4A30F8();
    v121 = sub_18A4A2EF8();
    sub_188B647BC(v117, v120);
    v122 = *(v115 + 8);
    v122(v120, v114);
    v122(v117, v114);
    v94 = v121(aBlock, 0);
  }

  v123 = MEMORY[0x1EEE9AC00](v94);
  v125 = v245;
  v214(&v210 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v245, v123);
  v126 = v222;
  sub_18A4A2F78();

  v211[1](v210, v212);
  (v242)(v52, v125);
  sub_1890639A8(v234, type metadata accessor for _Glass._GlassVariant);
  sub_1890639A8(v231, type metadata accessor for _Glass);

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4F0, &qword_18A65E380);
  v215 = &v210;
  v128 = MEMORY[0x1EEE9AC00](v127 - 8);
  v130 = (&v210 - v129);
  (*(v223 + 16))(&v210 - v129, v126, v224, v128);
  v131 = v221;
  v132 = v221 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
  swift_beginAccess();
  sub_189060DE4(v131, *(v132 + *(v229 + 20)), *(v132 + *(v229 + 20) + 8), v225);
  v133 = v220;
  sub_189063880(v132, v220, type metadata accessor for GlassState);
  sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38], MEMORY[0x1EEE86B18]);
  v214 = v130;
  sub_18A4A5848();
  sub_18905D630(v133);
  if (v230)
  {
    v134 = sub_18A4A2DB8();
    v212 = &v210;
    v135 = *(v134 - 8);
    MEMORY[0x1EEE9AC00](v134);
    v229 = v136;
    v137 = &v210 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v138 = sub_18A4A3138();
    v139 = *(v138 - 8);
    MEMORY[0x1EEE9AC00](v132);
    v141 = &v210 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
    v213 = v142;
    sub_189063880(v142, v133, type metadata accessor for GlassState);
    sub_18A4A2DC8();
    v143 = sub_18A4A3048();
    (*(*(v143 - 8) + 8))(v133, v143);
    v243 = v137;
    sub_18A4A3128();
    (*(v139 + 8))(v141, v138);
    v235 = (v135 + 16);
    v234 = v135 + 56;
    v242 = (v135 + 48);
    v228 = (v135 + 32);
    v231 = (v135 + 8);
    v144 = 0x1E71B2000;
    v145 = v134;
    v146 = v248;
    v230 = v134;
    while (1)
    {
      v160 = *(v144 + 848);
      v249 = *&v146[*(v244 + 20)];
      v161 = [v249 v160];
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70, &qword_18A654CE0);
      v163 = *(*(v162 - 8) + 64);
      MEMORY[0x1EEE9AC00](v162 - 8);
      v165 = &v210 - v164;
      v166 = sub_188B56DB8();

      v248 = v146;
      v250 = &v210;
      if (v166)
      {
        v167 = *v235;
        v168 = v235 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        (*v235)(v165, &v166[*((*MEMORY[0x1E69E7D40] & *v166) + 0x60)], v145);

        v169 = *v234;
        v170 = v234 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v171 = (*v234)(v165, 0, 1, v145);
      }

      else
      {
        v169 = *v234;
        v170 = v234 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v171 = (*v234)(v165, 1, 1, v145);
        v167 = *v235;
        v168 = v235 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      }

      v246 = &v210;
      v172 = MEMORY[0x1EEE9AC00](v171);
      v173 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
      v174 = &v210 - v173;
      v241 = v167;
      v240 = v168;
      (v167)(&v210 - v173, v243, v145, v172);
      v239 = v169;
      v238 = v170;
      v169(&v210 - v173, 0, 1, v145);
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF68, &qword_18A6602C8);
      v245 = &v210;
      MEMORY[0x1EEE9AC00](v175 - 8);
      v177 = &v210 - v176;
      v179 = *(v178 + 56);
      sub_188A3F29C(v165, &v210 - v176, &qword_1EA935D70, &qword_18A654CE0);
      sub_188A3F29C(&v210 - v173, &v177[v179], &qword_1EA935D70, &qword_18A654CE0);
      v180 = v145;
      v181 = v165;
      v182 = *v242;
      v183 = (*v242)(v177, 1, v145);
      v237 = v182;
      v236 = v163;
      if (v183 == 1)
      {
        sub_188A3F5FC(&v210 - v173, &qword_1EA935D70, &qword_18A654CE0);
        sub_188A3F5FC(v181, &qword_1EA935D70, &qword_18A654CE0);
        if (v182(&v177[v179], 1, v145) != 1)
        {
          goto LABEL_49;
        }

        sub_188A3F5FC(v177, &qword_1EA935D70, &qword_18A654CE0);
        v144 = 0x1E71B2000;
      }

      else
      {
        v233 = v181;
        v232 = &v210;
        MEMORY[0x1EEE9AC00](v183);
        v184 = &v210 - v173;
        sub_188A3F29C(v177, v184, &qword_1EA935D70, &qword_18A654CE0);
        v185 = v182(&v177[v179], 1, v145);
        if (v185 == 1)
        {
          sub_188A3F5FC(v174, &qword_1EA935D70, &qword_18A654CE0);
          sub_188A3F5FC(v233, &qword_1EA935D70, &qword_18A654CE0);
          (*v231)(v184, v145);
LABEL_49:
          v186 = sub_188A3F5FC(v177, &qword_1EA93AF68, &qword_18A6602C8);
LABEL_50:
          v187 = v236;
          v188 = MEMORY[0x1EEE9AC00](v186);
          v189 = &v210 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
          v190 = v241;
          v241(v189, v243, v145, v188);
          (v239)(v189, 0, 1, v145);
          v191 = [(UIView *)v249 _traitOverrides];
          v192 = [(_UITraitOverrides *)v191 _swiftImplCopy];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
          inited = swift_initStackObject();
          *(inited + 16) = v192;
          v254 = inited;
          MEMORY[0x1EEE9AC00](inited);
          sub_188A3F29C(v189, v189, &qword_1EA935D70, &qword_18A654CE0);
          v194 = v237(v189, 1, v145);
          if (v194 == 1)
          {
            v156 = 0;
          }

          else
          {
            v245 = &v210;
            v147 = v229;
            v148 = MEMORY[0x1EEE9AC00](v194);
            v246 = &v210;
            v149 = &v210 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
            v150 = (*v228)(v149, &v210 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0), v145, v148);
            v250 = &v210;
            v151 = MEMORY[0x1EEE9AC00](v150);
            v190(v149, v149, v145, v151);
            v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E30, &qword_18A654CE8);
            v153 = objc_allocWithZone(v152);
            (v190)(v153 + *((*MEMORY[0x1E69E7D40] & *v153) + 0x60), v149, v145);
            v253.receiver = v153;
            v253.super_class = v152;
            v154 = objc_msgSendSuper2(&v253, sel_init);
            v155 = *v231;
            (*v231)(v149, v145);
            v155(v149, v145);
            v156 = v154;
          }

          sub_188B6EDCC(v156);
          sub_188A3F5FC(v189, &qword_1EA935D70, &qword_18A654CE0);
          v157 = v254;
          v158 = [(UIView *)v249 _traitOverrides];
          v159 = *(v157 + 16);

          [(_UITraitOverrides *)v158 _replaceWithOverrides:v159];

          v144 = 0x1E71B2000;
          v145 = v230;
          goto LABEL_40;
        }

        v227 = &v210;
        v195 = MEMORY[0x1EEE9AC00](v185);
        v197 = &v210 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*v228)(v197, &v177[v179], v180, v195);
        sub_188B69068(&qword_1EA93B0E0, MEMORY[0x1EEE868B8], MEMORY[0x1EEE868D0]);
        v198 = sub_18A4A7248();
        v199 = *v231;
        (*v231)(v197, v180);
        v200 = v174;
        v144 = 0x1FB6F1000uLL;
        sub_188A3F5FC(v200, &qword_1EA935D70, &qword_18A654CE0);
        sub_188A3F5FC(v233, &qword_1EA935D70, &qword_18A654CE0);
        v199(v184, v180);
        v186 = sub_188A3F5FC(v177, &qword_1EA935D70, &qword_18A654CE0);
        v145 = v180;
        if ((v198 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

LABEL_40:
      v146 = &v251[v248];
      if (!--v247)
      {
        (*v231)(v243, v145);
        v131 = v221;
        v133 = v220;
        v132 = v213;
        break;
      }
    }
  }

  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF60, &unk_18A6602B8);
  MEMORY[0x1EEE9AC00](v201 - 8);
  v203 = &v210 - v202;
  sub_189063880(v132, v133, type metadata accessor for GlassState);
  v204 = sub_18A4A3048();
  v205 = *(v204 - 8);
  (*(v205 + 32))(v203, v133, v204);
  (*(v205 + 56))(v203, 0, 1, v204);
  sub_189068A90(v226);
  v206 = v214;
  sub_189061088(v131, v203, v219, v207, v208);
  sub_188A3F5FC(v203, &qword_1EA93AF60, &unk_18A6602B8);
  v209 = [v131 traitCollection];
  sub_189063880(v132, v133, type metadata accessor for GlassState);
  sub_188B6D3B0(v133);

  (*(v217 + 8))(v225, v218);
  sub_188A3F5FC(v206, &qword_1EA93A4F0, &qword_18A65E380);
  (*(v223 + 8))(v222, v224);
  (*(v205 + 8))(v133, v204);
}

uint64_t sub_189060DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v22 = a2;
  v24 = a4;
  v6 = sub_18A4A5318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_18A4A5828();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A5788();
  type metadata accessor for UICorePlatformColorDefinition(0);
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5778();
  (*(v14 + 8))(v16, v13);
  v17 = [a1 traitCollection];
  sub_188B0C0A4(v17);

  v18 = [a1 window];
  if (v18)
  {

    v19 = [a1 _undimmedTintColor];
    if (v19)
    {
      v20 = v19;
      sub_18A4A5E38();
      sub_18A4A4EE8();
    }
  }

  sub_18A4A5DB8();
  sub_18A4A5228();
  (*(v7 + 16))(v9, v12, v6);
  sub_18A4A6268();
  v25 = v23 & 1;
  sub_18A4A6278();
  return (*(v7 + 8))(v12, v6);
}

void sub_189061088(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a6@<D2>)
{
  v51 = a2;
  v52 = a1;
  v10 = sub_18A4A6B48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93AF70, &unk_18A6602D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = &v46 - v15;
  v16 = sub_18A4A61E8();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18A4A6B98();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18A4A3148();
  v61 = v19;
  v62 = sub_188B69068(&qword_1ED48CED8, MEMORY[0x1EEE86B38], MEMORY[0x1EEE86B20]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
  v21 = *(*(v19 - 8) + 16);
  v47 = v6;
  v46 = v19;
  v21(boxed_opaque_existential_0, v6, v19);
  v22 = sub_18A4A3048();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF60, &unk_18A6602B8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v46 - v27;
  sub_188A3F29C(v51, &v46 - v27, &qword_1EA93AF60, &unk_18A6602B8);
  if ((*(v23 + 48))(v28, 1, v22) == 1)
  {
    sub_188A3F5FC(v28, &qword_1EA93AF60, &unk_18A6602B8);
  }

  else
  {
    (*(v23 + 32))(v25, v28, v22);
    v58 = sub_18A4A3138();
    v59 = sub_188B69068(&qword_1ED48DB10, MEMORY[0x1EEE86B30], MEMORY[0x1EEE86B28]);
    __swift_allocate_boxed_opaque_existential_0(&v57);
    sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38], MEMORY[0x1EEE86B18]);
    sub_18A4A5838();
    (*(v23 + 8))(v25, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    sub_188A5EBAC(&v57, v60);
  }

  v29 = v53;
  sub_189062BDC(v52, v53);
  if (a4 > a6)
  {
    __break(1u);
  }

  else
  {
    sub_18A4A6B78();
    v30 = v54;
    sub_18A4A61D8();
    sub_18A4A61B8();
    sub_18A4A61C8();
    v31 = v55;
    v32 = v48;
    v33 = v30;
    v34 = v56;
    (*(v55 + 16))(v48, v33, v56);
    (*(v31 + 56))(v32, 0, 1, v34);
    sub_18A4A6B68();
    __swift_project_boxed_opaque_existential_0(v60, v61);
    v35 = sub_18A4A4DE8();
    *&v57 = MEMORY[0x1E69E7CC0];
    v36 = v35[2];
    if (v36)
    {
      v51 = a3;
      v52 = v35;
      v39 = *(v11 + 16);
      v37 = v11 + 16;
      v38 = v39;
      v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v41 = *(v37 + 56);
      do
      {
        v38(v13, v40, v10);
        v42 = sub_188B690B0();
        (*(v37 - 8))(v13, v10);
        sub_188B6D2B8(v42);
        v40 += v41;
        --v36;
      }

      while (v36);

      v43 = v57;
      a3 = v51;
      v29 = v53;
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    *(a3 + 16) = 1;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 117) = 0u;
    *(a3 + 133) = 4;
    *&v57 = sub_18A4A7288();
    *(&v57 + 1) = v44;
    sub_18A4A8048();
    v45 = [objc_opt_self() clearColor];
    (*(v55 + 8))(v54, v56);
    (*(v49 + 8))(v29, v50);
    *a3 = 0xD000000000000010;
    *(a3 + 8) = 0x800000018A6A2090;
    *(a3 + 176) = UIEdgeInsetsZero;
    *(a3 + 208) = v45;
    *(a3 + 216) = xmmword_18A64B730;
    *(a3 + 232) = 1065353216;
    *(a3 + 236) = 256;
    *(a3 + 240) = MEMORY[0x1E69E7CC0];
    *(a3 + 248) = 0;
    *(a3 + 264) = 0;
    *(a3 + 272) = 0;
    *(a3 + 256) = v43;
    *(a3 + 280) = 1;
    *(a3 + 288) = 0;
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }
}

void sub_1890617B4(void *a1, double a2)
{
  v4 = [a1 subviews];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a2;
    v10[4] = sub_188B666EC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_188B66A7C;
    v10[3] = &block_descriptor_134_0;
    v8 = _Block_copy(v10);

    _UITreeDepthFirstTraversal(v5, sel_subviews, 0, v8);
    _Block_release(v8);

    [a1 setUserInteractionEnabled_];
    v9 = [a1 layer];
    [v9 setAllowsHitTesting_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_18906192C()
{
  v2 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934260, &qword_18A64BE70);
    v5 = (type metadata accessor for GlassPair(0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18A64BFB0;
    v8 = v7 + v6;
    v9 = v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass;
    swift_beginAccess();
    sub_189063880(v9, v8, type metadata accessor for _Glass);
    v10 = *(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view);
    *(v8 + v5[7]) = v10;
    v11 = *(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping);
    v12 = *(v2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping + 8);
    v13 = v10;

    sub_18905EA80(v23, v7, v14, v11, v12, 0);
    v16 = v15;

    swift_setDeallocating();
    sub_1890639A8(v8, type metadata accessor for GlassPair);
    swift_deallocClassInstance();

    v23[0] = 0xD000000000000019;
    v23[1] = 0x800000018A6A2020;
    v22 = MEMORY[0x1E69E7CC8];
    v17 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView;
    v18 = *(v2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView);
    sub_188B60AAC(v18, &v22);
    if (v1)
    {
    }

    else
    {

      v19 = *(v2 + v17);
      v20 = *(v9 + *(type metadata accessor for _Glass(0) + 48));
      v21 = v19;
      sub_1890617B4(v21, v20);

      sub_188B66CB0(v16);
    }

    return sub_188B6D288(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_189061BC0()
{
  sub_1890639A8(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass, type metadata accessor for _Glass);

  MEMORY[0x18CFEA6E0](v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_group);

  return swift_deallocClassInstance();
}

void sub_189061C84(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v67 = a4;
  v68 = a5;
  v66 = a3;
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Glass(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v69 = a2;
  v70 = &v62 - v22;
  if (a1)
  {
    sub_189063880(a2, v20, type metadata accessor for _Glass);
  }

  else
  {
    sub_189063880(a2, v17, type metadata accessor for _Glass);
    v64 = *(v10 + 24);
    sub_189063880(&v17[v64], v9, type metadata accessor for _Glass._GlassVariant);
    v23 = sub_18A4A2F58();
    v62 = &v62;
    v24 = v11;
    v25 = *(v23 - 8);
    MEMORY[0x1EEE9AC00](v23);
    v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18A4A2F48();
    v28 = v23;
    a2 = v69;
    (*(v25 + 40))(v9, v27, v28);
    v11 = v24;
    sub_189063DF0(v9, &v17[v64], type metadata accessor for _Glass._GlassVariant);
    v29 = *(a2 + *(v10 + 48));
    sub_189063880(v17, v20, type metadata accessor for _Glass);
    *&v20[*(v10 + 48)] = v29;
    sub_1890639A8(v17, type metadata accessor for _Glass);
  }

  v30 = v70;
  sub_188B6549C(v20, v70, type metadata accessor for _Glass);
  v73 = 0;
  v64 = objc_opt_self();
  sub_189063880(v30, v17, type metadata accessor for _Glass);
  v31 = v65;
  sub_189063880(a2, v65, type metadata accessor for _Glass);
  v32 = *(v11 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v32 + v36 + 8) & ~v32;
  v38 = swift_allocObject();
  v39 = v66;
  *(v38 + 16) = v66;
  sub_188B6549C(v17, v38 + v33, type metadata accessor for _Glass);
  v41 = v67;
  v40 = v68;
  *(v38 + v34) = v67;
  *(v38 + v35) = v40;
  v42 = v40;
  *(v38 + v36) = &v73;
  sub_188B6549C(v31, v38 + v37, type metadata accessor for _Glass);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1890638F0;
  *(v43 + 24) = v38;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_109_0;
  v44 = _Block_copy(aBlock);
  v45 = v39;
  v46 = v41;

  [v64 performWithoutAnimation_];
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v63;
  sub_189063880(v69, v63, type metadata accessor for _Glass);
  v48 = v73;
  if (v73)
  {
    v50 = *v42;
    v49 = v42[1];
    type metadata accessor for GlassGroupLayerView.MaterializeAnimation(0);
    v51 = swift_allocObject();
    *(v51 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = 0;
    swift_unknownObjectWeakInit();
    *(v51 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view) = v46;
    sub_188B6549C(v47, v51 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass, type metadata accessor for _Glass);
    *(v51 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView) = v48;
    swift_unknownObjectWeakAssign();
    v52 = (v51 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping);
    *v52 = v50;
    v52[1] = v49;
    v53 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
    swift_beginAccess();
    v54 = *&v45[v53];
    if ((v54 & 0xC000000000000001) == 0)
    {
      v58 = v46;
      v59 = v48;

      goto LABEL_12;
    }

    if (v54 >= 0)
    {
      v54 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v55 = v46;
    v56 = v48;

    v57 = sub_18A4A7F68();
    if (!__OFADD__(v57, 1))
    {
      *&v45[v53] = sub_18907B990(v54, v57 + 1);
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *&v45[v53];
      sub_188E9DBCC(v51, v46, isUniquelyReferenced_nonNull_native);
      *&v45[v53] = v71;
      swift_endAccess();
      sub_1890639A8(v70, type metadata accessor for _Glass);
      v61 = v73;

      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void sub_18906235C(void *a1, uint64_t a2, void *a3, uint64_t *a4, id *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934260, &qword_18A64BE70);
  v12 = (type metadata accessor for GlassPair(0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18A64BFB0;
  v15 = v14 + v13;
  sub_189063880(a2, v15, type metadata accessor for _Glass);
  *(v15 + v12[7]) = a3;
  v16 = *a4;
  v17 = a4[1];
  v18 = a3;

  sub_18905EA80(v30, v14, v19, v16, v17, 1);
  v21 = v20;

  swift_setDeallocating();
  sub_1890639A8(v15, type metadata accessor for GlassPair);
  swift_deallocClassInstance();

  v30[0] = 0xD000000000000019;
  v30[1] = 0x800000018A6A2020;
  v29 = MEMORY[0x1E69E7CC8];
  v22 = sub_18900CCB0(&v29, 0);

  v23 = *a5;
  *a5 = v22;
  v24 = v22;

  v25 = type metadata accessor for _Glass(0);
  sub_1890617B4(v24, *(a6 + *(v25 + 48)));

  sub_188B66CB0(v21);
  if (!*a5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v26 = [*a5 layer];
  [v26 setZPosition_];

  if (!*a5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [*a5 _addTrackedElementFor_with_];
  if (!*a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = *a5;
  [a1 bounds];
  [v27 setFrame_];

  if (!*a5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [*a5 setAutoresizingMask_];
  if (!*a5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = *a5;
  sub_188B667B4(v28);

  if (!*a5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [a1 addSubview_];
  if (*a5)
  {
    [*a5 layoutIfNeeded];
    sub_188B6D288(v30);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_189062688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = v4;
    if (!v4)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_18906271C(a2);
      }
    }
  }
}

double sub_18906271C(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView) removeFromSuperview];
  v4 = *(a1 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view);
  swift_beginAccess();
  v5 = v4;
  sub_1891E95FC(v5);
  swift_endAccess();

  v6 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  if (!*(*&v2[v6] + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
      swift_beginAccess();
      v11 = *(v9 + v10);

      v12 = sub_188BBA908(v2, v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        swift_beginAccess();
        v15 = sub_188B747B4(v12);
        swift_endAccess();
      }

      [v2 removeFromSuperview];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_189062894(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry] = 0;
  v4 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state];
  sub_18A4A2DF8();
  v6 = &v5[*(type metadata accessor for GlassState(0) + 20)];
  *v6 = 0;
  v6[8] = 1;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] = 1;
  v7 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = 0;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius] = 0;
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] = 0;
  v8 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
  v9 = sub_188B66180(v3);
  *v8 = 2;
  v8[1] = v9;
  v10 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  *&v1[v10] = sub_188E8F624(v3);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for GlassGroupLayerView(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_189062A38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_189062AA0(uint64_t a1)
{
  result = type metadata accessor for _Glass(319);
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

uint64_t sub_189062BDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = sub_18A4A5318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = sub_18A4A5828();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A5788();
  type metadata accessor for UICorePlatformColorDefinition(0);
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5778();
  (*(v12 + 8))(v14, v11);
  v15 = [a1 traitCollection];
  sub_188B0C0A4(v15);

  v16 = [a1 window];
  if (v16)
  {

    v17 = [a1 _undimmedTintColor];
    if (v17)
    {
      v18 = v17;
      sub_18A4A5E38();
      sub_18A4A4EE8();
    }
  }

  sub_18A4A5DB8();
  sub_18A4A5228();
  (*(v5 + 16))(v7, v10, v4);
  sub_18A4A6B58();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_189062EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for GlassPair(0) - 8);
  v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v7 = 0;
  while ((sub_18A4A7C88() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_189062FCC(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for GlassPair(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = *a1;
  result = sub_189062EB4(*a1, a2);
  if (!v2)
  {
    v32[1] = 0;
    if (v17)
    {
      return *(v15 + 16);
    }

    v37 = v14;
    v38 = v5;
    v34 = v8;
    v35 = v11;
    v33 = a1;
    v39 = a2;
    v41 = result;
    v18 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v20 = (v15 + 16);
      v19 = *(v15 + 16);
      if (v18 == v19)
      {
        return v41;
      }

      v36 = v6;
      while (v18 < v19)
      {
        v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v22 = v15;
        v23 = v15 + v21;
        v24 = *(v6 + 72);
        v40 = v24 * v18;
        v25 = v37;
        sub_189063880(v23 + v24 * v18, v37, type metadata accessor for GlassPair);
        sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
        v26 = sub_18A4A7C88();
        result = sub_1890639A8(v25, type metadata accessor for GlassPair);
        if (v26)
        {
          v6 = v36;
          v15 = v22;
        }

        else
        {
          v27 = v41;
          if (v18 == v41)
          {
            v6 = v36;
            v15 = v22;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v20;
            if (v41 >= *v20)
            {
              goto LABEL_25;
            }

            v29 = v24 * v41;
            result = sub_189063880(v23 + v24 * v41, v35, type metadata accessor for GlassPair);
            if (v18 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v40;
            v31 = v34;
            sub_189063880(v23 + v40, v34, type metadata accessor for GlassPair);
            v15 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_189212AD4(v22);
            }

            v6 = v36;
            result = sub_189063DF0(v31, v15 + v21 + v29, type metadata accessor for GlassPair);
            if (v18 >= *(v15 + 16))
            {
              goto LABEL_27;
            }

            result = sub_189063DF0(v35, v15 + v21 + v30, type metadata accessor for GlassPair);
            *v33 = v15;
            v27 = v41;
          }

          v41 = v27 + 1;
        }

        ++v18;
        v20 = (v15 + 16);
        v19 = *(v15 + 16);
        if (v18 == v19)
        {
          return v41;
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
    }

    __break(1u);
  }

  return result;
}

void sub_18906330C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v53) = a3;
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = sub_188B66180(MEMORY[0x1E69E7CC0]);
  v55 = 2;
  v56 = v18;
  if (!*(v18 + 16) || (sub_188A403F4(a1), (v19 & 1) == 0))
  {
    v55 = 4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v18;
    sub_188B662F4(2, a1, isUniquelyReferenced_nonNull_native);
    v18 = aBlock[0];
    v56 = aBlock[0];
  }

  v21 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  swift_beginAccess();
  v22 = *&v4[v21];

  sub_18903A9E8(a1, v22);
  v24 = v23;

  if (!v24)
  {
    sub_189061C84(v53 & 1, a2, v4, a1, &v55);
    v24 = v25;
  }

  v26 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter;
  v27 = *(v24 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v24 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = v29;
    if (!v29)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        sub_18906271C(v24);
      }
    }

    if (v53)
    {
      v50 = type metadata accessor for _Glass;
      v32 = v52;
      sub_189063880(a2, v52, type metadata accessor for _Glass);
      v53 = v18;
      v33 = *(v10 + 24);
      sub_189063880(v32 + v33, v9, type metadata accessor for _Glass._GlassVariant);
      v34 = sub_18A4A2F58();
      v51 = v26;
      v35 = v34;
      v48[1] = v48;
      v49 = a2;
      v36 = v9;
      v37 = v17;
      v38 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v34);
      v40 = v14;
      v41 = v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18A4A2F48();
      v42 = v41;
      v14 = v40;
      (*(v38 + 40))(v36, v42, v35);
      v17 = v37;
      sub_189063DF0(v36, v32 + v33, type metadata accessor for _Glass._GlassVariant);
      v43 = v50;
      v44 = *(v49 + *(v10 + 48));
      sub_189063880(v32, v40, v50);
      *(v40 + *(v10 + 48)) = v44;
      sub_1890639A8(v32, v43);
    }

    else
    {
      sub_189063880(a2, v14, type metadata accessor for _Glass);
    }

    sub_188B6549C(v14, v17, type metadata accessor for _Glass);
    v45 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass;
    swift_beginAccess();
    sub_189063E58(v17, v24 + v45, type metadata accessor for _Glass);
    swift_endAccess();
    sub_18906192C();
    v46 = objc_opt_self();
    aBlock[4] = sub_1890638E8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188ABD010;
    aBlock[3] = &block_descriptor_87;
    v47 = _Block_copy(aBlock);

    [v46 _addCompletion_];
    _Block_release(v47);

    sub_1890639A8(v17, type metadata accessor for _Glass);
  }
}

uint64_t sub_189063880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1890638F0()
{
  v1 = *(type metadata accessor for _Glass(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);

  sub_18906235C(v7, v0 + v3, v8, v9, v10, v0 + ((v2 + v6 + 8) & ~v2));
}

uint64_t sub_1890639A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_189063A18(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_188E1ADFC();
  v5 = v4;

  v6 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v7 = *&a1[v6];
  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
    if (!v8)
    {
LABEL_26:

      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  if (v8 >= 1)
  {
    v9 = v7 & 0xC000000000000001;

    v10 = 0;
    v11 = &unk_1ED48C000;
    v12 = &unk_1ED48C000;
    v27 = v3;
    while (1)
    {
      if (v9)
      {
        v13 = sub_188E49160(v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = &v13[v11[466]];
      v16 = *v15;
      v17 = v15[1];
      *v15 = v3;
      v15[1] = v5;
      if (v13[v12[468]] != 1)
      {
        goto LABEL_5;
      }

      if (v5)
      {
        if (v17)
        {
          v18 = v3 == v16 && v5 == v17;
          if (v18 || (sub_18A4A86C8() & 1) != 0)
          {

            goto LABEL_7;
          }
        }
      }

      else if (!v17)
      {

        goto LABEL_7;
      }

      v19 = *&v14[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
      if (v19)
      {
        v20 = v7;
        v21 = v8;
        v22 = v9;
        v23 = v12;
        v24 = v11;
        v25 = v19;

        v26 = v25;
        sub_188B667B4(v26);

        v11 = v24;
        v12 = v23;
        v9 = v22;
        v8 = v21;
        v7 = v20;
        v3 = v27;
      }

      else
      {
LABEL_5:
      }

LABEL_7:
      if (v8 == ++v10)
      {

        goto LABEL_26;
      }
    }
  }

  __break(1u);
}

void sub_189063C30()
{
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = 0;
  v1 = v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius) = 0;
  sub_18A4A8398();
  __break(1u);
}

id sub_189063D60()
{
  v1 = *(type metadata accessor for _Glass(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18905E5B0(v3, v4, v0 + v2, v5);
}

uint64_t sub_189063DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_189063E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

id sub_189063ECC()
{
  result = **(v0 + 16);
  if (result)
  {
    return [result layoutIfNeeded];
  }

  __break(1u);
  return result;
}

uint64_t sub_189063EF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_189063F94(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  LOBYTE(v16) = 1;
  (*(a3 + 8))(&v18, &v15, a2, a3);
  sub_189065604(&v15);
  v15 = v18;
  v17 = v20;
  v16 = v19;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  swift_unknownObjectWeakInit();
  LOBYTE(v10) = 1;
  (*(v7 + 8))(&v12, &v9, v6, v7);
  sub_189065604(&v9);
  v9 = v12;
  v11 = v14;
  v10 = v13;
  LOBYTE(v6) = sub_189065280(&v15, &v9);
  sub_1890655E0(v9, v10 | (v11 << 16));
  sub_1890655E0(v15, v16 | (v17 << 16));
  return v6 & 1;
}

id _UIResolvedHoverEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 10);
  v4 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id sub_1890640F4(id result, unsigned int a2)
{
  if (((a2 >> 20) & 3) != 3)
  {
    return result;
  }

  return result;
}

id _UIResolvedHoverEffect._makeBridgedEffect()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  type metadata accessor for ___UIResolvedHoverEffect();
  v5 = v4;
  v6 = objc_allocWithZone(v4);
  v7 = &v6[OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value];
  *v7 = v1;
  v7[10] = v2;
  *(v7 + 4) = v3;
  sub_1890640F4(v1, v3 | (v2 << 16));
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1890641C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 10);
  v4 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id sub_1890641E8()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  type metadata accessor for ___UIResolvedHoverEffect();
  v5 = v4;
  v6 = objc_allocWithZone(v4);
  v7 = &v6[OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value];
  *v7 = v1;
  v7[10] = v2;
  *(v7 + 4) = v3;
  sub_1890640F4(v1, v3 | (v2 << 16));
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1890642A4()
{
  v1 = type metadata accessor for ___UIResolvedHoverEffect();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

id sub_1890642F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value);
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value + 10);
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value + 8);
  *a1 = v2;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id UIHoverHighlightEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return v2;
}

char *UIHoverHighlightEffect._makeBridgedEffect()()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverHighlightEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA9305F0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA994EA8;

    return v7;
  }
}

id sub_1890643F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return v2;
}

char *sub_189064404()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverHighlightEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA9305F0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA994EA8;

    return v7;
  }
}

UIKit::UIHoverLiftEffect __swiftcall UIHoverLiftEffect.init(tint:)(UIColor tint)
{
  *v1 = tint.super.isa;
  *&result.tintColor.value.super.isa = *&tint.super.isa;
  result.tintColor.value._cachedStyleString = tint._cachedStyleString;
  return result;
}

id UIHoverLiftEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 16;
  *(a1 + 8) = 0;
  return v2;
}

char *UIHoverLiftEffect._makeBridgedEffect()()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverLiftEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA931E98 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA995180;

    return v7;
  }
}

id sub_189064594@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 16;
  *(a1 + 8) = 0;
  return v2;
}

char *sub_1890645AC()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverLiftEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA931E98 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA995180;

    return v7;
  }
}

void UIHoverAutomaticEffect._resolve(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([Strong _preferredHoverEffect])
      {
        ObjectType = swift_getObjectType();
        v7 = swift_conformsToProtocol2();
        if (v7)
        {
          v8 = *(v7 + 24);
          v9 = v7;
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v15 = AssociatedConformanceWitness;
          __swift_allocate_boxed_opaque_existential_0(&v13);
          swift_unknownObjectRetain();
          v8(ObjectType, v9);
          swift_unknownObjectRelease();
          sub_188A5EBAC(&v13, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_0(v16, v17);
          (*(AssociatedConformanceWitness + 8))(a1, v11, v12);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  *a2 = 1;
  *(a2 + 10) = 48;
  *(a2 + 8) = 0;
}

id UIHoverAutomaticEffect._makeBridgedEffect()()
{
  if (qword_1EA931E88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA995178;

  return v1;
}

id sub_189064890()
{
  if (qword_1EA931E88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA995178;

  return v1;
}

void UIPointerEffect._resolve(in:)(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10) << 16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 16 * ((v2 & 0xC00000) == 0x800000);
}

id UIPointerEffect._makeBridgedEffect()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  if ((v2 >> 6) <= 1u || v2 >> 6 == 2)
  {
    v3 = [objc_opt_self() effectWithPreview_];

    return v3;
  }

  else
  {
    v5 = *(v0 + 4) | (*(v0 + 10) << 16);
    v6 = [objc_opt_self() effectWithPreview_];
    [v6 setPreferredTintMode_];
    [v6 setPrefersShadow_];
    [v6 setPrefersScaledContent_];
    return v6;
  }
}

void sub_189064A54(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10) << 16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 16 * ((v2 & 0xC00000) == 0x800000);
}

void UIHoverEmptyEffect._resolve(in:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 10) = 48;
  *(a1 + 8) = 0;
}

id UIHoverEmptyEffect._makeBridgedEffect()()
{
  v0 = objc_allocWithZone(UIHoverEmptyEffect);

  return [v0 init];
}

void sub_189064ACC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 10) = 48;
  *(a1 + 8) = 0;
}

id sub_189064AE0()
{
  v0 = objc_allocWithZone(UIHoverEmptyEffect);

  return [v0 init];
}

id sub_189064B54()
{
  result = [objc_allocWithZone(UIHoverAutomaticEffect) init];
  qword_1EA995178 = result;
  return result;
}

id sub_189064BC4()
{
  result = [objc_allocWithZone(UIHoverHighlightEffect) init];
  qword_1EA994EA8 = result;
  return result;
}

id sub_189064C54(char *a1, uint64_t a2, void *a3, objc_class **a4)
{
  *&a1[*a3] = 0;
  v4 = *a4;
  v6.receiver = a1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_189064C90()
{
  result = [objc_allocWithZone(UIHoverLiftEffect) init];
  qword_1EA995180 = result;
  return result;
}

char *sub_189064D18(uint64_t a1, uint64_t a2, void *a3, Class *a4, void *a5)
{
  v7 = objc_allocWithZone(*a4);
  v8 = a3;
  v9 = [v7 init];
  v10 = *&v9[*a5];
  *&v9[*a5] = v8;

  return v9;
}

id sub_189064DD8()
{
  result = [objc_allocWithZone(UIHoverEmptyEffect) init];
  qword_1EA995188 = result;
  return result;
}

id sub_189064E50@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___UIHoverHighlightEffect_tintColor);
  *a1 = v2;
  return v2;
}

uint64_t getEnumTagSinglePayload for ToolbarButtonBarElement.Spacer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ToolbarButtonBarElement.Spacer(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_5UIKit22_UIResolvedHoverEffectV5ValueO(uint64_t a1)
{
  v1 = (*(a1 + 10) >> 4) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_18906504C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_189065094(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1890650F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFD && *(a1 + 11))
  {
    return (*a1 + 262141);
  }

  v3 = (((*(a1 + 10) << 12) >> 16) & 3 | (4 * ((*(a1 + 8) >> 3) & 0x1FC0 | (*(a1 + 8) >> 2) | (((*(a1 + 10) >> 1) & 0x1F) << 13)))) ^ 0x3FFFF;
  if (v3 >= 0x3FFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_189065168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFC)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 262141;
    if (a3 >= 0x3FFFD)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFD)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) - (a2 << 16);
      *result = 0;
      *(result + 10) = (v3 >> 12) & 0x3E;
      *(result + 8) = (8 * v3) & 0xFE00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_1890651EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = *(result + 2);
  *result = v2;
  *(result + 2) = ((v2 | (v3 << 16)) & 0xFFCFFFFF) >> 16;
  return result;
}

uint64_t sub_18906520C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8);
    result += 8;
    v3 = (v2 | (*(result + 2) << 16)) & 0xC10103 | (a2 << 20);
    *result = v2 & 0x103;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 3;
    *(result + 10) = 48;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_189065280(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 10);
  v4 = *(a1 + 4) | (v3 << 16);
  v5 = *a2;
  v6 = *(a2 + 8) | (*(a2 + 10) << 16);
  v7 = (v3 >> 4) & 3;
  if (v7 <= 1)
  {
    if (v7)
    {
      if ((v6 & 0x300000) == 0x100000)
      {
        if (v2)
        {
          if (!v5)
          {
            goto LABEL_6;
          }

LABEL_14:
          sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
          sub_1890640F4(v5, v6);
          sub_1890640F4(v2, v4);
          sub_1890640F4(v5, v6);
          sub_1890640F4(v2, v4);
          v13 = sub_18A4A7C88();
          sub_1890655E0(v2, v4);
          sub_1890655E0(v5, v6);
          sub_1890655E0(v2, v4);
          sub_1890655E0(v5, v6);
          if ((v13 & 1) == 0)
          {
LABEL_58:
            v10 = 0;
            return v10 & 1;
          }

LABEL_41:
          v10 = 1;
          return v10 & 1;
        }

LABEL_40:
        v20 = v5;
        sub_1890640F4(v5, v6);
        sub_1890640F4(0, v4);
        sub_1890655E0(0, v4);
        sub_1890655E0(v5, v6);
        if (v5)
        {
LABEL_57:
          sub_1890655E0(v5, v6);
          goto LABEL_58;
        }

        goto LABEL_41;
      }
    }

    else if ((v6 & 0x300000) == 0)
    {
      if (v2)
      {
        if (!v5)
        {
LABEL_6:
          sub_1890640F4(0, *(a2 + 8) | (*(a2 + 10) << 16));
          sub_1890640F4(0, v6);
          v8 = v2;
          v9 = v4;
LABEL_56:
          sub_1890640F4(v8, v9);
          sub_1890655E0(v2, v4);
          goto LABEL_57;
        }

        goto LABEL_14;
      }

      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (v7 == 2)
  {
    if ((v6 & 0x300000) != 0x200000)
    {
LABEL_26:
      v17 = v2;
LABEL_55:
      v8 = v5;
      v9 = v6;
      goto LABEL_56;
    }

    v27 = *a1;
    v28 = v4;
    v29 = BYTE2(v4) & 0xCF;
    v24 = v5;
    v26 = (v6 & 0xFFCFFFFF) >> 16;
    v25 = v6;
    sub_1890640F4(v5, v6);
    sub_1890640F4(v2, v4);
    sub_1890640F4(v5, v6);
    sub_1890640F4(v2, v4);
    v10 = _s5UIKit15UIPointerEffectO2eeoiySbAC_ACtFZ_0(&v27, &v24);
    sub_1890655E0(v2, v4);
    sub_1890655E0(v5, v6);
    sub_1890655E0(v5, v6);
    v11 = v2;
    v12 = v4;
    goto LABEL_10;
  }

  v14 = v6 & 0x300000;
  if (__PAIR128__(3145728, 1) >= __PAIR128__(v4 << 40 >> 40, v2))
  {
    if (v2 | v4 & 0xFFFFFF ^ 0x300000)
    {
      v21 = v14 == 3145728 && v5 == 1;
      if (!v21 || (v6 & 0xFFFFFF) != 0x300000)
      {
        goto LABEL_55;
      }

      sub_1890655E0(*a1, v4);
      v10 = 1;
      v11 = 1;
      v12 = 3145728;
LABEL_10:
      sub_1890655E0(v11, v12);
      return v10 & 1;
    }

    v15 = v14 == 3145728 && v5 == 0;
    if (!v15 || (v6 & 0xFFFFFF) != 0x300000)
    {
      goto LABEL_55;
    }

    sub_1890655E0(*a1, v4);
    v16 = 0;
LABEL_39:
    sub_1890655E0(v16, 0x300000u);
    v10 = 1;
    return v10 & 1;
  }

  if ((v4 & 0xFFFFFF) == 0x300000 && v2 == 2)
  {
    v19 = v14 == 3145728 && v5 == 2;
    if (!v19 || (v6 & 0xFFFFFF) != 0x300000)
    {
      goto LABEL_55;
    }

    sub_1890655E0(*a1, v4);
    v16 = 2;
    goto LABEL_39;
  }

  v22 = v14 == 3145728 && v5 == 3;
  if (!v22 || (v6 & 0xFFFFFF) != 0x300000)
  {
    goto LABEL_55;
  }

  result = sub_18A4A8758();
  __break(1u);
  return result;
}