Swift::Int sub_100026AA8()
{
  v1 = *v0;
  sub_1000509E0();
  sub_1000509F0(v1);
  return sub_100050A00();
}

Swift::Int sub_100026AF0(uint64_t a1)
{
  v2 = *v1;
  sub_1000509E0();
  sub_1000509F0(v2);
  return sub_100050A00();
}

unint64_t sub_100026B44()
{
  result = sub_1000427D8(&off_100071290);
  static PPM_0_2_1.VDAFType.rangesByEnumVals = result;
  return result;
}

uint64_t *PPM_0_2_1.VDAFType.rangesByEnumVals.unsafeMutableAddressor()
{
  if (qword_10007C5E8 != -1)
  {
    swift_once();
  }

  return &static PPM_0_2_1.VDAFType.rangesByEnumVals;
}

uint64_t sub_100026BE0(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100026C60(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static PPM_0_2_1.VDAFType.rangesByEnumVals.modify(uint64_t a1))()
{
  if (qword_10007C5E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100026D74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

__n128 PPM_0_2_1.PrioPiRapporConfig.alpha1.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 80);
  return result;
}

__n128 PPM_0_2_1.PrioPiRapporConfig.init(dimension:prime:alpha0:alpha1:)@<Q0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v7[7] = *a4;
  *&v7[23] = *(a4 + 16);
  v7[39] = *(a4 + 32);
  *a5 = a1;
  *(a5 + 4) = a2;
  v5 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v5;
  *(a5 + 40) = *(a3 + 32);
  result = *v7;
  *(a5 + 73) = *&v7[32];
  *(a5 + 57) = *&v7[16];
  *(a5 + 41) = *v7;
  return result;
}

__n128 PPM_0_2_1.PrioPiRapporConfig.init<A>(from:with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<X3>)
{
  v11 = sub_10001F16C();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v11, a5, &v19);
  if (!v5)
  {
    v13 = v19;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a3, v11, a5, &v19);
    v14 = v19;
    if ((a2 & &_mh_execute_header) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v15 & 0xFFFFFEFF | (((((a2 & &_mh_execute_header) >> 32) | (a2 >> 8)) & 1) << 8), a3, v20, a5);
    if ((a2 & &_mh_execute_header) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = BYTE2(a2);
    }

    PPM_0_2_1.RealNumber.init<A>(from:with:)(a1, v16 & 0xFFFFFEFF | (((((a2 & &_mh_execute_header) >> 32) | BYTE3(a2)) & 1) << 8), a3, v22, a5);
    *&v18[7] = v22[0];
    *&v18[23] = v22[1];
    v18[39] = v23;
    *a4 = v13;
    *(a4 + 4) = v14;
    v17 = v20[1];
    *(a4 + 8) = v20[0];
    *(a4 + 24) = v17;
    *(a4 + 40) = v21;
    result = *v18;
    *(a4 + 73) = *&v18[32];
    *(a4 + 57) = *&v18[16];
    *(a4 + 41) = *v18;
  }

  return result;
}

double sub_1000270B4@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<X3>)
{
  v7 = *a2;
  v13 = *(a2 + 4);
  *&result = PPM_0_2_1.PrioPiRapporConfig.init<A>(from:with:)(a1, v7 | (v13 << 32), a3, v11, a5).n128_u64[0];
  if (!v5)
  {
    v9 = v11[3];
    *(a4 + 32) = v11[2];
    *(a4 + 48) = v9;
    *(a4 + 64) = v11[4];
    *(a4 + 80) = v12;
    result = *v11;
    v10 = v11[1];
    *a4 = v11[0];
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_100027124(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s19DPSubmissionService9PPM_0_2_1V18PrioPiRapporConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9) & 1;
}

unint64_t sub_100027208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  result = sub_10002D31C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10002732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_10002D220(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 4) = BYTE4(result);
    *(a4 + 8) = v7;
  }

  return result;
}

uint64_t sub_100027470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_10002D3D4(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 4) = BYTE4(result);
    *(a4 + 8) = v7;
    *(a4 + 12) = BYTE4(v7);
  }

  return result;
}

uint64_t PPM_0_2_1.PINEConfig.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_10002CFB8(a1, a3, a4);
  if (v4)
  {
    return v6 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000275E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_10002CFB8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 28) = WORD2(v9);
  }

  return result;
}

uint64_t sub_1000276FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_10002D508(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v7;
  }

  return result;
}

__n128 PPM_0_2_1.VDAFConfig.VDAFTypeSelector.prio_pirapporProp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = *(v1 + 136);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t PPM_0_2_1.VDAFConfig.VDAFTypeSelector.encodedLength(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 14)
  {
    v10 = 0x800000010005B280;
    sub_10001C55C();
    swift_allocError();
    *v11 = 0xD000000000000034;
    *(v11 + 8) = 0x800000010005B280;
    v12 = 1;
  }

  else
  {
    switch(a1)
    {
      case 0:
        if (*v8)
        {
          v10 = 0x800000010005B5D0;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD000000000000027;
          goto LABEL_34;
        }

        return 0;
      case 1:
        if (*(v8 + 2))
        {
          v10 = 0x800000010005B5A0;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD000000000000025;
          goto LABEL_34;
        }

        return 1;
      case 2:
        if (*(v8 + 16))
        {
          goto LABEL_20;
        }

        return 9;
      case 3:
        if (*(v8 + 28))
        {
          v10 = 0x800000010005B540;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD00000000000002BLL;
          goto LABEL_34;
        }

        return 8;
      case 4:
        if (*(v8 + 32))
        {
          v10 = 0x800000010005B510;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD000000000000023;
          goto LABEL_34;
        }

        return 2;
      case 5:
        v17 = *(v8 + 40);
        v10 = 4;
        if (v17)
        {
          v18 = 0x800000010005B4E0;
          sub_10001C55C();
          swift_allocError();
          v20 = 0xD000000000000021;
          goto LABEL_29;
        }

        return v10;
      case 6:
        v22 = *(v8 + 48);
        v10 = 4;
        if (v22)
        {
          v18 = 0x800000010005B4B0;
          sub_10001C55C();
          swift_allocError();
          v20 = 0xD000000000000029;
LABEL_29:
          *v19 = v20;
          *(v19 + 8) = v18;
          *(v19 + 16) = 4;
          goto LABEL_37;
        }

        return v10;
      case 7:
        v16 = *(v8 + 64);
        if (v16 == 4)
        {
LABEL_20:
          v10 = (v15 - 32) | 0x8000000000000000;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD000000000000029;
          goto LABEL_34;
        }

        v25 = *(v8 + 56);
        v26 = *(v8 + 88);
        v27 = *(v8 + 120);
        v33 = *(v8 + 104);
        v34 = v27;
        v35 = *(v8 + 136);
        v28 = *(v8 + 72);
        v32 = v26;
        v31 = v28;
        v30[0] = v25;
        v30[1] = v16;
        v10 = v30;
        v29 = sub_10002BB6C(a1, a2, a3, a4);
        if (!v9)
        {
          return v29;
        }

        return v10;
      case 8:
        if ((*(v8 + 153) & 1) == 0)
        {
          return 10;
        }

        v10 = 0x800000010005B430;
        sub_10001C55C();
        swift_allocError();
        v13 = 0xD000000000000048;
        goto LABEL_34;
      case 9:
        if (*(v8 + 169))
        {
          v10 = 0x800000010005B3E0;
          sub_10001C55C();
          swift_allocError();
          v13 = 0xD00000000000004FLL;
          goto LABEL_34;
        }

        return 10;
      case 10:
        if ((*(v8 + 206) & 1) == 0)
        {
          return 30;
        }

        goto LABEL_32;
      case 11:
        if ((*(v8 + 238) & 1) == 0)
        {
          return 30;
        }

        goto LABEL_32;
      case 12:
        if ((*(v8 + 270) & 1) == 0)
        {
          return 30;
        }

LABEL_32:
        v10 = (v14 - 32) | 0x8000000000000000;
        sub_10001C55C();
        swift_allocError();
        v21 = 18;
        goto LABEL_33;
      case 13:
        if ((*(v8 + 284) & 1) == 0)
        {
          return 12;
        }

        v10 = 0x800000010005B2E0;
        sub_10001C55C();
        swift_allocError();
        v21 = 22;
LABEL_33:
        v13 = v21 | 0xD000000000000029;
LABEL_34:
        *v11 = v13;
        *(v11 + 8) = v10;
LABEL_35:
        v12 = 4;
        break;
      default:
        v24 = a1;
        sub_1000508F0(31);
        v37._countAndFlagsBits = 0xD00000000000001BLL;
        v37._object = 0x800000010005B2C0;
        sub_100050770(v37);
        v36 = v24;
        sub_100050900();
        v38._countAndFlagsBits = 11872;
        v38._object = 0xE200000000000000;
        sub_100050770(v38);
        v10 = 0;
        sub_10001C55C();
        swift_allocError();
        *v11 = 0;
        *(v11 + 8) = 0xE000000000000000;
        goto LABEL_35;
    }
  }

  *(v11 + 16) = v12;
LABEL_37:
  swift_willThrow();
  return v10;
}

void PPM_0_2_1.VDAFConfig.VDAFTypeSelector.encode<A>(into:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 14)
  {
    sub_10001C55C();
    swift_allocError();
    *v7 = 0xD000000000000034;
    *(v7 + 8) = 0x800000010005B280;
    v8 = 1;
  }

  else
  {
    switch(a2)
    {
      case 0:
        if (*v6)
        {
          v9 = 0x800000010005B5D0;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD000000000000027;
          goto LABEL_33;
        }

        PPM_0_2_1.Extension.extensionType.getter();
        return;
      case 1:
        if (*(v6 + 2))
        {
          v9 = 0x800000010005B5A0;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD000000000000025;
          goto LABEL_33;
        }

        v19 = a6;
        v20 = a5;
        v21 = a1;
        v22 = sub_10001F214();
        v23 = &type metadata for UInt8;
        goto LABEL_51;
      case 2:
        if (*(v6 + 16))
        {
          goto LABEL_28;
        }

        sub_10002C574(a1, *(v6 + 4) | (*(v6 + 8) << 32), *(v6 + 12), a5, a6);
        return;
      case 3:
        if (*(v6 + 28))
        {
          v9 = 0x800000010005B540;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD00000000000002BLL;
          goto LABEL_33;
        }

        sub_10002C658(a1, *(v6 + 20), a5, a6);
        return;
      case 4:
        if (*(v6 + 32))
        {
          v9 = 0x800000010005B510;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD000000000000023;
          goto LABEL_33;
        }

        v19 = a6;
        v20 = a5;
        v21 = a1;
        v22 = sub_10001F1C0();
        v23 = &type metadata for UInt16;
        goto LABEL_51;
      case 5:
        if ((*(v6 + 40) & 1) == 0)
        {
          goto LABEL_50;
        }

        v9 = 0x800000010005B4E0;
        sub_10001C55C();
        swift_allocError();
        v10 = 0xD000000000000021;
        goto LABEL_33;
      case 6:
        if (*(v6 + 48))
        {
          goto LABEL_28;
        }

LABEL_50:
        v19 = a6;
        v20 = a5;
        v21 = a1;
        v22 = sub_10001F16C();
        v23 = &type metadata for UInt32;
LABEL_51:
        sub_10001E960(v21, v23, v20, v22, v19);
        return;
      case 7:
        if (*(v6 + 64) != 4)
        {
          sub_10002C6FC(a1, a5, a6);
          return;
        }

LABEL_28:
        v9 = (v12 - 32) | 0x8000000000000000;
        sub_10001C55C();
        swift_allocError();
        v10 = 0xD000000000000029;
        goto LABEL_33;
      case 8:
        if (*(v6 + 153))
        {
          v9 = 0x800000010005B430;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD000000000000048;
          goto LABEL_33;
        }

        v24 = *(v6 + 152);
        v25 = *(v6 + 148);
        v26 = *(v6 + 144);
        v27 = *(v6 + 140);
        goto LABEL_55;
      case 9:
        if (*(v6 + 169))
        {
          v9 = 0x800000010005B3E0;
          sub_10001C55C();
          swift_allocError();
          v10 = 0xD00000000000004FLL;
          goto LABEL_33;
        }

        v24 = *(v6 + 168);
        v25 = *(v6 + 164);
        v26 = *(v6 + 160);
        v27 = *(v6 + 156);
LABEL_55:
        sub_10002C7FC(a1, v27 | (v26 << 32), v25 | (v24 << 32), a5, a6);
        return;
      case 10:
        if (*(v6 + 206))
        {
          goto LABEL_31;
        }

        v14 = *(v6 + 204);
        v15 = *(v6 + 184);
        v16 = *(v6 + 192);
        v17 = *(v6 + 176);
        v18 = *(v6 + 200);
        goto LABEL_53;
      case 11:
        if (*(v6 + 238))
        {
          goto LABEL_31;
        }

        v14 = *(v6 + 236);
        v15 = *(v6 + 216);
        v16 = *(v6 + 224);
        v17 = *(v6 + 208);
        v18 = *(v6 + 232);
        goto LABEL_53;
      case 12:
        if (*(v6 + 270))
        {
LABEL_31:
          v9 = (v11 - 32) | 0x8000000000000000;
          sub_10001C55C();
          swift_allocError();
          v13 = 18;
          goto LABEL_32;
        }

        v14 = *(v6 + 268);
        v15 = *(v6 + 248);
        v16 = *(v6 + 256);
        v17 = *(v6 + 240);
        v18 = *(v6 + 264);
LABEL_53:
        sub_10002C248(a1, v17, v15, v16, v18 | (v14 << 32), a5, a6);
        return;
      case 13:
        if ((*(v6 + 284) & 1) == 0)
        {
          sub_10002C910(a1, *(v6 + 272), *(v6 + 280), a5, a6);
          return;
        }

        v9 = 0x800000010005B2E0;
        sub_10001C55C();
        swift_allocError();
        v13 = 22;
LABEL_32:
        v10 = v13 | 0xD000000000000029;
LABEL_33:
        *v7 = v10;
        *(v7 + 8) = v9;
LABEL_34:
        v8 = 4;
        break;
      default:
        sub_1000508F0(31);
        v28._countAndFlagsBits = 0xD00000000000001BLL;
        v28._object = 0x800000010005B2C0;
        sub_100050770(v28);
        sub_100050900();
        v29._countAndFlagsBits = 11872;
        v29._object = 0xE200000000000000;
        sub_100050770(v29);
        sub_10001C55C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0xE000000000000000;
        goto LABEL_34;
    }
  }

  *(v7 + 16) = v8;
  swift_willThrow();
}

void PPM_0_2_1.VDAFConfig.VDAFTypeSelector.init<A>(from:with:)(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a2 == 14)
  {
    sub_10001C55C();
    swift_allocError();
    *v7 = 0xD000000000000034;
    *(v7 + 8) = 0x800000010005B280;
    v8 = 1;
LABEL_3:
    *(v7 + 16) = v8;
    swift_willThrow();
  }

  else
  {
    switch(a2)
    {
      case 0:
        PPM_0_2_1.Extension.extensionType.getter();
        if (v6)
        {
          return;
        }

        v10 = 0;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        LOBYTE(v87) = 0;
        v25 = 1;
        v82 = 1;
        v81 = 1;
        v26 = 1;
        v27 = 1;
        v28 = xmmword_1000557B0;
        v29 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 1;
        v35 = 1;
        goto LABEL_36;
      case 1:
        v60 = sub_10001F214();
        v10 = 1;
        CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a4, v60, a5, &v87);
        if (v6)
        {
          return;
        }

        v25 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v102 = v87;
        v44 = 1;
        v26 = 1;
        v27 = 1;
        v28 = xmmword_1000557B0;
        v29 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 1;
        v35 = 1;
        goto LABEL_30;
      case 2:
        v55 = sub_10002D220(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v102 = 0;
        v40 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v81 = 1;
        *(&v80 + 1) = v55 & 0xFFFFFFFFFFLL;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v28 = xmmword_1000557B0;
        v34 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v35 = 1;
        v25 = 1;
        v41 = 1;
        v42 = 1;
        v76 = v56;
        goto LABEL_38;
      case 3:
        v57 = sub_10002D31C(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v42 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v81 = 1;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v28 = xmmword_1000557B0;
        v34 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v35 = 1;
        v25 = 1;
        v41 = 1;
        v40 = 1;
        v43 = 1;
        v44 = 1;
        v75 = v57;
        goto LABEL_39;
      case 4:
        v47 = sub_10001F1C0();
        v10 = 1;
        CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a4, v47, a5, &v87);
        if (v6)
        {
          return;
        }

        v102 = 0;
        HIDWORD(v80) = 0;
        v76 = 0;
        v75 = 0;
        v43 = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(&v80 + 4) = v87;
        v44 = 1;
        v26 = 1;
        v27 = 1;
        v28 = xmmword_1000557B0;
        v29 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 1;
        v35 = 1;
        v41 = 1;
        v25 = 1;
        v40 = 1;
        v42 = 1;
        v48 = 1;
        goto LABEL_40;
      case 5:
        v63 = sub_10001F16C();
        v10 = 1;
        CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a4, v63, a5, &v87);
        if (v6)
        {
          return;
        }

        v102 = 0;
        v80 = 0uLL;
        v76 = 0;
        v74 = 0;
        v75 = 0;
        v79 = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v101 = v87;
        v86 = 0;
        v85 = 1;
        goto LABEL_29;
      case 6:
        v68 = sub_10001F16C();
        v10 = 1;
        CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a4, v68, a5, &v87);
        if (v6)
        {
          return;
        }

        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v79 = 0;
        LODWORD(v80) = v87;
        v86 = 1;
        v85 = 0;
LABEL_29:
        v44 = v86;
        v26 = v85;
        v27 = 1;
        v29 = 1;
        v28 = xmmword_1000557B0;
        v34 = 1;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v35 = 1;
        v25 = 1;
LABEL_30:
        v41 = 1;
        v40 = 1;
        v42 = 1;
        v43 = 1;
        v48 = 1;
        goto LABEL_40;
      case 7:
        PPM_0_2_1.PrioPiRapporConfig.init<A>(from:with:)(a1, (a3 >> 16) | ((HIWORD(a3) & 1) << 32), a4, v99, a5);
        if (v6)
        {
          return;
        }

        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v28 = v99[0];
        v30 = v99[1];
        v31 = v99[2];
        v32 = v99[3];
        v33 = v99[4];
        v79 = v100;
        v10 = 1;
        LOBYTE(v87) = 1;
        v81 = 1;
        v25 = 1;
        v40 = 1;
        v42 = 1;
        v43 = 1;
        v44 = 1;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v34 = 1;
        v35 = 1;
        v41 = 1;
        goto LABEL_39;
      case 8:
        v71 = sub_10002D3D4(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v11 = v72;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v84 = 0;
        v83 = 1;
        v82 = 1;
        v78 = v71 & 0xFFFFFFFFFFLL;
        goto LABEL_35;
      case 9:
        v53 = sub_10002D3D4(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v12 = v54;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v78 = 0;
        v11 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v84 = 1;
        v83 = 0;
        v82 = 1;
        v77 = v53 & 0xFFFFFFFFFFLL;
LABEL_35:
        v81 = 1;
        v26 = 1;
        v27 = v84;
        v29 = v83;
        v34 = 1;
        v28 = xmmword_1000557B0;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v35 = 1;
        v25 = 1;
        goto LABEL_36;
      case 10:
        v69 = sub_10002CFB8(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v81 = 1;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v34 = 0;
        v35 = 1;
        v30 = 0uLL;
        v28 = xmmword_1000557B0;
        v25 = 1;
        v40 = 1;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v41 = 1;
        v42 = 1;
        v73 = v70;
        v74 = v69;
        goto LABEL_38;
      case 11:
        v36 = sub_10002CFB8(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v16 = v37;
        v17 = v38;
        v18 = v39;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v81 = 1;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v34 = 1;
        v35 = 0;
        v30 = 0uLL;
        v28 = xmmword_1000557B0;
        v25 = 1;
        v40 = 1;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v41 = 1;
        v42 = 1;
        v43 = 1;
        v44 = 1;
        v15 = v36;
        goto LABEL_39;
      case 12:
        v49 = sub_10002CFB8(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v19 = v49;
        v20 = v50;
        v21 = v51;
        v22 = v52;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v23 = 0;
        v24 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v82 = 0;
        v81 = 1;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v34 = 1;
        v35 = 1;
        v30 = 0uLL;
        v28 = xmmword_1000557B0;
        v25 = 1;
        v40 = 1;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        goto LABEL_37;
      case 13:
        v64 = sub_10002D508(a1, a4, a5);
        if (v6)
        {
          return;
        }

        v23 = v64;
        v24 = v65;
        v102 = 0;
        *(&v80 + 1) = 0;
        v76 = 0;
        v75 = 0;
        WORD2(v80) = 0;
        v101 = 0;
        v79 = 0;
        LODWORD(v80) = 0;
        v77 = 0;
        v78 = 0;
        v11 = 0;
        v12 = 0;
        v73 = 0;
        v74 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v10 = 1;
        LOBYTE(v87) = 1;
        v82 = 1;
        v81 = 0;
        v26 = 1;
        v27 = 1;
        v29 = 1;
        v34 = 1;
        v35 = 1;
        v30 = 0uLL;
        v28 = xmmword_1000557B0;
        v25 = 1;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
LABEL_36:
        v40 = 1;
LABEL_37:
        v41 = v82;
        v42 = 1;
LABEL_38:
        v43 = 1;
        v44 = 1;
LABEL_39:
        v48 = v81;
LABEL_40:
        *a6 = v10;
        *(a6 + 1) = v102;
        *(a6 + 2) = v25;
        *(a6 + 4) = *(&v80 + 1);
        *(a6 + 12) = v76;
        *(a6 + 16) = v40;
        *(a6 + 20) = v75;
        *(a6 + 28) = v42;
        *(a6 + 30) = WORD2(v80);
        *(a6 + 17) = v97;
        *(a6 + 19) = v98;
        *(a6 + 32) = v43;
        *(a6 + 33) = v95;
        *(a6 + 35) = v96;
        *(a6 + 36) = v101;
        *(a6 + 40) = v44;
        *(a6 + 41) = v93;
        *(a6 + 43) = v94;
        *(a6 + 44) = v80;
        *(a6 + 48) = v26;
        *(a6 + 49) = *v92;
        *(a6 + 52) = *&v92[3];
        *(a6 + 56) = v28;
        *(a6 + 72) = v30;
        *(a6 + 88) = v31;
        *(a6 + 104) = v32;
        *(a6 + 120) = v33;
        *(a6 + 136) = v79;
        *(a6 + 139) = v91;
        *(a6 + 137) = v90;
        *(a6 + 140) = v78;
        *(a6 + 148) = v11;
        *(a6 + 152) = BYTE4(v11);
        *(a6 + 153) = v27;
        *(a6 + 156) = v77;
        *(a6 + 164) = v12;
        *(a6 + 168) = BYTE4(v12);
        *(a6 + 169) = v29;
        *(a6 + 170) = v88;
        *(a6 + 174) = v89;
        *(a6 + 176) = v74;
        *(a6 + 184) = v73;
        *(a6 + 192) = v13;
        *(a6 + 204) = WORD2(v14);
        *(a6 + 200) = v14;
        *(a6 + 206) = v34;
        *(a6 + 208) = v15;
        *(a6 + 216) = v16;
        *(a6 + 224) = v17;
        *(a6 + 236) = WORD2(v18);
        *(a6 + 232) = v18;
        *(a6 + 238) = v35;
        *(a6 + 240) = v19;
        *(a6 + 248) = v20;
        *(a6 + 256) = v21;
        *(a6 + 268) = WORD2(v22);
        *(a6 + 264) = v22;
        *(a6 + 270) = v41;
        *(a6 + 272) = v23;
        *(a6 + 280) = v24;
        *(a6 + 284) = v48;
        break;
      default:
        sub_1000508F0(31);
        v103._object = 0x800000010005B2C0;
        v103._countAndFlagsBits = 0xD00000000000001BLL;
        sub_100050770(v103);
        sub_100050900();
        v104._countAndFlagsBits = 11872;
        v104._object = 0xE200000000000000;
        sub_100050770(v104);
        sub_10001C55C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0xE000000000000000;
        v8 = 4;
        goto LABEL_3;
    }
  }
}

void sub_100029694(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  PPM_0_2_1.VDAFConfig.VDAFTypeSelector.init<A>(from:with:)(a1, *a2, a2[1], a3, a4, v7);
  if (!v5)
  {
    memcpy(a5, v7, 0x11DuLL);
  }
}

BOOL sub_1000296F0(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x11DuLL);
  memcpy(__dst, a2, 0x11DuLL);
  return _s19DPSubmissionService9PPM_0_2_1V10VDAFConfigV16VDAFTypeSelectorV23__derived_struct_equalsySbAG_AGtFZ_0(v4, __dst);
}

void PPM_0_2_1.VDAFConfig.encodedLength(with:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v5 = v9;
  }

LABEL_11:
  sub_100038F60(v5, 0xFFFF00000001uLL);
  if (v1)
  {
    return;
  }

  v10 = sub_10003915C(0xFFFF00000001);
  v18 = v5 + v10;
  if (__OFADD__(v5, v10))
  {
    goto LABEL_19;
  }

  if (__OFADD__(v18, 4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v18 + 4, PPM_0_2_1.VDAFConfig.VDAFTypeSelector.encodedLength(with:)(v0[2], v11, v12, v13, v14, v15, v16, v17)))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

void PPM_0_2_1.VDAFConfig.encode<A>(into:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *v5;
  sub_10002D5F8(v5, v14);
  sub_100020B6C();
  RangeReplaceableCollection<>.encode<A>(into:with:)(a1, 0xFFFF00000001uLL, 1, &type metadata for Data);
  sub_100013E20(v15, *(&v15 + 1));
  if (!v6)
  {
    v10 = *(v5 + 16);
    v14[0] = v10;
    v11 = sub_10002D630();
    sub_10003153C(a1, &type metadata for PPM_0_2_1.VDAFType, a4, v11, a5);
    memcpy(__dst, (v5 + 24), sizeof(__dst));
    PPM_0_2_1.VDAFConfig.VDAFTypeSelector.encode<A>(into:with:)(a1, v10, v12, v13, a4, a5);
  }
}

void *PPM_0_2_1.VDAFConfig.init<A>(from:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = sub_100020B6C();
  result = RangeReplaceableCollection<>.init<A>(from:with:)(a1, 0xFFFF00000001, 1, &type metadata for Data, a4, v13, a5);
  if (!v6)
  {
    v15 = sub_10002D630();
    TLSEnumType.init<A>(from:with:)(a1, (HIWORD(a3) | a2) & 1, &type metadata for PPM_0_2_1.VDAFType, a4, v15, a5);
    v16 = (a2 >> 16) & 1;
    v17 = HIBYTE(a2) & 1;
    v18 = (a2 >> 8) & 0xFFFFFFFF0000;
    if ((a3 & 0x1000000000000) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    if ((a3 & 0x1000000000000) != 0)
    {
      v18 = 0;
      LOBYTE(v17) = 1;
      LOBYTE(v16) = 1;
      v20 = 1;
    }

    else
    {
      v20 = BYTE1(a2) & 1;
    }

    __src[310] = v16;
    __src[308] = v17;
    __src[309] = v19 & 1;
    PPM_0_2_1.VDAFConfig.VDAFTypeSelector.init<A>(from:with:)(a1, v21, v20 | (v16 << 8) | v18 | (v17 << 48) | ((v19 & 1) << 56), a4, a5, __src);
    *a6 = v21;
    *(a6 + 8) = v22;
    *(a6 + 16) = v21;
    *(a6 + 20) = HIDWORD(v21);
    return memcpy((a6 + 24), __src, 0x11DuLL);
  }

  return result;
}

BOOL static PPM_0_2_1.VDAFConfig.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20))
  {
    memcpy(__dst, (a1 + 24), 0x11DuLL);
    memcpy(v6, (a2 + 24), 0x11DuLL);
    return _s19DPSubmissionService9PPM_0_2_1V10VDAFConfigV16VDAFTypeSelectorV23__derived_struct_equalsySbAG_AGtFZ_0(__dst, v6);
  }

  else
  {
    return 0;
  }
}

void sub_100029CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 8) | (*(a2 + 12) << 32);
  v10 = *(a2 + 14);
  memcpy(__dst, v4, 0x135uLL);
  __dst[326] = v10;
  PPM_0_2_1.VDAFConfig.encode<A>(into:with:)(a1, v8, v9 | (v10 << 48), a3, a4);
}

void *sub_100029D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  result = PPM_0_2_1.VDAFConfig.init<A>(from:with:)(a1, *a2, *(a2 + 8) | (*(a2 + 12) << 32) | (*(a2 + 14) << 48), a3, a4, __src);
  if (!v5)
  {
    return memcpy(a5, __src, 0x135uLL);
  }

  return result;
}

BOOL sub_100029DE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 5);
  memcpy(v15, a1 + 3, 0x11DuLL);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = *(a2 + 5);
  memcpy(__dst, a2 + 3, 0x11DuLL);
  v11 = _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(v3, v4, v7, v8);
  v12 = 0;
  if (v11 && v5 == v9 && v6 == v10)
  {
    return _s19DPSubmissionService9PPM_0_2_1V10VDAFConfigV16VDAFTypeSelectorV23__derived_struct_equalsySbAG_AGtFZ_0(v15, __dst);
  }

  return v12;
}

BOOL sub_100029EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  v8 = WORD1(a4) == WORD1(a8) && WORD2(a4) == WORD2(a8);
  v9 = BYTE1(a4) == BYTE1(a8) && v8;
  if (a4 != a8)
  {
    v9 = 0;
  }

  if (a3 != a7)
  {
    v9 = 0;
  }

  return a2 == a6 && v9;
}

uint64_t sub_100029F08(unint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if ((a1 & 0x10000) != 0)
  {
    if ((a5 & 0x10000) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a2)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((a6 & 1) != 0 || (a5 ^ a1) >> 32)
      {
        return result;
      }
    }

    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a5 & 0x10000) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if ((a1[10] & 1) == 0)
  {
    if ((a2[10] & 1) != 0 || *(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }

LABEL_8:
    if (a1[16])
    {
      if ((a2[16] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[16] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }

    if (a1[32])
    {
      if ((a2[32] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[32] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }

    return 1;
  }

  if (a2[10])
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V18PrioPiRapporConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if ((*(a1 + 18) & 1) == 0)
  {
    v2 = 0;
    if ((*(a2 + 18) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
    {
      return v2;
    }

LABEL_10:
    if (*(a1 + 24))
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v2 = 0;
      if ((*(a2 + 24) & 1) != 0 || *(a1 + 20) != *(a2 + 20))
      {
        return v2;
      }
    }

    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v2 = 0;
      if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
      {
        return v2;
      }
    }

    if (*(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }

    if (*(a1 + 58))
    {
      if ((*(a2 + 58) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 58) & 1) != 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 1) != 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }

    if (*(a1 + 80))
    {
      if ((*(a2 + 80) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 80) & 1) != 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 18))
  {
    goto LABEL_10;
  }

  return 0;
}

BOOL _s19DPSubmissionService9PPM_0_2_1V10VDAFConfigV16VDAFTypeSelectorV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  v4 = *(a2 + 2);
  if (*(a1 + 2))
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    v5 = a1;
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    result = 0;
    v5 = a1;
    if ((*(a1 + 4) & 0xFFFFFFFFFFLL) != (*(a2 + 4) & 0xFFFFFFFFFFLL) || *(a1 + 12) != *(a2 + 12))
    {
      return result;
    }
  }

  v8 = *(a2 + 28);
  if (*(v5 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(v5 + 20) != *(a2 + 20))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 32);
  if (*(v5 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(v5 + 30) != *(a2 + 30))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 40);
  if (*(v5 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(v5 + 36) != *(a2 + 36))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 48);
  if (*(v5 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(v5 + 44) != *(a2 + 44))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(v5 + 64);
  v13 = *(a2 + 64);
  if (v12 == 4)
  {
    if (v13 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v13 == 4)
    {
      return 0;
    }

    v37 = v2;
    v38 = v3;
    v14 = *(v5 + 56);
    v15 = *(a2 + 56);
    v16 = *(a2 + 88);
    v17 = *(a2 + 120);
    v34 = *(a2 + 104);
    v35 = v17;
    v36 = *(a2 + 136);
    v18 = *(a2 + 72);
    v33 = v16;
    v32 = v18;
    v31[0] = v15;
    v31[1] = v13;
    v19 = *(v5 + 88);
    v20 = *(v5 + 120);
    v28 = *(v5 + 104);
    v29 = v20;
    v30 = *(v5 + 136);
    v26 = *(v5 + 72);
    v27 = v19;
    v25[0] = v14;
    v25[1] = v12;
    v21 = v5;
    v22 = a2;
    v23 = _s19DPSubmissionService9PPM_0_2_1V18PrioPiRapporConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v25, v31);
    a2 = v22;
    v5 = v21;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v5 + 153))
  {
    if ((*(a2 + 153) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 153))
    {
      return 0;
    }

    result = 0;
    if ((*(v5 + 140) & 0xFFFFFFFFFFLL) != (*(a2 + 140) & 0xFFFFFFFFFFLL) || __PAIR64__(*(v5 + 152), *(v5 + 148)) != __PAIR64__(*(a2 + 152), *(a2 + 148)))
    {
      return result;
    }
  }

  if (*(v5 + 169))
  {
    if ((*(a2 + 169) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 169))
    {
      return 0;
    }

    result = 0;
    if ((*(v5 + 156) & 0xFFFFFFFFFFLL) != (*(a2 + 156) & 0xFFFFFFFFFFLL) || __PAIR64__(*(v5 + 168), *(v5 + 164)) != __PAIR64__(*(a2 + 168), *(a2 + 164)))
    {
      return result;
    }
  }

  if (*(v5 + 206))
  {
    if ((*(a2 + 206) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 206))
    {
      return 0;
    }

    result = 0;
    if (*(v5 + 176) != *(a2 + 176) || *(v5 + 184) != *(a2 + 184) || *(v5 + 192) != *(a2 + 192) || *(v5 + 200) != *(a2 + 200) || BYTE1(*(v5 + 200)) != BYTE1(*(a2 + 200)) || HIWORD(*(v5 + 200)) != HIWORD(*(a2 + 200)) || (((*(a2 + 200) | (*(a2 + 204) << 32)) ^ (*(v5 + 200) | (*(v5 + 204) << 32))) & 0xFFFFFFFFFFFFLL) >> 32)
    {
      return result;
    }
  }

  if (*(v5 + 238))
  {
    if ((*(a2 + 238) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 238))
    {
      return 0;
    }

    result = 0;
    if (*(v5 + 208) != *(a2 + 208) || *(v5 + 216) != *(a2 + 216) || *(v5 + 224) != *(a2 + 224) || *(v5 + 232) != *(a2 + 232) || BYTE1(*(v5 + 232)) != BYTE1(*(a2 + 232)) || HIWORD(*(v5 + 232)) != HIWORD(*(a2 + 232)) || (((*(a2 + 232) | (*(a2 + 236) << 32)) ^ (*(v5 + 232) | (*(v5 + 236) << 32))) & 0xFFFFFFFFFFFFLL) >> 32)
    {
      return result;
    }
  }

  v24 = (a2 + 264);
  if (*(v5 + 270))
  {
    if ((*(a2 + 270) & 1) == 0)
    {
      return 0;
    }

LABEL_91:
    if ((*(v5 + 284) & 1) == 0)
    {
      return (*(a2 + 284) & 1) == 0 && *(v5 + 272) == *(a2 + 272) && *(v5 + 280) == *(a2 + 280);
    }

    return (*(a2 + 284) & 1) != 0;
  }

  if (*(a2 + 270))
  {
    return 0;
  }

  result = 0;
  if (*(v5 + 240) == *(a2 + 240) && *(v5 + 248) == *(a2 + 248) && *(v5 + 256) == *(a2 + 256) && *(v5 + 264) == *v24 && BYTE1(*(v5 + 264)) == BYTE1(*v24) && HIWORD(*(v5 + 264)) == HIWORD(*v24) && !((((*(a2 + 264) | (*(a2 + 268) << 32)) ^ (*(v5 + 264) | (*(v5 + 268) << 32))) & 0xFFFFFFFFFFFFLL) >> 32))
  {
    goto LABEL_91;
  }

  return result;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V13RenyiDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if ((*(a1 + 18) & 1) == 0)
  {
    if ((*(a2 + 18) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

LABEL_9:
    if (*(a1 + 24))
    {
      if ((*(a2 + 24) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 24) & 1) != 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 18))
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V16EpsDeltaDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if ((a1[10] & 1) == 0)
  {
    v2 = 0;
    if ((a2[10] & 1) != 0 || *(a1 + 4) != *(a2 + 4))
    {
      return v2;
    }

LABEL_8:
    if (a1[16])
    {
      if ((a2[16] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v2 = 0;
      if ((a2[16] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
      {
        return v2;
      }
    }

    if (a1[32])
    {
      if ((a2[32] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v2 = 0;
      if ((a2[32] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
      {
        return v2;
      }
    }

    if (a1[40] != a2[40] || *(a1 + 11) != *(a2 + 11))
    {
      return 0;
    }

    if (a1[50])
    {
      if ((a2[50] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[50] & 1) != 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }

    if (a1[56])
    {
      if ((a2[56] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[56] & 1) != 0 || *(a1 + 13) != *(a2 + 13))
    {
      return 0;
    }

    if (a1[72])
    {
      if ((a2[72] & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a2[72] & 1) != 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    return 1;
  }

  if (a2[10])
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V34AggregatorDiscreteGaussianDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (a1[10])
  {
    if ((a2[10] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[10] & 1) != 0 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (a1[16])
  {
    if ((a2[16] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[16] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (a1[32])
  {
    if ((a2[32] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[32] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (a1[40] != a2[40] || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  if (a1[50])
  {
    if ((a2[50] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[50] & 1) != 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (a1[56])
  {
    if ((a2[56] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[56] & 1) != 0 || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  if (a1[72])
  {
    if ((a2[72] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[72] & 1) != 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a1[80] != a2[80] || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  if (a1[90])
  {
    if ((a2[90] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[90] & 1) != 0 || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  if (a1[96])
  {
    if ((a2[96] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[96] & 1) != 0 || *(a1 + 23) != *(a2 + 23))
  {
    return 0;
  }

  if (a1[112])
  {
    if ((a2[112] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[112] & 1) != 0 || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v5 = *(a1 + 136);
  v9[0] = *(a1 + 120);
  v9[1] = v5;
  v10 = a1[152];
  v6 = *(a2 + 136);
  v7[0] = *(a2 + 120);
  v7[1] = v6;
  v8 = a2[152];
  return _s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v7) & 1;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v4;
  v16[0] = *(a1 + 128);
  *(v16 + 9) = *(a1 + 137);
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v8;
  v14[0] = *(a2 + 128);
  *(v14 + 9) = *(a2 + 137);
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v10 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v10;
  v11 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v11;
  if ((_s19DPSubmissionService9PPM_0_2_1V34AggregatorDiscreteGaussianDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v15, v13) & 1) == 0 || *(a1 + 160) != *(a2 + 160) || *(a1 + 164) != *(a2 + 164))
  {
    return 0;
  }

  if ((*(a1 + 170) & 1) == 0)
  {
    if ((*(a2 + 170) & 1) != 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }

LABEL_9:
    if (*(a1 + 176))
    {
      if ((*(a2 + 176) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 176) & 1) != 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }

    if (*(a1 + 192))
    {
      if ((*(a2 + 192) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 192) & 1) != 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 170))
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V56DistributedGaussianWithSubsampledMomentsAccountantConfigV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  if (*(a1 + 42))
  {
    if ((*(a2 + 42) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 42) & 1) != 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 1) != 0 || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 1) != 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v26 = v2;
  v27 = v3;
  v5 = *(a1 + 88);
  v24[0] = *(a1 + 72);
  v24[1] = v5;
  v25 = *(a1 + 104);
  v7 = *(a2 + 88);
  v22[0] = *(a2 + 72);
  v22[1] = v7;
  v23 = *(a2 + 104);
  if (_s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v24, v22) & 1) != 0 && (v9 = *(a1 + 128), v20[0] = *(a1 + 112), v20[1] = v9, v21 = *(a1 + 144), v10 = *(a2 + 128), v18[0] = *(a2 + 112), v18[1] = v10, v19 = *(a2 + 144), (_s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v20, v18)))
  {
    v11 = *(a1 + 168);
    v16[0] = *(a1 + 152);
    v16[1] = v11;
    v17 = *(a1 + 184);
    v12 = *(a2 + 168);
    v14[0] = *(a2 + 152);
    v14[1] = v12;
    v15 = *(a2 + 184);
    v13 = _s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v16, v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (a1[10])
  {
    if ((a2[10] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[10] & 1) != 0 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (a1[16])
  {
    if ((a2[16] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[16] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (a1[32])
  {
    if ((a2[32] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[32] & 1) != 0 || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (a1[40] != a2[40] || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  if (a1[50])
  {
    if ((a2[50] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[50] & 1) != 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (a1[56])
  {
    if ((a2[56] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[56] & 1) != 0 || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  if (a1[72])
  {
    if ((a2[72] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[72] & 1) != 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a1[80] != a2[80] || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  v4 = *(a1 + 13);
  v5 = a1[112];
  v6 = *(a2 + 13);
  v7 = a2[112];
  if (a1[90])
  {
    if ((a2[90] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[90] & 1) != 0 || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  if (a1[96])
  {
    if ((a2[96] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[96] & 1) != 0 || *(a1 + 23) != *(a2 + 23))
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  if (v5)
  {
    v10 = a1;
    v9 = a2;
    if ((v7 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v11 = 0;
    if (v7)
    {
      return v11 & 1;
    }

    v12 = v4 == v6;
    v10 = a1;
    v9 = a2;
    if (!v12)
    {
      return v11 & 1;
    }
  }

  v13 = *(v10 + 136);
  v25[0] = *(v10 + 120);
  v25[1] = v13;
  v26 = v10[152];
  v14 = *(v9 + 136);
  v23[0] = *(v9 + 120);
  v23[1] = v14;
  v24 = v9[152];
  if ((_s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v25, v23) & 1) == 0)
  {
LABEL_55:
    v11 = 0;
    return v11 & 1;
  }

  v15 = *(a1 + 11);
  v21[0] = *(a1 + 10);
  v21[1] = v15;
  v22 = a1[192];
  v16 = *(a2 + 11);
  v19[0] = *(a2 + 10);
  v19[1] = v16;
  v20 = a2[192];
  v11 = _s19DPSubmissionService9PPM_0_2_1V10RealNumberV23__derived_struct_equalsySbAE_AEtFZ_0(v21, v19);
  return v11 & 1;
}

uint64_t _s19DPSubmissionService9PPM_0_2_1V8DPConfigV19DPMechanismSelectorV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8) == 4)
  {
    if (v2 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 4 || ((*(a2 + 8) ^ *(a1 + 8)) & 0xFFFFFFFF000000FFLL) != 0)
    {
      return 0;
    }

    v5 = *(a1 + 16);
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    if ((v5 & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if ((v7 & 0x10000) != 0 || *(a1 + 16) != v7)
      {
        return v8;
      }
    }

    if (*(a1 + 24))
    {
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6 & 1 | ((v7 ^ v5) >> 32 != 0))
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
      {
        return v8;
      }
    }
  }

  v3 = *(a1 + 48);
  v4 = *(a2 + 48);
  if (v3 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 4)
    {
      return 0;
    }

    v202 = *(a2 + 72);
    v203 = *(a2 + 88);
    v204 = *(a2 + 104);
    v205 = *(a2 + 120);
    v201 = *(a2 + 56);
    v200 = v4;
    v196 = *(a1 + 72);
    v197 = *(a1 + 88);
    v198 = *(a1 + 104);
    v199 = *(a1 + 120);
    v195 = *(a1 + 56);
    v194 = v3;
    v9 = a1;
    v10 = a2;
    v11 = _s19DPSubmissionService9PPM_0_2_1V16EpsDeltaDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(&v194, &v200);
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 136);
  v14 = *(a2 + 136);
  v15.i64[0] = 255;
  v15.i64[1] = 255;
  v16 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(v14, v13), v15), vdupq_n_s64(4uLL)));
  v17 = v16.i8[0];
  if ((v16.i8[4] & 1) == 0)
  {
    if ((v16.i8[0] & 1) == 0)
    {
      v18 = *(a1 + 152);
      v19 = *(a1 + 168);
      v20 = *(a2 + 128);
      v21 = *(a2 + 152);
      v22 = *(a2 + 168);
      v186 = *(a1 + 128);
      v187 = v13;
      v188 = v18;
      v189 = v19;
      v190 = v20;
      v191 = v14;
      v192 = v21;
      v193 = v22;
      v23 = a1;
      v24 = a2;
      v25 = _s19DPSubmissionService9PPM_0_2_1V13RenyiDPConfigV23__derived_struct_equalsySbAE_AEtFZ_0(&v186, &v190);
      a2 = v24;
      v17 = v25;
      a1 = v23;
      goto LABEL_21;
    }

    return 0;
  }

LABEL_21:
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v26 = (a1 + 176);
  v27 = a2;
  v28 = (a2 + 176);
  v29 = *(a1 + 288);
  v148[6] = *(a1 + 272);
  v148[7] = v29;
  v149[0] = *(a1 + 304);
  v30 = *(a1 + 224);
  v148[2] = *(a1 + 208);
  v148[3] = v30;
  v31 = *(a1 + 256);
  v148[4] = *(a1 + 240);
  v148[5] = v31;
  v32 = *(a1 + 192);
  v33 = a1;
  v148[0] = *(a1 + 176);
  v148[1] = v32;
  *(v149 + 9) = *(a1 + 313);
  if (sub_10001C728(v148) == 1)
  {
    v34 = v28[7];
    v176 = v28[6];
    v177 = v34;
    *v178 = v28[8];
    *&v178[9] = *(v28 + 137);
    v35 = v28[3];
    v172 = v28[2];
    v173 = v35;
    v36 = v28[5];
    v174 = v28[4];
    v175 = v36;
    v37 = v28[1];
    v170 = *v28;
    v171 = v37;
    if (sub_10001C728(&v170) != 1)
    {
      return 0;
    }
  }

  else
  {
    v38 = v28[7];
    v176 = v28[6];
    v177 = v38;
    *v178 = v28[8];
    *&v178[9] = *(v28 + 137);
    v39 = v28[3];
    v172 = v28[2];
    v173 = v39;
    v40 = v28[5];
    v174 = v28[4];
    v175 = v40;
    v41 = v28[1];
    v170 = *v28;
    v171 = v41;
    if (sub_10001C728(&v170) == 1)
    {
      return 0;
    }

    v42 = v28[7];
    v184[6] = v28[6];
    v184[7] = v42;
    v185[0] = v28[8];
    *(v185 + 9) = *(v28 + 137);
    v43 = v28[3];
    v184[2] = v28[2];
    v184[3] = v43;
    v44 = v28[5];
    v184[4] = v28[4];
    v184[5] = v44;
    v45 = v28[1];
    v184[0] = *v28;
    v184[1] = v45;
    v46 = v26[7];
    v182[6] = v26[6];
    v182[7] = v46;
    v183[0] = v26[8];
    *(v183 + 9) = *(v26 + 137);
    v47 = v26[3];
    v182[2] = v26[2];
    v182[3] = v47;
    v48 = v26[5];
    v182[4] = v26[4];
    v182[5] = v48;
    v49 = v26[1];
    v182[0] = *v26;
    v182[1] = v49;
    if ((_s19DPSubmissionService9PPM_0_2_1V34AggregatorDiscreteGaussianDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v182, v184) & 1) == 0)
    {
      return 0;
    }
  }

  v50 = *(v33 + 512);
  v146[10] = *(v33 + 496);
  v146[11] = v50;
  v147 = *(v33 + 528);
  v51 = *(v33 + 448);
  v146[6] = *(v33 + 432);
  v146[7] = v51;
  v52 = *(v33 + 480);
  v146[8] = *(v33 + 464);
  v146[9] = v52;
  v53 = *(v33 + 384);
  v146[2] = *(v33 + 368);
  v146[3] = v53;
  v54 = *(v33 + 416);
  v146[4] = *(v33 + 400);
  v146[5] = v54;
  v55 = *(v33 + 352);
  v146[0] = *(v33 + 336);
  v146[1] = v55;
  if (sub_10001C728(v146) == 1)
  {
    v56 = *(v27 + 512);
    v179 = *(v27 + 496);
    v180 = v56;
    v181 = *(v27 + 528);
    v57 = *(v27 + 448);
    v176 = *(v27 + 432);
    v177 = v57;
    v58 = *(v27 + 464);
    *&v178[16] = *(v27 + 480);
    *v178 = v58;
    v59 = *(v27 + 384);
    v172 = *(v27 + 368);
    v173 = v59;
    v60 = *(v27 + 400);
    v175 = *(v27 + 416);
    v174 = v60;
    v61 = *(v27 + 336);
    v171 = *(v27 + 352);
    v170 = v61;
    if (sub_10001C728(&v170) != 1)
    {
      return 0;
    }
  }

  else
  {
    v62 = *(v27 + 512);
    *v162 = *(v27 + 496);
    *&v162[16] = v62;
    v163 = *(v27 + 528);
    v63 = *(v27 + 448);
    v158 = *(v27 + 432);
    v159 = v63;
    v64 = *(v27 + 464);
    v161 = *(v27 + 480);
    v160 = v64;
    v65 = *(v27 + 384);
    v154 = *(v27 + 368);
    v155 = v65;
    v66 = *(v27 + 400);
    v157 = *(v27 + 416);
    v156 = v66;
    v67 = *(v27 + 336);
    v153 = *(v27 + 352);
    v152 = v67;
    if (sub_10001C728(&v152) == 1)
    {
      return 0;
    }

    v68 = *(v27 + 512);
    v179 = *(v27 + 496);
    v180 = v68;
    v181 = *(v27 + 528);
    v69 = *(v27 + 448);
    v176 = *(v27 + 432);
    v177 = v69;
    v70 = *(v27 + 464);
    *&v178[16] = *(v27 + 480);
    *v178 = v70;
    v71 = *(v27 + 384);
    v172 = *(v27 + 368);
    v173 = v71;
    v72 = *(v27 + 400);
    v175 = *(v27 + 416);
    v174 = v72;
    v73 = *(v27 + 336);
    v171 = *(v27 + 352);
    v170 = v73;
    v74 = *(v33 + 512);
    v168[10] = *(v33 + 496);
    v168[11] = v74;
    v169 = *(v33 + 528);
    v75 = *(v33 + 448);
    v168[6] = *(v33 + 432);
    v168[7] = v75;
    v76 = *(v33 + 464);
    v168[9] = *(v33 + 480);
    v168[8] = v76;
    v77 = *(v33 + 384);
    v168[2] = *(v33 + 368);
    v168[3] = v77;
    v78 = *(v33 + 400);
    v168[5] = *(v33 + 416);
    v168[4] = v78;
    v79 = *(v33 + 336);
    v168[1] = *(v33 + 352);
    v168[0] = v79;
    if ((_s19DPSubmissionService9PPM_0_2_1V55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v168, &v170) & 1) == 0)
    {
      return 0;
    }
  }

  v80 = (v27 + 536);
  v81 = *(v33 + 680);
  v144[8] = *(v33 + 664);
  v144[9] = v81;
  v145[0] = *(v33 + 696);
  *(v145 + 9) = *(v33 + 705);
  v82 = *(v33 + 616);
  v144[4] = *(v33 + 600);
  v144[5] = v82;
  v83 = *(v33 + 648);
  v144[6] = *(v33 + 632);
  v144[7] = v83;
  v84 = *(v33 + 552);
  v144[0] = *(v33 + 536);
  v144[1] = v84;
  v85 = *(v33 + 584);
  v144[2] = *(v33 + 568);
  v144[3] = v85;
  if (sub_10001C714(v144) == 1)
  {
    v86 = *(v27 + 680);
    v160 = *(v27 + 664);
    v161 = v86;
    *v162 = *(v27 + 696);
    *&v162[9] = *(v27 + 705);
    v87 = *(v27 + 616);
    v156 = *(v27 + 600);
    v157 = v87;
    v88 = *(v27 + 648);
    v158 = *(v27 + 632);
    v159 = v88;
    v89 = *(v27 + 552);
    v152 = *v80;
    v153 = v89;
    v90 = *(v27 + 584);
    v154 = *(v27 + 568);
    v155 = v90;
    if (sub_10001C714(&v152) != 1)
    {
      return 0;
    }
  }

  else
  {
    v91 = *(v27 + 680);
    v160 = *(v27 + 664);
    v161 = v91;
    *v162 = *(v27 + 696);
    *&v162[9] = *(v27 + 705);
    v92 = *(v27 + 616);
    v156 = *(v27 + 600);
    v157 = v92;
    v93 = *(v27 + 648);
    v158 = *(v27 + 632);
    v159 = v93;
    v94 = *(v27 + 552);
    v152 = *v80;
    v153 = v94;
    v95 = *(v27 + 584);
    v154 = *(v27 + 568);
    v155 = v95;
    if (sub_10001C714(&v152) == 1)
    {
      return 0;
    }

    v96 = *(v27 + 680);
    v166[8] = *(v27 + 664);
    v166[9] = v96;
    v167[0] = *(v27 + 696);
    *(v167 + 9) = *(v27 + 705);
    v97 = *(v27 + 616);
    v166[4] = *(v27 + 600);
    v166[5] = v97;
    v98 = *(v27 + 648);
    v166[6] = *(v27 + 632);
    v166[7] = v98;
    v99 = *(v27 + 552);
    v166[0] = *v80;
    v166[1] = v99;
    v100 = *(v27 + 584);
    v166[2] = *(v27 + 568);
    v166[3] = v100;
    v101 = *(v33 + 680);
    v164[8] = *(v33 + 664);
    v164[9] = v101;
    v165[0] = *(v33 + 696);
    *(v165 + 9) = *(v33 + 705);
    v102 = *(v33 + 616);
    v164[4] = *(v33 + 600);
    v164[5] = v102;
    v103 = *(v33 + 648);
    v164[6] = *(v33 + 632);
    v164[7] = v103;
    v104 = *(v33 + 552);
    v164[0] = *(v33 + 536);
    v164[1] = v104;
    v105 = *(v33 + 584);
    v164[2] = *(v33 + 568);
    v164[3] = v105;
    if ((_s19DPSubmissionService9PPM_0_2_1V56DistributedGaussianWithSubsampledMomentsAccountantConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v164, v166) & 1) == 0)
    {
      return 0;
    }
  }

  v106 = v33;
  v107 = v33 + 728;
  v108 = v27 + 728;
  v143 = *(v106 + 920);
  v109 = *(v107 + 176);
  v142[10] = *(v107 + 160);
  v142[11] = v109;
  v110 = *(v107 + 112);
  v142[6] = *(v107 + 96);
  v142[7] = v110;
  v111 = *(v107 + 144);
  v142[8] = *(v107 + 128);
  v142[9] = v111;
  v112 = *(v107 + 48);
  v142[2] = *(v107 + 32);
  v142[3] = v112;
  v113 = *(v107 + 80);
  v142[4] = *(v107 + 64);
  v142[5] = v113;
  v114 = *(v107 + 16);
  v142[0] = *v107;
  v142[1] = v114;
  if (sub_10001C728(v142) == 1)
  {
    v115 = *(v108 + 176);
    *v162 = *(v108 + 160);
    *&v162[16] = v115;
    v163 = *(v108 + 192);
    v116 = *(v108 + 112);
    v158 = *(v108 + 96);
    v159 = v116;
    v117 = *(v108 + 128);
    v161 = *(v108 + 144);
    v160 = v117;
    v118 = *(v108 + 48);
    v154 = *(v108 + 32);
    v155 = v118;
    v119 = *(v108 + 64);
    v157 = *(v108 + 80);
    v156 = v119;
    v120 = *v108;
    v153 = *(v108 + 16);
    v152 = v120;
    if (sub_10001C728(&v152) != 1)
    {
      return 0;
    }
  }

  else
  {
    v121 = *(v108 + 176);
    v140[10] = *(v108 + 160);
    v140[11] = v121;
    v141 = *(v108 + 192);
    v122 = *(v108 + 112);
    v140[6] = *(v108 + 96);
    v140[7] = v122;
    v123 = *(v108 + 144);
    v140[8] = *(v108 + 128);
    v140[9] = v123;
    v124 = *(v108 + 48);
    v140[2] = *(v108 + 32);
    v140[3] = v124;
    v125 = *(v108 + 80);
    v140[4] = *(v108 + 64);
    v140[5] = v125;
    v126 = *(v108 + 16);
    v140[0] = *v108;
    v140[1] = v126;
    if (sub_10001C728(v140) == 1)
    {
      return 0;
    }

    v127 = *(v108 + 176);
    *v162 = *(v108 + 160);
    *&v162[16] = v127;
    v163 = *(v108 + 192);
    v128 = *(v108 + 112);
    v158 = *(v108 + 96);
    v159 = v128;
    v129 = *(v108 + 128);
    v161 = *(v108 + 144);
    v160 = v129;
    v130 = *(v108 + 48);
    v154 = *(v108 + 32);
    v155 = v130;
    v131 = *(v108 + 64);
    v157 = *(v108 + 80);
    v156 = v131;
    v132 = *v108;
    v153 = *(v108 + 16);
    v152 = v132;
    v133 = *(v107 + 176);
    v150[10] = *(v107 + 160);
    v150[11] = v133;
    v151 = *(v107 + 192);
    v134 = *(v107 + 112);
    v150[6] = *(v107 + 96);
    v150[7] = v134;
    v135 = *(v107 + 128);
    v150[9] = *(v107 + 144);
    v150[8] = v135;
    v136 = *(v107 + 48);
    v150[2] = *(v107 + 32);
    v150[3] = v136;
    v137 = *(v107 + 64);
    v150[5] = *(v107 + 80);
    v150[4] = v137;
    v138 = *(v107 + 16);
    v150[0] = *v107;
    v150[1] = v138;
    if ((_s19DPSubmissionService9PPM_0_2_1V76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV23__derived_struct_equalsySbAE_AEtFZ_0(v150, &v152) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10002B9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*v4, *(v4 + 8) | ((*(v4 + 10) & 1) << 16), *(v4 + 16) & 1, a4, *(v4 + 32) & 1);
  if (!v5)
  {
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 40), *(v4 + 48) | ((*(v4 + 50) & 1) << 16), *(v4 + 56) & 1, v7, *(v4 + 72) & 1);
      v10 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v11 = __OFADD__(v8, v10);
      v12 = v8 + v10;
      if (v11)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 80), *(v4 + 88) | ((*(v4 + 90) & 1) << 16), *(v4 + 96) & 1, v9, *(v4 + 112) & 1);
      v14 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v11 = __OFADD__(v12, v14);
      v15 = v12 + v14;
      if (v11)
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 120), *(v4 + 128) | ((*(v4 + 130) & 1) << 16), *(v4 + 136) & 1, v13, *(v4 + 152) & 1);
      v16 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_18;
      }

      result = v15 + v16;
      if (!__OFADD__(v15, v16))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10002BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 8), *(v4 + 16) | ((*(v4 + 18) & 1) << 16), *(v4 + 24) & 1, a4, *(v4 + 40) & 1);
  if (!v5)
  {
    if (!__OFADD__(result, 1))
    {
      v8 = result + 9;
      if (__OFADD__(result + 1, 8))
      {
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        return result;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 48), *(v4 + 56) | ((*(v4 + 58) & 1) << 16), *(v4 + 64) & 1, v7, *(v4 + 80) & 1);
      v9 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_12;
      }

      result = v8 + v9;
      if (!__OFADD__(v8, v9))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10002BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*v4, *(v4 + 8) | ((*(v4 + 10) & 1) << 16), *(v4 + 16) & 1, a4, *(v4 + 32) & 1);
  if (!v5)
  {
    v8 = result + 1;
    if (!__OFADD__(result, 1))
    {
      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 40), *(v4 + 48) | ((*(v4 + 50) & 1) << 16), *(v4 + 56) & 1, v7, *(v4 + 72) & 1);
      v9 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_10;
      }

      result = v8 + v9;
      if (!__OFADD__(v8, v9))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = v25;
  result = sub_10002B9C4(a1, a2, a3, a4);
  if (!v26)
  {
    v30 = result;
    result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v27 + 160), *(v27 + 168) | ((*(v27 + 170) & 1) << 16), *(v27 + 176) & 1, v29, *(v27 + 192) & 1);
    v31 = result + 1;
    if (!__OFADD__(result, 1))
    {
      result = v30 + v31;
      if (!__OFADD__(v30, v31))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002BE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 32), *(v4 + 40) | ((*(v4 + 42) & 1) << 16), *(v4 + 48) & 1, a4, *(v4 + 64) & 1);
  if (!v5)
  {
    if (!__OFADD__(result, 1))
    {
      v8 = result + 25;
      if (__OFADD__(result + 1, 24))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 72), *(v4 + 80) | ((*(v4 + 82) & 1) << 16), *(v4 + 88) & 1, v7, *(v4 + 104) & 1);
      v10 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v11 = __OFADD__(v8, v10);
      v12 = v8 + v10;
      if (v11)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 112), *(v4 + 120) | ((*(v4 + 122) & 1) << 16), *(v4 + 128) & 1, v9, *(v4 + 144) & 1);
      v14 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = __OFADD__(v12, v14);
      v15 = v12 + v14;
      if (v11)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 152), *(v4 + 160) | ((*(v4 + 162) & 1) << 16), *(v4 + 168) & 1, v13, *(v4 + 184) & 1);
      v16 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_20;
      }

      result = v15 + v16;
      if (!__OFADD__(v15, v16))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10002BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*v25, *(v25 + 8) | ((*(v25 + 10) & 1) << 16), *(v25 + 16) & 1, a4, *(v25 + 32) & 1);
  if (!v26)
  {
    v29 = result + 1;
    if (!__OFADD__(result, 1))
    {
      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v25 + 40), *(v25 + 48) | ((*(v25 + 50) & 1) << 16), *(v25 + 56) & 1, v28, *(v25 + 72) & 1);
      v31 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v32 = __OFADD__(v29, v31);
      v33 = v29 + v31;
      if (v32)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v25 + 80), *(v25 + 88) | ((*(v25 + 90) & 1) << 16), *(v25 + 96) & 1, v30, *(v25 + 112) & 1);
      v35 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v32 = __OFADD__(v33, v35);
      v36 = v33 + v35;
      if (v32)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v25 + 120), *(v25 + 128) | ((*(v25 + 130) & 1) << 16), *(v25 + 136) & 1, v34, *(v25 + 152) & 1);
      v38 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v32 = __OFADD__(v36, v38);
      v39 = v36 + v38;
      if (v32)
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v25 + 160), *(v25 + 168) | ((*(v25 + 170) & 1) << 16), *(v25 + 176) & 1, v37, *(v25 + 192) & 1);
      v40 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_22;
      }

      result = v39 + v40;
      if (!__OFADD__(v39, v40))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10002C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v4 + 8), *(v4 + 16) | ((*(v4 + 18) & 1) << 16), *(v4 + 24) & 1, a4, *(v4 + 40) & 1);
  if (!v5)
  {
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result += 5;
      if (!__OFADD__(v7, 4))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002C248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_10001F118();
  result = sub_10001E960(a1, &type metadata for UInt64, a6, v11, a7);
  if (!v7)
  {
    v13 = sub_10001F16C();
    sub_10001E960(a1, &type metadata for UInt32, a6, v13, a7);
    sub_10001E960(a1, &type metadata for UInt32, a6, v13, a7);
    sub_10001E960(a1, &type metadata for UInt32, a6, v13, a7);
    sub_10001E960(a1, &type metadata for UInt32, a6, v13, a7);
    v14 = sub_10001F214();
    sub_10001E960(a1, &type metadata for UInt8, a6, v14, a7);
    sub_10001E960(a1, &type metadata for UInt8, a6, v14, a7);
    v15 = sub_10001F1C0();
    sub_10001E960(a1, &type metadata for UInt16, a6, v15, a7);
    return sub_10001E960(a1, &type metadata for UInt16, a6, v15, a7);
  }

  return result;
}

uint64_t sub_10002C450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = sub_10002C520();
  result = sub_10003153C(a1, &type metadata for PPM_0_2_1.RealNumberType, a2, v9, a3);
  if (!v4)
  {
    return PPM_0_2_1.RealNumber.RealNumberTypeSelector.encode<A>(into:with:)(a1, v8, *(v3 + 8) | (*(v3 + 12) << 32) | (*(v3 + 10) << 16), *(v3 + 16), *(v3 + 24), *(v3 + 32), a2, a3);
  }

  return result;
}

unint64_t sub_10002C520()
{
  result = qword_10007CB80;
  if (!qword_10007CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB80);
  }

  return result;
}

uint64_t sub_10002C574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
  if (!v5)
  {
    v11 = sub_10001F214();
    sub_10001E960(a1, &type metadata for UInt8, a4, v11, a5);
    return sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
  }

  return result;
}

uint64_t sub_10002C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a3, v8, a4);
  if (!v4)
  {
    return sub_10001E960(a1, &type metadata for UInt32, a3, v8, a4);
  }

  return result;
}

uint64_t sub_10002C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a2, v7, a3);
  if (!v3)
  {
    sub_10001E960(a1, &type metadata for UInt32, a2, v7, a3);
    sub_10002C450(a1, a2, a3);
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
  if (!v5)
  {
    v11 = sub_10001F214();
    sub_10001E960(a1, &type metadata for UInt8, a4, v11, a5);
    sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
    return sub_10001E960(a1, &type metadata for UInt8, a4, v11, a5);
  }

  return result;
}

uint64_t sub_10002C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
  if (!v5)
  {
    sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
    return sub_10001E960(a1, &type metadata for UInt32, a4, v9, a5);
  }

  return result;
}

uint64_t sub_10002C9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10001F16C();
  result = sub_10001E960(a1, &type metadata for UInt32, a2, v7, a3);
  if (!v3)
  {
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002CA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002C450(a1, a2, a3);
  if (!v3)
  {
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002CB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002C450(a1, a2, a3);
  if (!v3)
  {
    sub_10002C450(a1, a2, a3);
    sub_10002C450(a1, a2, a3);
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002CBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002CB14(a1, a2, a3);
  if (!v3)
  {
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002CC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10001F118();
  result = sub_10001E960(a1, &type metadata for UInt64, a2, v7, a3);
  if (!v3)
  {
    v9 = sub_10001F16C();
    sub_10001E960(a1, &type metadata for UInt32, a2, v9, a3);
    sub_10001E960(a1, &type metadata for UInt64, a2, v7, a3);
    sub_10001E960(a1, &type metadata for UInt32, a2, v9, a3);
    sub_10002C450(a1, a2, a3);
    sub_10002C450(a1, a2, a3);
    sub_10002C450(a1, a2, a3);
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

uint64_t sub_10002CE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002C450(a1, a2, a3);
  if (!v3)
  {
    sub_10002C450(a1, a2, a3);
    sub_10002C450(a1, a2, a3);
    sub_10002C450(a1, a2, a3);
    return sub_10002C450(a1, a2, a3);
  }

  return result;
}

unint64_t sub_10002CF64()
{
  result = qword_10007CB88;
  if (!qword_10007CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB88);
  }

  return result;
}

uint64_t sub_10002CFB8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_10001F118();
  CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt64, a2, v7, a3, &v12);
  if (!v3)
  {
    v4 = v12;
    v8 = sub_10001F16C();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v8, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v8, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v8, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v8, a3, &v12);
    v9 = sub_10001F214();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v12);
    v10 = sub_10001F1C0();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a2, v10, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt16, a2, v10, a3, &v12);
  }

  return v4;
}

uint64_t sub_10002D220(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v13);
  if (!v3)
  {
    v8 = v13;
    v9 = sub_10001F214();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v12);
    v10 = v12;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v11);
    return v8 | (v10 << 32);
  }

  return result;
}

unint64_t sub_10002D31C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v10);
  if (!v3)
  {
    v8 = v10;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v9);
    return v8 | (v9 << 32);
  }

  return result;
}

uint64_t sub_10002D3D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v14);
  if (!v3)
  {
    v8 = v14;
    v9 = sub_10001F214();
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v13);
    v10 = v13;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v12);
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt8, a2, v9, a3, &v11);
    return v8 | (v10 << 32);
  }

  return result;
}

uint64_t sub_10002D508(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v12);
  if (!v3)
  {
    v8 = v12;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v11);
    v9 = v11;
    CommonUIntTLSNumberType.init<A>(from:with:)(&type metadata for UInt32, a2, v6, a3, &v10);
    return v8 | (v9 << 32);
  }

  return result;
}

unint64_t sub_10002D630()
{
  result = qword_10007CB90;
  if (!qword_10007CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB90);
  }

  return result;
}

unint64_t sub_10002D688()
{
  result = qword_10007CB98;
  if (!qword_10007CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CB98);
  }

  return result;
}

unint64_t sub_10002D710()
{
  result = qword_10007CBB0;
  if (!qword_10007CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CBB0);
  }

  return result;
}

unint64_t sub_10002D768()
{
  result = qword_10007CBB8;
  if (!qword_10007CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CBB8);
  }

  return result;
}

unint64_t sub_10002D7BC(uint64_t a1)
{
  result = sub_10002D7E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D7E4()
{
  result = qword_10007CC20;
  if (!qword_10007CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CC20);
  }

  return result;
}

unint64_t sub_10002D838(uint64_t a1)
{
  result = sub_10002D860();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D860()
{
  result = qword_10007CC28;
  if (!qword_10007CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CC28);
  }

  return result;
}

unint64_t sub_10002D8B4(uint64_t a1)
{
  result = sub_10002D8DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D8DC()
{
  result = qword_10007CC88;
  if (!qword_10007CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CC88);
  }

  return result;
}

unint64_t sub_10002D930(uint64_t a1)
{
  result = sub_10002D958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D958()
{
  result = qword_10007CCE8;
  if (!qword_10007CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CCE8);
  }

  return result;
}

unint64_t sub_10002D9AC(uint64_t a1)
{
  result = sub_10002D9D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D9D4()
{
  result = qword_10007CD48;
  if (!qword_10007CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CD48);
  }

  return result;
}

unint64_t sub_10002DA2C()
{
  result = qword_10007CD50;
  if (!qword_10007CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CD50);
  }

  return result;
}

unint64_t sub_10002DAB4()
{
  result = qword_10007CD68;
  if (!qword_10007CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CD68);
  }

  return result;
}

unint64_t sub_10002DB0C()
{
  result = qword_10007CD70;
  if (!qword_10007CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CD70);
  }

  return result;
}

unint64_t sub_10002DB60(uint64_t a1)
{
  result = sub_10002DB88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DB88()
{
  result = qword_10007CDD8;
  if (!qword_10007CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CDD8);
  }

  return result;
}

unint64_t sub_10002DBDC(uint64_t a1)
{
  result = sub_10002DC04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DC04()
{
  result = qword_10007CDE0;
  if (!qword_10007CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CDE0);
  }

  return result;
}

unint64_t sub_10002DC58(uint64_t a1)
{
  result = sub_10002DC80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DC80()
{
  result = qword_10007CE40;
  if (!qword_10007CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CE40);
  }

  return result;
}

unint64_t sub_10002DCD4(uint64_t a1)
{
  result = sub_10002DCFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DCFC()
{
  result = qword_10007CEA0;
  if (!qword_10007CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CEA0);
  }

  return result;
}

unint64_t sub_10002DD50(uint64_t a1)
{
  result = sub_10002DD78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DD78()
{
  result = qword_10007CF00;
  if (!qword_10007CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CF00);
  }

  return result;
}

unint64_t sub_10002DDCC(uint64_t a1)
{
  result = sub_10002DDF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DDF4()
{
  result = qword_10007CF60;
  if (!qword_10007CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CF60);
  }

  return result;
}

unint64_t sub_10002DE48(uint64_t a1)
{
  result = sub_10002DE70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DE70()
{
  result = qword_10007CFC0;
  if (!qword_10007CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007CFC0);
  }

  return result;
}

unint64_t sub_10002DEC4(uint64_t a1)
{
  result = sub_10002DEEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DEEC()
{
  result = qword_10007D020;
  if (!qword_10007D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D020);
  }

  return result;
}

unint64_t sub_10002DF40(uint64_t a1)
{
  result = sub_10002DF68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DF68()
{
  result = qword_10007D080;
  if (!qword_10007D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D080);
  }

  return result;
}

unint64_t sub_10002DFBC(uint64_t a1)
{
  result = sub_10002DFE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002DFE4()
{
  result = qword_10007D0E0;
  if (!qword_10007D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D0E0);
  }

  return result;
}

unint64_t sub_10002E038(uint64_t a1)
{
  result = sub_10002E060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E060()
{
  result = qword_10007D140;
  if (!qword_10007D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D140);
  }

  return result;
}

unint64_t sub_10002E0B8()
{
  result = qword_10007D148;
  if (!qword_10007D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D148);
  }

  return result;
}

uint64_t sub_10002E13C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001C614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002E194()
{
  result = qword_10007D160;
  if (!qword_10007D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D160);
  }

  return result;
}

unint64_t sub_10002E1EC()
{
  result = qword_10007D168;
  if (!qword_10007D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D168);
  }

  return result;
}

unint64_t sub_10002E240(uint64_t a1)
{
  result = sub_10002E268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E268()
{
  result = qword_10007D1D0;
  if (!qword_10007D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D1D0);
  }

  return result;
}

unint64_t sub_10002E2BC(uint64_t a1)
{
  result = sub_10002E2E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E2E4()
{
  result = qword_10007D1D8;
  if (!qword_10007D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D1D8);
  }

  return result;
}

unint64_t sub_10002E338(uint64_t a1)
{
  result = sub_10002E360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E360()
{
  result = qword_10007D238;
  if (!qword_10007D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D238);
  }

  return result;
}

unint64_t sub_10002E3B4(uint64_t a1)
{
  result = sub_10002E3DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E3DC()
{
  result = qword_10007D298;
  if (!qword_10007D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D298);
  }

  return result;
}

unint64_t sub_10002E430(uint64_t a1)
{
  result = sub_10002E458();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E458()
{
  result = qword_10007D2F8;
  if (!qword_10007D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D2F8);
  }

  return result;
}

unint64_t sub_10002E4AC(uint64_t a1)
{
  result = sub_10002E4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E4D4()
{
  result = qword_10007D358;
  if (!qword_10007D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D358);
  }

  return result;
}

unint64_t sub_10002E528(uint64_t a1)
{
  result = sub_10002E550();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E550()
{
  result = qword_10007D3B8;
  if (!qword_10007D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D3B8);
  }

  return result;
}

unint64_t sub_10002E5A4(uint64_t a1)
{
  result = sub_10002E5CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E5CC()
{
  result = qword_10007D418;
  if (!qword_10007D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D418);
  }

  return result;
}

unint64_t sub_10002E620(uint64_t a1)
{
  result = sub_10002E648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E648()
{
  result = qword_10007D478;
  if (!qword_10007D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D478);
  }

  return result;
}

unint64_t sub_10002E69C(uint64_t a1)
{
  result = sub_10002E6C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E6C4()
{
  result = qword_10007D4D8;
  if (!qword_10007D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D4D8);
  }

  return result;
}

unint64_t sub_10002E718(uint64_t a1)
{
  result = sub_10002E740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E740()
{
  result = qword_10007D538;
  if (!qword_10007D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D538);
  }

  return result;
}

uint64_t _s14RealNumberTypeV9EnumValueOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14RealNumberTypeV9EnumValueOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002E900(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[33])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002E944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

__n128 sub_10002E99C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10002E9B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E9D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PPM_0_2_1.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[8])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PPM_0_2_1.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t _s11DPMechanismVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[8])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11DPMechanismVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t _s11DPMechanismV9EnumValueOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11DPMechanismV9EnumValueOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10002ECB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002ECD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[73])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002ED18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t _s13InputShareAADV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13InputShareAADV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_10002EDE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002EDF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002EE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 sub_10002EEAC(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10002EEE0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[153])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002EF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
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
    *(result + 152) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t _s5TokenV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s20Prio3HistogramConfigVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_10002F004(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t _s55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV15CodingParameterVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t _s55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s55AggregatorDiscreteGaussianClientSymmetricRapporDpConfigV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
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

  *(result + 11) = v3;
  return result;
}

__n128 sub_10002F0D4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10002F110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 185))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002F154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *(result + 184) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10002F1E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[193])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002F22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t _s76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV15CodingParameterVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s76DistributedDiscreteGaussianWithRandomAllocationAccountantForPreambleDpConfigV15CodingParameterVwst(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10002F32C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 929))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10002F380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 920) = 0;
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
    *(result + 904) = 0u;
    *(result + 928) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 929) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 929) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10002F4D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 921))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10002F528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
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
    *(result + 920) = 0;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 921) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 921) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

__n128 sub_10002F670(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002F68C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[59])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002F6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

__n128 sub_10002F738(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002F754(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F774(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 52) = v3;
  return result;
}

uint64_t _s8VDAFTypeVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[8])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s8VDAFTypeVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

uint64_t _s8VDAFTypeV9EnumValueOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8VDAFTypeV9EnumValueOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10002F9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002F9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10002FA0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t _s17Prio3SumVecConfigVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

void *_s27Prio3SumVecMultiproofConfigVwCP(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t _s27Prio3SumVecMultiproofConfigVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s27Prio3SumVecMultiproofConfigVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 13) = v3;
  return result;
}

__n128 sub_10002FB30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_10002FB44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 30))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002FB64(uint64_t result, int a2, int a3)
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

  *(result + 30) = v3;
  return result;
}

uint64_t _s17Prio3SumVecConfigVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17Prio3SumVecConfigVwst_0(uint64_t result, int a2, int a3)
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10002FC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 309))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 88);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10002FC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 296) = 0;
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
    *(result + 308) = 0;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 309) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 309) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10002FD14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 285))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10002FD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
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
    *(result + 284) = 0;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 285) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 285) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 4;
    }
  }

  return result;
}

__n128 _s10VDAFConfigV16VDAFTypeSelectorV15CodingParameterVwCP(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s10VDAFConfigV16VDAFTypeSelectorV15CodingParameterVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[21])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10VDAFConfigV16VDAFTypeSelectorV15CodingParameterVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

void *_s10VDAFConfigV15CodingParameterVwCP(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t _s10VDAFConfigV15CodingParameterVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 14))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10VDAFConfigV15CodingParameterVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 14) = v3;
  return result;
}

id _DPDediscoAlgorithmParameters.__allocating_init(dimension:epsilon:otherParams:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____DPDediscoAlgorithmParameters_dimension] = a1;
  *&v9[OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon] = a4;
  v10 = &v9[OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id _DPDediscoAlgorithmParameters.init(dimension:epsilon:otherParams:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____DPDediscoAlgorithmParameters_dimension] = a1;
  *&v4[OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon] = a4;
  v5 = &v4[OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams];
  *v5 = a2;
  *(v5 + 1) = a3;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return objc_msgSendSuper2(&v7, "init");
}

id _DPDediscoAlgorithmParameters.__allocating_init(dimension:epsilon:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParameters_dimension] = a1;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon] = a2;
  *&v5[OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams] = xmmword_100056E50;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id _DPDediscoAlgorithmParameters.init(dimension:epsilon:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____DPDediscoAlgorithmParameters_dimension] = a1;
  *&v2[OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon] = a2;
  *&v2[OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams] = xmmword_100056E50;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return objc_msgSendSuper2(&v4, "init");
}

void *sub_1000302BC(void *result, uint64_t a2)
{
  *result = *(a2 + OBJC_IVAR____DPDediscoAlgorithmParameters_dimension);
  result[1] = *(a2 + OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon);
  v2 = (a2 + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams);
  v3 = *(a2 + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams + 8);
  if (v3 >> 60 != 15)
  {
    v4 = *v2;
    v5 = result[2];
    v6 = result[3];
    v7 = result;
    sub_10001414C(*v2, *(a2 + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams + 8));
    result = sub_100013E20(v5, v6);
    v7[2] = v4;
    v7[3] = v3;
  }

  return result;
}

id _DPDediscoAlgorithmParameters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000303FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013E20(result, a2);
  }

  return result;
}

uint64_t TLSEnumType.init(enumValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v18 - v9;
  (*(a3 + 48))(a2, a3);
  sub_100013EC0(&qword_10007D580, &qword_100056E80);
  v11 = a1;
  swift_getAssociatedConformanceWitness();
  sub_1000506F0();

  if (v20)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    v21._countAndFlagsBits = 0x203A65756C6176;
    v21._object = 0xE700000000000000;
    sub_100050770(v21);
    sub_100050960();
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    sub_100050770(v22);
    v23._countAndFlagsBits = v19;
    v12 = v20;
    v19 = 0xD000000000000036;
    v20 = 0x800000010005B7D0;
    v23._object = v12;
    sub_100050770(v23);

    v13 = v19;
    v14 = v20;
    sub_10001C55C();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 2;
    swift_willThrow();
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  else
  {
    v17 = v19;
    (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
    (*(a3 + 88))(v10, v17, a2, a3);
    return (*(v8 + 8))(a1, AssociatedTypeWitness);
  }
}

uint64_t TLSEnumType.init<A>(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = (*(*(a5 + 8) + 16))(a3);
  v12 = sub_10001F16C();
  result = CommonUIntTLSNumberType.init<A>(from:with:encodedLength:)(v11, &type metadata for UInt32, a4, v12, a6, &v14);
  if (!v6)
  {
    return (*(a5 + 80))(v14, a3, a5);
  }

  return result;
}

uint64_t TLSEnumType.init(rawValue:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a1;
  v52 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v52 - v10;
  sub_10001C614(&qword_10007D580, &qword_100056E80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_100050850();
  v12 = *(v65 - 8);
  v13 = __chkstk_darwin(v65);
  v68 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v52 - v15;
  v16 = *(a3 + 48);
  v53 = a2;
  v54 = a3;
  result = v16(a2, a3);
  v18 = 0;
  v20 = result + 64;
  v19 = *(result + 64);
  v59 = result;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v56 = v7;
  v57 = (v7 + 16);
  v69 = (v7 + 32);
  v63 = (v12 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v60 = (v7 + 8);
  v62 = AssociatedTypeWitness;
  v55 = TupleTypeMetadata2;
  if ((v22 & v19) != 0)
  {
    while (1)
    {
      v25 = v18;
LABEL_12:
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = v30 | (v25 << 6);
      v33 = v58;
      v32 = v59;
      v34 = v56;
      (*(v56 + 16))(v58, *(v59 + 48) + *(v56 + 72) * v31, AssociatedTypeWitness);
      v35 = *(v32 + 56);
      v36 = AssociatedTypeWitness;
      TupleTypeMetadata2 = v55;
      v37 = *(v55 + 48);
      v38 = *(v34 + 32);
      v39 = *(v35 + 8 * v31);
      v28 = v68;
      v38(v68, v33, v36);
      v40 = 0;
      *&v28[v37] = v39;
      v27 = v25;
      v29 = v67;
LABEL_13:
      v41 = *(TupleTypeMetadata2 - 8);
      (*(v41 + 56))(v28, v40, 1, TupleTypeMetadata2);
      (*v63)(v29, v28, v65);
      if ((*(v41 + 48))(v29, 1, TupleTypeMetadata2) == 1)
      {

        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1000508F0(48);

        v71 = 0xD00000000000002ELL;
        v72 = 0x800000010005BC90;
        v70 = v66;
        v73._countAndFlagsBits = sub_100050950();
        sub_100050770(v73);

        v48 = v71;
        v49 = v72;
        sub_10001C55C();
        swift_allocError();
        *v50 = v48;
        *(v50 + 8) = v49;
        *(v50 + 16) = 2;
        return swift_willThrow();
      }

      v42 = &v29[*(TupleTypeMetadata2 + 48)];
      v43 = v29;
      v44 = v61;
      AssociatedTypeWitness = v62;
      v45 = *v42;
      v46 = v42[1];
      (*v69)(v61, v43, v62);
      if (v45 <= v66 && v46 >= v66)
      {
        break;
      }

      result = (*v60)(v44, AssociatedTypeWitness);
      v18 = v27;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    v51 = v58;
    (*v57)(v58, v44, AssociatedTypeWitness);
    (*(v54 + 88))(v51, v66, v53);

    return (*v60)(v44, AssociatedTypeWitness);
  }

  else
  {
LABEL_5:
    if (v24 <= v18 + 1)
    {
      v26 = v18 + 1;
    }

    else
    {
      v26 = v24;
    }

    v27 = v26 - 1;
    v29 = v67;
    v28 = v68;
    while (1)
    {
      v25 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v25 >= v24)
      {
        v23 = 0;
        v40 = 1;
        goto LABEL_13;
      }

      v23 = *(v20 + 8 * v25);
      ++v18;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static TLSEnumType.encodedLength.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  v3 = ceil(vcvtd_n_f64_u32(32 - __clz(result), 3uLL));
  if (v3 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_100030F54@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  result = sub_100031810(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 4) = HIDWORD(result);
  }

  return result;
}

uint64_t sub_1000312E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 4) = HIDWORD(result);
  }

  return result;
}

uint64_t sub_10003141C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_100018414();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100031448@<X0>(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10003164C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 64))(a2, a4);
  v10 = (*(*(a4 + 8) + 16))(a2);
  v11 = sub_10001F16C();
  return sub_10001D5C0(v10, a1, &type metadata for UInt32, a3, v11, a5);
}

unint64_t sub_1000315F8()
{
  result = qword_10007D588;
  if (!qword_10007D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D588);
  }

  return result;
}

uint64_t sub_10003164C(uint64_t a1)
{
  if (qword_10007C600 != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v2 = 0;
  v3 = 1 << *(static PPM_0_2_1.ExtensionType.rangesByEnumVals + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static PPM_0_2_1.ExtensionType.rangesByEnumVals + 64);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          sub_1000508F0(48);

          v14._countAndFlagsBits = sub_100050950();
          sub_100050770(v14);

          sub_10001C55C();
          swift_allocError();
          *v12 = 0xD00000000000002ELL;
          *(v12 + 8) = 0x800000010005BC90;
          *(v12 + 16) = 2;
          swift_willThrow();
          return a1;
        }

        v5 = *(static PPM_0_2_1.ExtensionType.rangesByEnumVals + 64 + 8 * v7);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(static PPM_0_2_1.ExtensionType.rangesByEnumVals + 56) + ((v7 << 9) | (8 * v8)));
    LODWORD(v8) = *v9;
    v10 = v9[1];
  }

  while (v8 > a1 || v10 < a1);
  return a1;
}

unint64_t sub_100031810(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
LABEL_19:
    swift_once();
  }

  swift_beginAccess();
  v6 = 0;
  v7 = *a3;
  v8 = 1 << *(*a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*a3 + 64);
  v11 = (v8 + 63) >> 6;
  do
  {
    if (!v10)
    {
      while (1)
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v12 >= v11)
        {
          sub_1000508F0(48);

          v21._countAndFlagsBits = sub_100050950();
          sub_100050770(v21);

          sub_10001C55C();
          swift_allocError();
          *v20 = 0xD00000000000002ELL;
          *(v20 + 8) = 0x800000010005BC90;
          *(v20 + 16) = 2;
          return swift_willThrow();
        }

        v10 = *(*a3 + 64 + 8 * v12);
        ++v6;
        if (v10)
        {
          v6 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v12 = v6;
LABEL_11:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v7 + 56) + 8 * v14);
    v17 = *v15;
    v16 = v15[1];
  }

  while (v17 > a1 || v16 < a1);
  return *(*(v7 + 48) + v14) | (a1 << 32);
}

unint64_t sub_1000319C0()
{
  result = qword_10007D590;
  if (!qword_10007D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007D590);
  }

  return result;
}

id _DPDediscoPayload.__allocating_init(collectionId:algorithm:algorithmParameters:fsEncryptedShare:dsEncryptedShare:fsPublicKey:dsPublicKey:versionHash:report:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = objc_allocWithZone(v17);
  v25 = &v24[OBJC_IVAR____DPDediscoPayload_collectionId];
  *v25 = a1;
  *(v25 + 1) = a2;
  v26 = &v24[OBJC_IVAR____DPDediscoPayload_algorithm];
  *v26 = a3;
  *(v26 + 1) = a4;
  *&v24[OBJC_IVAR____DPDediscoPayload_algorithmParameters] = a5;
  v27 = &v24[OBJC_IVAR____DPDediscoPayload_fsEncryptedShare];
  *v27 = a6;
  *(v27 + 1) = a7;
  v28 = &v24[OBJC_IVAR____DPDediscoPayload_dsEncryptedShare];
  *v28 = a8;
  *(v28 + 1) = a9;
  v29 = &v24[OBJC_IVAR____DPDediscoPayload_fsPublicKey];
  *v29 = a10;
  *(v29 + 1) = a11;
  v30 = &v24[OBJC_IVAR____DPDediscoPayload_dsPublicKey];
  *v30 = a12;
  *(v30 + 1) = a13;
  v31 = &v24[OBJC_IVAR____DPDediscoPayload_versionHash];
  *v31 = a14;
  *(v31 + 1) = a15;
  v32 = &v24[OBJC_IVAR____DPDediscoPayload_report];
  *v32 = a16;
  *(v32 + 1) = a17;
  v36.receiver = v24;
  v36.super_class = v17;
  return objc_msgSendSuper2(&v36, "init");
}

id _DPDediscoPayload.init(collectionId:algorithm:algorithmParameters:fsEncryptedShare:dsEncryptedShare:fsPublicKey:dsPublicKey:versionHash:report:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = &v17[OBJC_IVAR____DPDediscoPayload_collectionId];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____DPDediscoPayload_algorithm];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR____DPDediscoPayload_algorithmParameters] = a5;
  v20 = &v17[OBJC_IVAR____DPDediscoPayload_fsEncryptedShare];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v17[OBJC_IVAR____DPDediscoPayload_dsEncryptedShare];
  *v21 = a8;
  *(v21 + 1) = a9;
  v22 = &v17[OBJC_IVAR____DPDediscoPayload_fsPublicKey];
  *v22 = a10;
  *(v22 + 1) = a11;
  v23 = &v17[OBJC_IVAR____DPDediscoPayload_dsPublicKey];
  *v23 = a12;
  *(v23 + 1) = a13;
  v24 = &v17[OBJC_IVAR____DPDediscoPayload_versionHash];
  *v24 = a14;
  *(v24 + 1) = a15;
  v25 = &v17[OBJC_IVAR____DPDediscoPayload_report];
  *v25 = a16;
  *(v25 + 1) = a17;
  v27.receiver = v17;
  v27.super_class = type metadata accessor for _DPDediscoPayload();
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_100031DF4(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____DPDediscoPayload_collectionId);
  v9 = *(a2 + OBJC_IVAR____DPDediscoPayload_collectionId + 8);

  *a1 = v10;
  *(a1 + 1) = v9;
  v12 = *(a2 + OBJC_IVAR____DPDediscoPayload_algorithm);
  v11 = *(a2 + OBJC_IVAR____DPDediscoPayload_algorithm + 8);

  *(a1 + 2) = v12;
  *(a1 + 3) = v11;
  v14 = *(a2 + OBJC_IVAR____DPDediscoPayload_algorithmParameters);
  if (v14)
  {
    v39[1] = v39;
    __chkstk_darwin(v13);
    v39[-2] = v14;
    sub_1000326FC(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters, &protocol conformance descriptor for DediscoDonation.AlgorithmParameters);
    v15 = v14;
    sub_1000504E0();
    v40 = v2;

    v16 = *(type metadata accessor for DediscoDonation(0) + 52);
    sub_100032744(&a1[v16]);
    sub_1000327AC(v8, &a1[v16]);
    (*(v6 + 56))(&a1[v16], 0, 1, v5);
  }

  else
  {
    v40 = v2;
  }

  v17 = (a2 + OBJC_IVAR____DPDediscoPayload_fsEncryptedShare);
  v18 = *(a2 + OBJC_IVAR____DPDediscoPayload_fsEncryptedShare + 8);
  if (v18 >> 60 != 15)
  {
    v19 = *v17;
    v20 = *(a1 + 4);
    v21 = *(a1 + 5);
    sub_10001414C(*v17, *(a2 + OBJC_IVAR____DPDediscoPayload_fsEncryptedShare + 8));
    sub_100013E20(v20, v21);
    *(a1 + 4) = v19;
    *(a1 + 5) = v18;
  }

  v22 = (a2 + OBJC_IVAR____DPDediscoPayload_dsEncryptedShare);
  v23 = *(a2 + OBJC_IVAR____DPDediscoPayload_dsEncryptedShare + 8);
  if (v23 >> 60 != 15)
  {
    v24 = *v22;
    v25 = *(a1 + 6);
    v26 = *(a1 + 7);
    sub_10001414C(*v22, *(a2 + OBJC_IVAR____DPDediscoPayload_dsEncryptedShare + 8));
    sub_100013E20(v25, v26);
    *(a1 + 6) = v24;
    *(a1 + 7) = v23;
  }

  v27 = *(a2 + OBJC_IVAR____DPDediscoPayload_fsPublicKey);
  v28 = *(a2 + OBJC_IVAR____DPDediscoPayload_fsPublicKey + 8);

  *(a1 + 8) = v27;
  *(a1 + 9) = v28;
  v29 = *(a2 + OBJC_IVAR____DPDediscoPayload_dsPublicKey);
  v30 = *(a2 + OBJC_IVAR____DPDediscoPayload_dsPublicKey + 8);

  *(a1 + 10) = v29;
  *(a1 + 11) = v30;
  v31 = *(a2 + OBJC_IVAR____DPDediscoPayload_versionHash);
  v32 = *(a2 + OBJC_IVAR____DPDediscoPayload_versionHash + 8);

  *(a1 + 12) = v31;
  *(a1 + 13) = v32;
  v34 = (a2 + OBJC_IVAR____DPDediscoPayload_report);
  v35 = *(a2 + OBJC_IVAR____DPDediscoPayload_report + 8);
  if (v35 >> 60 != 15)
  {
    v36 = *v34;
    v37 = *(a1 + 14);
    v38 = *(a1 + 15);
    sub_10001414C(*v34, v35);
    result = sub_100013E20(v37, v38);
    *(a1 + 14) = v36;
    *(a1 + 15) = v35;
  }

  return result;
}

uint64_t _DPDediscoPayload.serialize()()
{
  v1 = type metadata accessor for DediscoDonation(0);
  __chkstk_darwin(v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_1000326FC(&qword_10007D5E0, type metadata accessor for DediscoDonation, &protocol conformance descriptor for DediscoDonation);
  sub_1000504E0();
  v4 = sub_1000504B0();
  sub_10003228C(v3);
  return v4;
}

uint64_t sub_10003228C(uint64_t a1)
{
  v2 = type metadata accessor for DediscoDonation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id _DPDediscoPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoPayload();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000326FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100032744(uint64_t a1)
{
  v2 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000327AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RandomAccessCollection<>.popFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3, a2);
  sub_1000507D0();
  (*(v5 + 32))(v7, v3, a2);
  return sub_1000507E0();
}

uint64_t sub_100032950(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10003F698(0xFFFF00000000uLL, 256, a1);
  if (!v3)
  {
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a2 + 16);
        v11 = *(a2 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v9 = result;
      }

      else
      {
        v9 = result;
        v10 = 0;
      }
    }

    else if (v8)
    {
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = HIDWORD(a2) - a2;
    }

    else
    {
      v9 = result;
      v10 = BYTE6(a3);
    }

    sub_100038F60(v10, 0xFFFFFFFF00000000);
    result = sub_10003915C(0xFFFFFFFF00000000);
    v13 = v10 + result;
    if (__OFADD__(v10, result))
    {
      __break(1u);
    }

    else
    {
      result = v9 + v13;
      if (!__OFADD__(v9, v13))
      {
        v15[0] = sub_100036B70(result);
        v15[1] = v14;
        sub_100034CE4(v15, 0xFFFF00000000uLL, 256, a1);
        sub_100015AD4(v15, 0xFFFFFFFF00000000, 1, a2, a3);
        return v15[0];
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100032A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = v4[7];
  v29 = v4[6];
  v30 = v7;
  v31[0] = v4[8];
  *(v31 + 9) = *(v4 + 137);
  v8 = v4[3];
  v25 = v4[2];
  v26 = v8;
  v9 = v4[5];
  v27 = v4[4];
  v28 = v9;
  v10 = v4[1];
  v23 = *v4;
  v24 = v10;
  result = sub_10002B9C4(a1, a2, a3, a4);
  if (!v5)
  {
    v12 = result;
    v13 = *(v6 + 84);
    v14 = *(v6 + 176);
    v15 = *(v6 + 23);
    v16 = *(v6 + 192);
    v17 = *(v6 + 160);
    LOBYTE(v20[0]) = *(v6 + 170) & 1;
    v22 = v14 & 1;
    v21 = v16 & 1;
    result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v17, v13 | (LOBYTE(v20[0]) << 16), v14 & 1, v15, v16 & 1);
    v18 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result = v12 + v18;
      if (!__OFADD__(v12, v18))
      {
        v20[0] = sub_100036B70(result);
        v20[1] = v19;
        sub_100015EB0(v20);
        return v20[0];
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100032BA4()
{
  v2 = v0[2];
  v25 = v0[3];
  v26 = *(v0 + 8);
  v3 = *v0;
  v23 = v0[1];
  v24 = v2;
  v22 = v3;
  v4 = PPM_0_2_1.Token.encodedLength(with:)(0, 1);
  if (!v1)
  {
    v5 = v4;
    v6 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = v6;
    v20 = *(v0 + 104);
    v21 = *(v0 + 15);
    sub_10003C670();
    v8 = __OFADD__(v5, v7);
    v9 = v5 + v7;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v16 = sub_100036B70(v9);
      v17 = v10;
      sub_1000155F4(2uLL, &v16, v22);
      v11 = *(&v22 + 1);
      v12 = v23;
      sub_10001414C(*(&v22 + 1), v23);
      sub_100015AD4(&v16, 0x2000000020, 1, v11, v12);
      sub_100013E20(v11, v12);
      v13 = *(&v23 + 1);
      v14 = v24;
      sub_10001414C(*(&v23 + 1), v24);
      sub_100015AD4(&v16, 0x2000000020, 1, v13, v14);
      sub_100013E20(v13, v14);
      sub_10001C55C();
      swift_allocError();
      *v15 = 0xD000000000000052;
      *(v15 + 8) = 0x800000010005BDE0;
      *(v15 + 16) = 1;
      swift_willThrow();
      sub_100013E20(v16, v17);
    }
  }
}

uint64_t sub_100032D44()
{
  result = PPM_0_2_1.Token.encodedLength(with:)(0, 1);
  if (!v1)
  {
    v9 = sub_100036B70(result);
    v10 = v3;
    sub_1000155F4(2uLL, &v9, *v0);
    v4 = v0[1];
    v5 = v0[2];
    sub_10001414C(v4, v5);
    sub_100015AD4(&v9, 0x2000000020, 1, v4, v5);
    sub_100013E20(v4, v5);
    v7 = v0[3];
    v6 = v0[4];
    sub_10001414C(v7, v6);
    sub_100015AD4(&v9, 0x2000000020, 1, v7, v6);
    sub_100013E20(v7, v6);
    sub_10001C55C();
    swift_allocError();
    *v8 = 0xD000000000000052;
    *(v8 + 8) = 0x800000010005BDE0;
    *(v8 + 16) = 1;
    swift_willThrow();
    return sub_100013E20(v9, v10);
  }

  return result;
}

uint64_t TLSCodable.encodedBytes()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_100050850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v11 - v7, 1, 1, AssociatedTypeWitness);
  v9 = (*(a2 + 56))(v8, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_100033054()
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v0 + 8), *(v0 + 16) | ((*(v0 + 18) & 1) << 16), *(v0 + 24) & 1, *(v0 + 32), *(v0 + 40) & 1);
  if (!v1)
  {
    v3 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      result += 5;
      if (!__OFADD__(v3, 4))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000330DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = sub_10002B9C4(a1, a2, a3, a4);
  if (!v5)
  {
    v8 = result;
    result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*(v6 + 160), *(v6 + 168) | ((*(v6 + 170) & 1) << 16), *(v6 + 176) & 1, *(v6 + 184), *(v6 + 192) & 1);
    v9 = result + 1;
    if (!__OFADD__(result, 1))
    {
      result = v8 + v9;
      if (!__OFADD__(v8, v9))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1000331AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = HIDWORD(a2) - a2;
  }

LABEL_11:
  sub_100038F60(v5, 0xFFFF00000001uLL);
  if (v3)
  {
    return;
  }

  v8 = sub_10003915C(0xFFFF00000001);
  if (__OFADD__(v5, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v5 + v8, 7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_100033254(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v4 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_100038F60(v4, 0x1000000010uLL);
  if (v2)
  {
    return result;
  }

  result = sub_10003915C(0x1000000010);
  v7 = v4 + result;
  if (__OFADD__(v4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  result = v7 + 8;
  if (__OFADD__(v7, 8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1000332F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10003F698(0xFFFF00000000uLL, 256, a1);
  if (!v3)
  {
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v11 = *(a2 + 16);
        v10 = *(a2 + 24);
        v9 = v10 - v11;
        if (__OFSUB__(v10, v11))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v8 = result;
      }

      else
      {
        v8 = result;
        v9 = 0;
      }
    }

    else if (v7)
    {
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = HIDWORD(a2) - a2;
    }

    else
    {
      v8 = result;
      v9 = BYTE6(a3);
    }

    sub_100038F60(v9, 0xFFFFFFFF00000000);
    result = sub_10003915C(0xFFFFFFFF00000000);
    v12 = v9 + result;
    if (__OFADD__(v9, result))
    {
      __break(1u);
    }

    else
    {
      result = v8 + v12;
      if (!__OFADD__(v8, v12))
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TLSCodable.encodedLength()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_100050850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v11 - v7, 1, 1, AssociatedTypeWitness);
  v9 = (*(v2 + 24))(v8, v3, v2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t TLSCodable.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_100050850();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v16 - v13, 1, 1, AssociatedTypeWitness);
  (*(a4 + 40))(a1, v14, a3, a5, a2, a4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000336F8(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = PPM_0_2_1.PlaintextInputShare.encodedLength(with:)(a1 & 0x1FFFF, a2, a3, a4);
  if (!v4)
  {
    v12[0] = sub_100036B70(result);
    v12[1] = v10;
    v11 = a1;
    if ((a1 & 0x10000) != 0)
    {
      v11 = 0;
    }

    sub_100034CE4(v12, 0xFFFF00000000uLL, v11 | (((a1 & 0x10100) != 0) << 8), a2);
    sub_10001414C(a3, a4);
    sub_100015AD4(v12, 0xFFFFFFFF00000000, 1, a3, a4);
    sub_100013E20(a3, a4);
    return v12[0];
  }

  return result;
}

uint64_t TLSCodable.encodedBytes(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))();
  if (!v3)
  {
    v11[0] = sub_100036B70(result);
    v11[1] = v8;
    v9 = *(a3 + 40);
    v10 = sub_100020B6C();
    v9(v11, a1, &type metadata for Data, v10, a2, a3);
    return v11[0];
  }

  return result;
}

uint64_t TLSCodable.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_100050850();
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v15 - v12, 1, 1, AssociatedTypeWitness);
  return (*(a4 + 72))(a1, v13, a3, a5, a2, a4);
}

uint64_t *sub_100033A64(uint64_t *result, char a2, uint64_t a3, char a4)
{
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      if ((a3 & 1) == 0)
      {
        return result;
      }

      v6 = 0x800000010005BBE0;
      sub_10001C55C();
      swift_allocError();
      v7 = 0xD000000000000029;
    }

    else
    {
      if (a2 != 2)
      {
        sub_1000508F0(31);
        v8._object = 0x800000010005B2C0;
        v8._countAndFlagsBits = 0xD00000000000001BLL;
        sub_100050770(v8);
        sub_100050900();
        v9._countAndFlagsBits = 11872;
        v9._object = 0xE200000000000000;
        sub_100050770(v9);
        sub_10001C55C();
        swift_allocError();
        *v4 = 0;
        *(v4 + 8) = 0xE000000000000000;
        goto LABEL_11;
      }

      if ((a4 & 1) == 0)
      {
        return sub_100015344(4uLL, result, HIDWORD(a3));
      }

      v6 = 0x800000010005BBB0;
      sub_10001C55C();
      swift_allocError();
      v7 = 0xD000000000000026;
    }

    *v4 = v7;
    *(v4 + 8) = v6;
LABEL_11:
    v5 = 4;
    goto LABEL_12;
  }

  sub_10001C55C();
  swift_allocError();
  *v4 = 0xD000000000000034;
  *(v4 + 8) = 0x800000010005B280;
  v5 = 1;
LABEL_12:
  *(v4 + 16) = v5;
  return swift_willThrow();
}

uint64_t sub_100033C58()
{
  sub_10001C55C();
  swift_allocError();
  *v0 = 0xD000000000000034;
  *(v0 + 8) = 0x800000010005B280;
  *(v0 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_100033CC4(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 4);
  LOBYTE(v9[0]) = v4;
  v10 = v5;
  result = PPM_0_2_1.QueryConfig.QueryTypeSelector.encodedLength(with:)(v3, v4, v5);
  if (!v2)
  {
    v9[0] = sub_100036B70(result);
    v9[1] = v8;
    v10 = v4;
    sub_100033A64(v9, v3, (v6 << 32) | v4, v5);
    return v9[0];
  }

  return result;
}

void sub_100033DAC()
{
  v2 = v0[3];
  v9 = v0[2];
  v10 = v2;
  v11 = v0[4];
  v12 = *(v0 + 10);
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  sub_100020340();
  if (!v1)
  {
    v6[0] = sub_100036B70(v4);
    v6[1] = v5;
    sub_100036FC8(v6);
  }
}

uint64_t sub_100033E2C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 8);
  v7 = *(v1 + 2);
  v8 = *(v1 + 24);
  v9 = *(v1 + 1);
  LOBYTE(v12[0]) = v5;
  v14 = v6;
  v13 = v8;
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(v3, v4 | (v5 << 16), v6, v7, v8);
  if (!v2)
  {
    v12[0] = sub_100036B70(result);
    v12[1] = v11;
    v14 = v5;
    v13 = v6;
    sub_100015CBC(v12, v3, v4 | (v5 << 16) | (v9 << 32), v6, v7, v8);
    return v12[0];
  }

  return result;
}

uint64_t sub_100033F0C()
{
  result = PPM_0_2_1.RealNumber.RealNumberTypeSelector.encodedLength(with:)(*v0, *(v0 + 8) | (*(v0 + 10) << 16), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  v3 = result;
  if (!v1)
  {
    ++result;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003409C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[7];
  v19 = v4[6];
  v20 = v6;
  v21[0] = v4[8];
  *(v21 + 9) = *(v4 + 137);
  v7 = v4[3];
  v15 = v4[2];
  v16 = v7;
  v8 = v4[5];
  v17 = v4[4];
  v18 = v8;
  v9 = v4[1];
  v13 = *v4;
  v14 = v9;
  result = sub_10002B9C4(a1, a2, a3, a4);
  if (!v5)
  {
    v12[0] = sub_100036B70(result);
    v12[1] = v11;
    sub_1000186D8(v12);
    return v12[0];
  }

  return result;
}

uint64_t sub_100034190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 160);
  v11 = *(v8 + 176);
  v12 = *(v8 + 128);
  v30 = *(v8 + 144);
  v31 = v10;
  v32 = v11;
  v14 = *(v8 + 96);
  v13 = *(v8 + 112);
  v33 = *(v8 + 192);
  v28 = v13;
  v29 = v12;
  v15 = *(v8 + 48);
  v23 = *(v8 + 32);
  v24 = v15;
  v16 = *(v8 + 64);
  v26 = *(v8 + 80);
  v27 = v14;
  v25 = v16;
  result = sub_10002BD38(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), v23, *(&v23 + 1), v24, *(&v24 + 1), v16, *(&v16 + 1), v26, *(&v26 + 1), v14);
  if (!v9)
  {
    v21 = sub_100036B70(result);
    v22 = v18;
    sub_100015EB0(&v21);
    return v21;
  }

  return result;
}

uint64_t sub_1000342C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[9];
  v22 = v4[8];
  v23 = v6;
  v24[0] = v4[10];
  *(v24 + 9) = *(v4 + 169);
  v7 = v4[5];
  v18 = v4[4];
  v19 = v7;
  v8 = v4[7];
  v20 = v4[6];
  v21 = v8;
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = v4[3];
  v16 = v4[2];
  v17 = v10;
  result = sub_10002BE04(a1, a2, a3, a4);
  if (!v5)
  {
    v13[0] = sub_100036B70(result);
    v13[1] = v12;
    sub_1000188CC(v13);
    return v13[0];
  }

  return result;
}

uint64_t sub_10003435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 176);
  v24 = *(v8 + 160);
  v25 = v10;
  v26 = *(v8 + 192);
  v11 = *(v8 + 112);
  v20 = *(v8 + 96);
  v21 = v11;
  v12 = *(v8 + 144);
  v22 = *(v8 + 128);
  v23 = v12;
  v13 = *(v8 + 48);
  v18 = *(v8 + 32);
  v19 = v13;
  result = sub_10002BFB8(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), v18, *(&v18 + 1), v13, *(&v13 + 1), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), v20, *(&v20 + 1), v21);
  if (!v9)
  {
    v16 = sub_100036B70(result);
    v17 = v15;
    sub_100018B1C(&v16);
    return v16;
  }

  return result;
}

uint64_t sub_1000343F4(_OWORD *a1)
{
  v3 = a1[1];
  v14[0] = *a1;
  v14[1] = v3;
  v15[0] = a1[2];
  *(v15 + 11) = *(a1 + 43);
  memcpy(__dst, v1, sizeof(__dst));
  result = PPM_0_2_1.DPConfig.DPMechanismSelector.encodedLength(with:)(v14, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    v13[0] = sub_100036B70(result);
    v13[1] = v12;
    sub_1000161B8(v13, v14);
    return v13[0];
  }

  return result;
}

uint64_t sub_100034494()
{
  memcpy(__dst, v0, 0x3A1uLL);
  __dst[951] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v11 = 1;
  return PPM_0_2_1.DPConfig.encodedLength(with:)(v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100034500(uint64_t a1)
{
  v3 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v3;
  *v15 = *(a1 + 32);
  *&v15[13] = *(a1 + 45);
  memcpy(__dst, v1, sizeof(__dst));
  result = PPM_0_2_1.DPConfig.encodedLength(with:)(v14, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    v13[0] = sub_100036B70(result);
    v13[1] = v12;
    sub_100016A9C(v13, v14);
    return v13[0];
  }

  return result;
}

uint64_t sub_1000345A0()
{
  memcpy(__dst, v0, 0x3A1uLL);
  __dst[951] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = 1;
  result = PPM_0_2_1.DPConfig.encodedLength(with:)(v12, v2, v3, v4, v5, v6, v7, v8);
  if (!v1)
  {
    v11[0] = sub_100036B70(result);
    v11[1] = v10;
    sub_100016A9C(v11, v12);
    return v11[0];
  }

  return result;
}

uint64_t sub_10003466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[3];
  v13 = v4[2];
  v14 = v6;
  v15 = v4[4];
  v16 = *(v4 + 80);
  v7 = v4[1];
  v11 = *v4;
  v12 = v7;
  result = sub_10002BB6C(a1, a2, a3, a4);
  if (!v5)
  {
    v10[0] = sub_100036B70(result);
    v10[1] = v9;
    sub_100018590(v10);
    return v10[0];
  }

  return result;
}

uint64_t sub_100034708()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 8);
  v7 = sub_100036B70(9);
  v8 = v5;
  sub_100015344(4uLL, &v7, v2);
  if (v1)
  {
    return sub_100013E20(v7, v8);
  }

  sub_1000158CC(1uLL, &v7, v3);
  sub_100015344(4uLL, &v7, v4);
  return v7;
}

uint64_t sub_1000347A8()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 8);
  v5 = *(v0 + 12);
  v8 = sub_100036B70(10);
  v9 = v6;
  sub_100015344(4uLL, &v8, v2);
  if (v1)
  {
    return sub_100013E20(v8, v9);
  }

  sub_1000158CC(1uLL, &v8, v3);
  sub_100015344(4uLL, &v8, v4);
  sub_1000158CC(1uLL, &v8, v5);
  return v8;
}

uint64_t sub_100034868()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v14 = *(v0 + 12);
  v15 = v3;
  v5 = *(v0 + 16);
  v4 = *(v0 + 20);
  v6 = *(v0 + 24);
  v7 = *(v0 + 25);
  v8 = *(v0 + 26);
  v9 = *(v0 + 28);
  sub_100050270();
  swift_allocObject();
  v12 = 0;
  v13 = sub_100050250() | 0x4000000000000000;
  sub_10001508C(8uLL, &v12, v2);
  if (v1)
  {
    return sub_100013E20(v12, v13);
  }

  v10 = v14;
  sub_100015344(4uLL, &v12, v15);
  sub_100015344(4uLL, &v12, v10);
  sub_100015344(4uLL, &v12, v5);
  sub_100015344(4uLL, &v12, v4);
  sub_1000158CC(1uLL, &v12, v6);
  sub_1000158CC(1uLL, &v12, v7);
  sub_1000155F4(2uLL, &v12, v8);
  sub_1000155F4(2uLL, &v12, v9);
  return v12;
}

uint64_t sub_1000349C8()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v7 = sub_100036B70(12);
  v8 = v5;
  sub_100015344(4uLL, &v7, v3);
  if (v1)
  {
    return sub_100013E20(v7, v8);
  }

  sub_100015344(4uLL, &v7, v2);
  sub_100015344(4uLL, &v7, v4);
  return v7;
}

uint64_t sub_100034A64(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 20) << 32);
  memcpy(__dst, v1, sizeof(__dst));
  result = PPM_0_2_1.VDAFConfig.VDAFTypeSelector.encodedLength(with:)(v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v2)
  {
    v13[0] = sub_100036B70(result);
    v13[1] = v12;
    sub_100016C9C(v13, v3);
    return v13[0];
  }

  return result;
}

void sub_100034B14()
{
  memcpy(__dst, v0, 0x135uLL);
  __dst[326] = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
}

void sub_100034B74(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 14);
  memcpy(__dst, v1, sizeof(__dst));
  LOBYTE(v8[0]) = v5;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  if (!v2)
  {
    v8[0] = sub_100036B70(v6);
    v8[1] = v7;
    sub_10001742C(v8, v3, v4 | (v5 << 48));
  }
}

void sub_100034C30()
{
  memcpy(__dst, v0, sizeof(__dst));
  LOBYTE(v4[0]) = 1;
  PPM_0_2_1.VDAFConfig.encodedLength(with:)();
  if (!v1)
  {
    v4[0] = sub_100036B70(v2);
    v4[1] = v3;
    sub_10001742C(v4, 0, 0x1000000000000);
  }
}

uint64_t sub_100034CE4(uint64_t *a1, unint64_t a2, int a3, uint64_t a4)
{
  if ((a3 & 0x10000) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v12 = 0xD000000000000085;
    *(v12 + 8) = 0x800000010005B740;
    v13 = 1;
LABEL_6:
    *(v12 + 16) = v13;
    return swift_willThrow();
  }

  v7 = a1;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v16 = v8 + 16;
  v8 = *(v8 + 16);
  v15 = *(v16 + 8);
  v11 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_11:
    v17 = __OFSUB__(HIDWORD(v8), v8);
    v18 = HIDWORD(v8) - v8;
    if (v17)
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v11 = v18;
  }

LABEL_14:
  result = sub_10003F698(a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v19 = result;
  v17 = __OFADD__(v11, result);
  v20 = v11 + result;
  if (v17)
  {
    goto LABEL_115;
  }

  sub_1000502D0(v20);
  result = sub_10003915C(a2);
  v17 = __OFSUB__(v19, result);
  v21 = v19 - result;
  if (v17)
  {
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
    goto LABEL_125;
  }

  v22 = result;
  if (result < 1)
  {
    goto LABEL_22;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_126;
  }

  if (HIDWORD(v21))
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  result = sub_100015344(result, v7, v21);
LABEL_22:
  v67 = v21;
  v68 = v22;
  v69 = v11;
  v23 = *(a4 + 16);
  if (v23)
  {
    v24 = (a4 + 48);
    v72 = v7;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = *(v24 - 4);
      sub_10001414C(v26, *v24);
      sub_100015344(2uLL, v7, v27);
      v28 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v28 == 2)
        {
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          v29 = v30 - v31;
          if (__OFSUB__(v30, v31))
          {
            goto LABEL_117;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else if (v28)
      {
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_118;
        }

        v29 = HIDWORD(v26) - v26;
      }

      else
      {
        v29 = BYTE6(v25);
      }

      sub_100038F60(v29, 0xFFFF00000000uLL);
      v32 = v29 + 2;
      if (__OFADD__(v29, 2))
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v33 = *v7;
      v34 = v7[1];
      v35 = v34 >> 62;
      if ((v34 >> 62) > 1)
      {
        if (v35 == 2)
        {
          v38 = v33 + 16;
          v36 = *(v33 + 16);
          v37 = *(v38 + 8);
          v17 = __OFSUB__(v37, v36);
          v33 = v37 - v36;
          if (v17)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = 0;
        }
      }

      else if (v35)
      {
        v17 = __OFSUB__(HIDWORD(v33), v33);
        LODWORD(v33) = HIDWORD(v33) - v33;
        if (v17)
        {
          goto LABEL_120;
        }

        v33 = v33;
      }

      else
      {
        v33 = BYTE6(v34);
      }

      if (__OFADD__(v33, v32))
      {
        goto LABEL_112;
      }

      sub_1000502D0(v33 + v32);
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          LODWORD(v39) = 0;
          goto LABEL_61;
        }

        v41 = *(v26 + 16);
        v40 = *(v26 + 24);
        v39 = v40 - v41;
        if (__OFSUB__(v40, v41))
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (!v28)
        {
          LODWORD(v39) = BYTE6(v25);
          goto LABEL_61;
        }

        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_121;
        }

        v39 = HIDWORD(v26) - v26;
      }

      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_113;
      }

      if (HIDWORD(v39))
      {
        goto LABEL_114;
      }

LABEL_61:
      sub_100015344(2uLL, v7, v39);
      v75 = &type metadata for Data;
      v76 = &protocol witness table for Data;
      v73 = v26;
      v74 = v25;
      v42 = sub_1000140EC(&v73, &type metadata for Data);
      v43 = *v42;
      v44 = v42[1] >> 62;
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v45 = *(v43 + 16);
          v70 = *(v43 + 24);
          sub_10001414C(v26, v25);
          if (sub_100050220() && __OFSUB__(v45, sub_100050240()))
          {
            goto LABEL_128;
          }

          if (__OFSUB__(v70, v45))
          {
            goto LABEL_124;
          }

LABEL_74:
          sub_100050230();
          v7 = v72;
          sub_1000502E0();
          goto LABEL_25;
        }
      }

      else if (v44)
      {
        v71 = v23;
        v46 = v43;
        if (v43 >> 32 < v43)
        {
          goto LABEL_123;
        }

        sub_10001414C(v26, v25);
        if (sub_100050220() && __OFSUB__(v46, sub_100050240()))
        {
          goto LABEL_129;
        }

        v23 = v71;
        goto LABEL_74;
      }

      sub_10001414C(v26, v25);
      sub_1000502E0();
LABEL_25:
      v24 += 3;
      sub_100013E74(&v73);
      result = sub_100013E20(v26, v25);
      --v23;
    }

    while (v23);
  }

  v47 = *v7;
  v48 = v7[1];
  v49 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    v51 = v68;
    v50 = v69;
    if (!v49)
    {
      v52 = BYTE6(v48);
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  v51 = v68;
  v50 = v69;
  if (v49 != 2)
  {
    v52 = 0;
    goto LABEL_85;
  }

  v54 = *(v47 + 16);
  v53 = *(v47 + 24);
  v17 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v17)
  {
    __break(1u);
LABEL_82:
    LODWORD(v52) = HIDWORD(v47) - v47;
    if (__OFSUB__(HIDWORD(v47), v47))
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v52 = v52;
  }

LABEL_85:
  v17 = __OFSUB__(v52, v50);
  v55 = v52 - v50;
  if (v17)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v56 = v55 - v51;
  if (__OFSUB__(v55, v51))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v49 <= 1)
  {
    if (!v49)
    {
      v57 = BYTE6(v48);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (v49 != 2)
  {
    if (v50 <= 0)
    {
      v47 = 0;
      goto LABEL_107;
    }

LABEL_110:
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1000508F0(19);

    v73 = sub_100050950();
    v74 = v63;
    v77._countAndFlagsBits = 0x616574736E69202CLL;
    v77._object = 0xEE0020746F672064;
    sub_100050770(v77);
    v78._countAndFlagsBits = sub_100050950();
    sub_100050770(v78);

    v79._countAndFlagsBits = 46;
    v79._object = 0xE100000000000000;
    sub_100050770(v79);
    v80._countAndFlagsBits = v73;
    v64 = v74;
    v73 = 0xD000000000000027;
    v74 = 0x800000010005BDB0;
    v80._object = v64;
    sub_100050770(v80);

    v65 = v73;
    v66 = v74;
    sub_10001C55C();
    swift_allocError();
    *v12 = v65;
    *(v12 + 8) = v66;
    v13 = 5;
    goto LABEL_6;
  }

  v59 = *(v47 + 16);
  v58 = *(v47 + 24);
  v17 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (v17)
  {
    __break(1u);
LABEL_94:
    LODWORD(v57) = HIDWORD(v47) - v47;
    if (__OFSUB__(HIDWORD(v47), v47))
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
    }

    v57 = v57;
  }

LABEL_96:
  if (v57 < v50)
  {
    goto LABEL_110;
  }

  if (v49 == 2)
  {
    v61 = v47 + 16;
    v60 = *(v47 + 16);
    v48 = *(v61 + 8);
    v17 = __OFSUB__(v48, v60);
    v47 = v48 - v60;
    if (!v17)
    {
      goto LABEL_107;
    }

    __break(1u);
LABEL_106:
    v47 = BYTE6(v48);
    goto LABEL_107;
  }

  if (v49 != 1)
  {
    goto LABEL_106;
  }

  v17 = __OFSUB__(HIDWORD(v47), v47);
  LODWORD(v47) = HIDWORD(v47) - v47;
  if (v17)
  {
    goto LABEL_135;
  }

  v47 = v47;
LABEL_107:
  v17 = __OFSUB__(v47, v50);
  v62 = v47 - v50;
  if (v17)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v62 < v51 || v56 != v67)
  {
    goto LABEL_110;
  }

  return result;
}

uint64_t sub_100035444(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x1000000000000) != 0)
  {
    sub_10001C55C();
    swift_allocError();
    *v12 = 0xD000000000000085;
    *(v12 + 8) = 0x800000010005B740;
    v13 = 1;
LABEL_6:
    *(v12 + 16) = v13;
    return swift_willThrow();
  }

  v6 = a4;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v16 = v8 + 16;
  v8 = *(v8 + 16);
  v15 = *(v16 + 8);
  v11 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_11:
    v17 = __OFSUB__(HIDWORD(v8), v8);
    v18 = HIDWORD(v8) - v8;
    if (v17)
    {
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
      goto LABEL_128;
    }

    v11 = v18;
  }

LABEL_14:
  LOBYTE(v77) = 0;
  result = sub_10003F9BC(a2, a3 & 0xFFFFFFFFFFFFLL, a4);
  if (v4)
  {
    return result;
  }

  v20 = result;
  v17 = __OFADD__(v11, result);
  v21 = v11 + result;
  if (v17)
  {
    goto LABEL_114;
  }

  sub_1000502D0(v21);
  v22 = sub_10003915C(a2);
  v23 = v20 - v22;
  if (__OFSUB__(v20, v22))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v24 = v22;
  if (v22 < 1)
  {
    goto LABEL_22;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_118;
  }

  sub_100015344(v22, a1, v20 - v22);
LABEL_22:
  v73 = v24;
  v74 = v23;
  v25 = *(v6 + 16);

  if (v25)
  {
    v26 = v6 + 32;
    v75 = v11;
    while (1)
    {
      v76 = v25;
      v27 = *(v26 + 2);
      v28 = *(v26 + 4);
      v29 = *(v26 + 6);
      v5 = *(v26 + 8);
      v6 = *(v26 + 16);
      v30 = *v26;
      sub_10001414C(v5, v6);
      sub_1000158CC(1uLL, a1, v30);
      sub_1000155F4(2uLL, a1, v27);
      sub_1000155F4(2uLL, a1, v28);
      sub_1000155F4(2uLL, a1, v29);
      v31 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v31 == 2)
      {
        v34 = *(v5 + 16);
        v33 = *(v5 + 24);
        v32 = v33 - v34;
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_120;
        }

LABEL_32:
        sub_10001414C(v5, v6);
        goto LABEL_34;
      }

      v32 = 0;
LABEL_34:
      sub_100038F60(v32, 0xFFFF00000001uLL);
      v35 = v32 + 2;
      if (__OFADD__(v32, 2))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v36 = *a1;
      v37 = a1[1];
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v41 = v36 + 16;
          v39 = *(v36 + 16);
          v40 = *(v41 + 8);
          v17 = __OFSUB__(v40, v39);
          v36 = v40 - v39;
          if (v17)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else if (v38)
      {
        v17 = __OFSUB__(HIDWORD(v36), v36);
        LODWORD(v36) = HIDWORD(v36) - v36;
        if (v17)
        {
          goto LABEL_122;
        }

        v36 = v36;
      }

      else
      {
        v36 = BYTE6(v37);
      }

      if (__OFADD__(v36, v35))
      {
        goto LABEL_111;
      }

      sub_1000502D0(v36 + v35);
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          LODWORD(v42) = 0;
          goto LABEL_59;
        }

        v44 = *(v5 + 16);
        v43 = *(v5 + 24);
        v42 = v43 - v44;
        if (__OFSUB__(v43, v44))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (!v31)
        {
          LODWORD(v42) = BYTE6(v6);
          goto LABEL_59;
        }

        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_123;
        }

        v42 = HIDWORD(v5) - v5;
      }

      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (HIDWORD(v42))
      {
        goto LABEL_113;
      }

LABEL_59:
      sub_100015344(2uLL, a1, v42);
      v79 = &type metadata for Data;
      v80 = &protocol witness table for Data;
      v77 = v5;
      v78 = v6;
      v45 = sub_1000140EC(&v77, &type metadata for Data);
      v46 = *v45;
      v47 = v45[1] >> 62;
      if (v47 <= 1)
      {
        if (v47)
        {
          v50 = v46;
          if (v46 >> 32 < v46)
          {
            goto LABEL_125;
          }

          sub_10001414C(v5, v6);
          if (sub_100050220() && __OFSUB__(v50, sub_100050240()))
          {
            goto LABEL_130;
          }

          v11 = v75;
          sub_100050230();
        }

        else
        {
LABEL_71:
          sub_10001414C(v5, v6);
        }

        sub_1000502E0();
        goto LABEL_73;
      }

      if (v47 != 2)
      {
        goto LABEL_71;
      }

      v48 = *(v46 + 16);
      v49 = *(v46 + 24);
      sub_10001414C(v5, v6);
      if (sub_100050220() && __OFSUB__(v48, sub_100050240()))
      {
        goto LABEL_129;
      }

      if (__OFSUB__(v49, v48))
      {
        goto LABEL_126;
      }

      sub_100050230();
      sub_1000502E0();
      v11 = v75;
LABEL_73:
      v26 += 24;
      sub_100013E74(&v77);
      sub_100013E20(v5, v6);
      sub_100013E20(v5, v6);
      --v25;
      if (v76 == 1)
      {
        goto LABEL_74;
      }
    }

    if (!v31)
    {
      v32 = BYTE6(v6);
      goto LABEL_34;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_119;
    }

    v32 = HIDWORD(v5) - v5;
    goto LABEL_32;
  }

LABEL_74:

  v51 = *a1;
  v52 = a1[1];
  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v54 = v73;
    v55 = v74;
    if (v53 == 2)
    {
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      v17 = __OFSUB__(v57, v58);
      v56 = v57 - v58;
      if (v17)
      {
        __break(1u);
        sub_100013E20(v5, v6);
        sub_100013E20(v5, v6);
      }
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v54 = v73;
    v55 = v74;
    if (v53)
    {
      LODWORD(v56) = HIDWORD(v51) - v51;
      if (__OFSUB__(HIDWORD(v51), v51))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v56 = v56;
    }

    else
    {
      v56 = BYTE6(v52);
    }
  }

  v17 = __OFSUB__(v56, v11);
  v59 = v56 - v11;
  if (v17)
  {
    goto LABEL_127;
  }

  v60 = v59 - v54;
  if (__OFSUB__(v59, v54))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v53 <= 1)
  {
    if (!v53)
    {
      v61 = BYTE6(v52);
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  if (v53 != 2)
  {
    if (v11 <= 0)
    {
      v51 = 0;
      goto LABEL_106;
    }

LABEL_109:
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1000508F0(19);
    v67 = sub_100050950();
    v69 = v68;

    v77 = v67;
    v78 = v69;
    v81._countAndFlagsBits = 0x616574736E69202CLL;
    v81._object = 0xEE0020746F672064;
    sub_100050770(v81);
    v82._countAndFlagsBits = sub_100050950();
    sub_100050770(v82);

    v83._countAndFlagsBits = 46;
    v83._object = 0xE100000000000000;
    sub_100050770(v83);
    v84._countAndFlagsBits = v77;
    v70 = v78;
    v77 = 0xD000000000000027;
    v78 = 0x800000010005BDB0;
    v84._object = v70;
    sub_100050770(v84);

    v71 = v77;
    v72 = v78;
    sub_10001C55C();
    swift_allocError();
    *v12 = v71;
    *(v12 + 8) = v72;
    v13 = 5;
    goto LABEL_6;
  }

  v63 = *(v51 + 16);
  v62 = *(v51 + 24);
  v17 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v17)
  {
    __break(1u);
LABEL_93:
    LODWORD(v61) = HIDWORD(v51) - v51;
    if (__OFSUB__(HIDWORD(v51), v51))
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
    }

    v61 = v61;
  }

LABEL_95:
  if (v61 < v11)
  {
    goto LABEL_109;
  }

  if (v53 == 2)
  {
    v65 = v51 + 16;
    v64 = *(v51 + 16);
    v52 = *(v65 + 8);
    v17 = __OFSUB__(v52, v64);
    v51 = v52 - v64;
    if (!v17)
    {
      goto LABEL_106;
    }

    __break(1u);
LABEL_105:
    v51 = BYTE6(v52);
    goto LABEL_106;
  }

  if (v53 != 1)
  {
    goto LABEL_105;
  }

  v17 = __OFSUB__(HIDWORD(v51), v51);
  LODWORD(v51) = HIDWORD(v51) - v51;
  if (v17)
  {
    goto LABEL_134;
  }

  v51 = v51;
LABEL_106:
  v17 = __OFSUB__(v51, v11);
  v66 = v51 - v11;
  if (v17)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v66 < v54 || v60 != v55)
  {
    goto LABEL_109;
  }

  return result;
}