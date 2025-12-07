uint64_t sub_1480(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_14E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D8C4();
  *a1 = result;
  return result;
}

uint64_t sub_1524(uint64_t a1)
{
  type metadata accessor for AppDisambiguationView(0);
  sub_8970();
  __chkstk_darwin(v1);
  sub_8994();
  v4 = v3 - v2;
  v54 = type metadata accessor for RequestPaymentConfirmationView(0);
  sub_8970();
  __chkstk_darwin(v5);
  sub_8994();
  v8 = v7 - v6;
  v9 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v10 = sub_8A90(v9);
  __chkstk_darwin(v10);
  sub_8994();
  v53 = v12 - v11;
  v13 = sub_8C1C();
  v14 = type metadata accessor for SendPaymentConfirmationView(v13);
  sub_8970();
  __chkstk_darwin(v15);
  sub_8994();
  v18 = v17 - v16;
  v19 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v20 = sub_8A90(v19);
  __chkstk_darwin(v20);
  sub_8994();
  v23 = v22 - v21;
  type metadata accessor for SiriPaymentsSnippetModel(0);
  sub_8970();
  __chkstk_darwin(v24);
  sub_8994();
  v27 = (v26 - v25);
  sub_1E64();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2E34();
      sub_1E64();
      sub_10B24();
      sub_8930();
      sub_1D44(v45, v46, &protocol conformance descriptor for Context);
      v47 = sub_106D4();
      v49 = v48;
      v50 = *(v14 + 20);
      *(v18 + v50) = swift_getKeyPath();
      sub_2D44(&qword_1C1C8, &qword_11108);
      swift_storeEnumTagMultiPayload();
      v51 = (v18 + *(v14 + 24));
      *v51 = v47;
      v51[1] = v49;
      sub_2D8C();
      sub_8BBC();
      __dst[0] = 0x4034000000000000;
      sub_8BBC();
      sub_1D44(&qword_1C1E0, type metadata accessor for SendPaymentConfirmationView, &unk_112A8);
      v35 = sub_10884();
      sub_2DE0(v18, type metadata accessor for SendPaymentConfirmationView);
      v36 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
      v37 = v23;
      goto LABEL_6;
    case 2u:
      v38 = *(v27 + 2);
      *v4 = *v27;
      *(v4 + 16) = v38;
      sub_10A74();
      sub_1D44(&qword_1C1C0, type metadata accessor for AppDisambiguationView, &unk_11348);
      v35 = sub_10884();
      v36 = type metadata accessor for AppDisambiguationView;
      v37 = v4;
      goto LABEL_6;
    case 3u:
      v39 = v27[1];
      v56 = *v27;
      v57 = v39;
      v40 = v27[3];
      v58 = v27[2];
      v59 = v40;
      sub_1CE8(&v56, __dst);
      sub_10B24();
      sub_8930();
      sub_1D44(v41, v42, &protocol conformance descriptor for Context);
      v43 = sub_106D4();
      __src[0] = v56;
      __src[1] = v57;
      __src[2] = v58;
      __src[3] = v59;
      *&__src[4] = v43;
      *(&__src[4] + 1) = v44;
      sub_1D8C();
      v35 = sub_10884();
      sub_1DE0(&v56);
      memcpy(__dst, __src, 0x50uLL);
      sub_1E34(__dst);
      return v35;
    default:
      sub_2E34();
      sub_1E64();
      sub_10B24();
      sub_8930();
      sub_1D44(v28, v29, &protocol conformance descriptor for Context);
      v30 = sub_106D4();
      v32 = v31;
      v33 = *(v54 + 20);
      *(v8 + v33) = swift_getKeyPath();
      sub_2D44(&qword_1C1C8, &qword_11108);
      swift_storeEnumTagMultiPayload();
      v34 = (v8 + *(v54 + 24));
      *v34 = v30;
      v34[1] = v32;
      sub_2D8C();
      sub_8BBC();
      __dst[0] = 0x4034000000000000;
      sub_8BBC();
      sub_1D44(&qword_1C1D8, type metadata accessor for RequestPaymentConfirmationView, &unk_112F8);
      v35 = sub_10884();
      sub_2DE0(v8, type metadata accessor for RequestPaymentConfirmationView);
      v36 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
      v37 = v53;
LABEL_6:
      sub_2DE0(v37, v36);
      return v35;
  }
}

uint64_t sub_1C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1514();
  *a1 = result;
  return result;
}

uint64_t sub_1CB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8C()
{
  result = qword_1C1B8;
  if (!qword_1C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1B8);
  }

  return result;
}

uint64_t sub_1E64()
{
  sub_8B80();
  v1(0);
  sub_8970();
  v2 = sub_8C10();
  v3(v2);
  return v0;
}

uint64_t sub_1EBC()
{
  swift_getObjectType();
  sub_10CF4();
  sub_7298();
  v0 = sub_10B94();

  return v0;
}

id sub_1F64(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_1FC0()
{
  sub_2D44(&qword_1C488, &qword_11460);
  sub_8CA4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_11060;
  sub_2D44(&qword_1C450, &unk_11820);
  sub_105D4();
  sub_1EBC();
  sub_8E1C();
  v31._countAndFlagsBits = 0x72657961702ELL;
  v31._object = 0xE600000000000000;
  sub_10B74(v31);
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_8C28();
  v4 = [v3 currencyAmount];

  if (v4)
  {
    sub_103AC();
    v6 = v5;

    if (v6)
    {

      sub_8D84();
      v7 = sub_8C28();
      v1 = sub_1EBC();

      sub_8B3C();
      sub_8A7C();
      if (v9)
      {
        v2 = sub_8A48(v8);
      }

      sub_8B08();
    }
  }

  type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  sub_2D44(&qword_1C458, &qword_11440);
  v10 = sub_105F4();
  v11 = [v10 paymentRecord];

  if (v11)
  {
    v12 = [v11 feeAmount];

    if (v12)
    {
      v13 = sub_103AC();
      v1 = v14;

      sub_1480(v13, v1);
      v16 = v15;

      if (v16)
      {

        sub_8C28();
        sub_1EBC();
        sub_8E1C();
        sub_8B8C();
        sub_8A7C();
        if (v9)
        {
          v2 = sub_8A48(v17);
        }

        sub_8B08();
      }
    }
  }

  v18 = sub_8C28();
  v19 = sub_8750(v18);
  sub_1480(v19, v20);
  v22 = v21;

  if (v22)
  {

    v24 = sub_8C28();
    v25 = sub_1EBC();
    v27 = v26;

    sub_8C40();
    sub_8D00();
    if (v9)
    {
      v23 = sub_8A48(v28);
      v2 = v23;
    }

    *(v2 + 16) = v24;
    v29 = v2 + 16 * v1;
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
  }

  __chkstk_darwin(v23);
  sub_8CEC();
  return sub_109B4();
}

uint64_t sub_2270()
{
  v0 = sub_8D58();
  v1 = type metadata accessor for RequestPaymentConfirmationView(v0);
  v2 = sub_8AF8(v1);
  __chkstk_darwin(v2);
  sub_8C68();
  sub_8CB0();
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v3 = sub_8D4C();
  sub_2D44(v3, v4);
  v5 = sub_8A1C(&qword_1C468);
  return sub_8DC4(v5, v6, v7, v5);
}

uint64_t sub_2398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v53 = sub_10974();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RequestPaymentConfirmationView(0);
  v47 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v45 = v6;
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2D44(&qword_1C3F0, &qword_113F0);
  v63 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v42 - v8;
  v50 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v42 - v9;
  v58 = sub_109E4();
  v57 = *(v58 - 8);
  v11 = __chkstk_darwin(v58);
  v56 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v42 - v13;
  v55 = sub_10AB4();
  v62 = *(v55 - 8);
  v14 = __chkstk_darwin(v55);
  v54 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v42 - v16;
  sub_7894(0, &qword_1C470, INInteraction_ptr);
  sub_2D44(&qword_1C450, &unk_11820);
  v17 = sub_105D4();
  type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  sub_2D44(&qword_1C458, &qword_11440);
  v18 = sub_105F4();
  sub_1F64(v17, v18);
  v66 = a1;
  sub_10AC4();
  v46 = type metadata accessor for RequestPaymentConfirmationView;
  v43 = a1;
  v44 = v7;
  sub_1E64();
  swift_allocObject();
  v47 = type metadata accessor for RequestPaymentConfirmationView;
  sub_2E34();
  v65 = a1;
  v19 = v48;
  sub_10924();
  v20 = v52;
  v21 = v53;
  (*(v3 + 104))(v52, enum case for ButtonItemButtonStyle.Role.preferred(_:), v53);
  v22 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0, &protocol conformance descriptor for Button<A>);
  v23 = v49;
  sub_10894();
  (*(v3 + 8))(v20, v21);
  v24 = *(v63 + 8);
  v63 += 8;
  v24(v19, v23);
  v70 = v23;
  v71 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v50;
  v26 = sub_10884();
  (*(v51 + 8))(v10, v25);
  v72 = &type metadata for AnyView;
  v73 = &protocol witness table for AnyView;
  v70 = v26;
  v27 = v43;
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v64 = v27;
  sub_10924();
  v28 = sub_10884();
  v24(v19, v23);
  v68 = &type metadata for AnyView;
  v69 = &protocol witness table for AnyView;
  v67 = v28;
  v29 = v61;
  sub_109D4();
  v30 = *(v62 + 16);
  v31 = v54;
  v32 = v55;
  v30(v54, v60, v55);
  v33 = v57;
  v34 = *(v57 + 16);
  v35 = v56;
  v36 = v58;
  v34(v56, v29, v58);
  v37 = v59;
  v30(v59, v31, v32);
  v38 = sub_2D44(&qword_1C478, &qword_11450);
  v34(&v37[*(v38 + 48)], v35, v36);
  v39 = *(v33 + 8);
  v39(v61, v36);
  v40 = *(v62 + 8);
  v40(v60, v32);
  v39(v35, v36);
  return (v40)(v31, v32);
}

uint64_t sub_2C78(uint64_t a1)
{
  v2 = sub_10664();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10704();
}

uint64_t sub_2D44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2D8C()
{
  result = qword_1C1D0;
  if (!qword_1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1D0);
  }

  return result;
}

uint64_t sub_2DE0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_895C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2E34()
{
  sub_8B80();
  v1(0);
  sub_8970();
  v2 = sub_8C10();
  v3(v2);
  return v0;
}

uint64_t sub_2E8C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2EB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2EF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_3014(uint64_t a1)
{
  if (!qword_1C260)
  {
    sub_10664();
    v1 = sub_10674();
    if (!v2)
    {
      atomic_store(v1, &qword_1C260);
    }
  }
}

void sub_306C(uint64_t a1)
{
  if (!qword_1C268)
  {
    sub_10B24();
    sub_1D44(&qword_1C1B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_106E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1C268);
    }
  }
}

void sub_3100(uint64_t a1)
{
  if (!qword_1C270)
  {
    sub_2D8C();
    v1 = sub_106A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1C270);
    }
  }
}

uint64_t sub_3188(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void))
{
  a4(0);
  sub_8D14();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_2F80(v10, a2, v9);
  }

  sub_2D44(&qword_1C1E8, &qword_11240);
  sub_8D14();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_12:
    v10 = a1 + v13;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_2D44(&qword_1C1F0, &qword_11248);
    v13 = a3[7];
    goto LABEL_12;
  }

  v14 = *(a1 + a3[6]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_32E8(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_8D14();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    sub_2D44(&qword_1C1E8, &qword_11240);
    sub_8D14();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v11 = sub_2D44(&qword_1C1F0, &qword_11248);
      v15 = a4[7];
    }

    v12 = a1 + v15;
  }

  sub_2FD4(v12, a2, a2, v11);
}

void sub_3424(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_3014(319);
    if (v5 <= 0x3F)
    {
      sub_306C(319);
      if (v6 <= 0x3F)
      {
        sub_3100(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_34F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10A84();
    v9 = a1 + *(a3 + 20);

    return sub_2F80(v9, a2, v8);
  }
}

void *sub_358C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10A84();
    v8 = v5 + *(a4 + 20);

    return sub_2FD4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_360C(uint64_t a1)
{
  result = sub_10A84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_36A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v7 = sub_8D34();
  a2(v7);
  sub_8CE0();
  if (sub_8E34())
  {
    v8 = sub_8D34();
    v9 = *(a1 + *(a3(v8) + 24));
    if (v9)
    {
      v10 = v9;
      sub_8DA4();
    }

    else
    {
      sub_10B24();
      sub_8930();
      v13 = sub_1D44(v11, v12, &protocol conformance descriptor for Context);
      sub_8DE4(v13);
      __break(1u);
    }
  }
}

uint64_t sub_37A4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_8CE0();
  sub_7298();

  v2 = sub_10874();
  return sub_8D64(v2, v3, v4, v5);
}

void sub_3818(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v7 = sub_8D34();
  a2(v7);
  sub_8CE0();
  if (sub_8E34())
  {
    v8 = sub_8D34();
    v9 = *(a1 + *(a3(v8) + 24));
    if (v9)
    {
      v10 = v9;
      sub_8DA4();
    }

    else
    {
      sub_10B24();
      sub_8930();
      v13 = sub_1D44(v11, v12, &protocol conformance descriptor for Context);
      sub_8DE4(v13);
      __break(1u);
    }
  }
}

uint64_t sub_3914(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_8CE0();
  sub_7298();

  v2 = sub_10874();
  return sub_8D64(v2, v3, v4, v5);
}

uint64_t sub_3988()
{
  sub_2D44(&qword_1C488, &qword_11460);
  sub_8CA4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_11060;
  sub_2D44(&qword_1C550, &unk_11990);
  sub_105D4();
  sub_1EBC();
  sub_8E1C();
  v31._countAndFlagsBits = 0x65657961702ELL;
  v31._object = 0xE600000000000000;
  sub_10B74(v31);
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_8C28();
  v4 = [v3 currencyAmount];

  if (v4)
  {
    sub_103AC();
    v6 = v5;

    if (v6)
    {

      sub_8D84();
      v7 = sub_8C28();
      v1 = sub_1EBC();

      sub_8B3C();
      sub_8A7C();
      if (v9)
      {
        v2 = sub_8A48(v8);
      }

      sub_8B08();
    }
  }

  type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  sub_2D44(&qword_1C558, &qword_11540);
  v10 = sub_105F4();
  v11 = [v10 paymentRecord];

  if (v11)
  {
    v12 = [v11 feeAmount];

    if (v12)
    {
      v13 = sub_103AC();
      v1 = v14;

      sub_1480(v13, v1);
      v16 = v15;

      if (v16)
      {

        sub_8C28();
        sub_1EBC();
        sub_8E1C();
        sub_8B8C();
        sub_8A7C();
        if (v9)
        {
          v2 = sub_8A48(v17);
        }

        sub_8B08();
      }
    }
  }

  v18 = sub_8C28();
  v19 = sub_8750(v18);
  sub_1480(v19, v20);
  v22 = v21;

  if (v22)
  {

    v24 = sub_8C28();
    v25 = sub_1EBC();
    v27 = v26;

    sub_8C40();
    sub_8D00();
    if (v9)
    {
      v23 = sub_8A48(v28);
      v2 = v23;
    }

    *(v2 + 16) = v24;
    v29 = v2 + 16 * v1;
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
  }

  __chkstk_darwin(v23);
  sub_8CEC();
  return sub_109B4();
}

uint64_t sub_3C38@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, SEL *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v308 = a7;
  v309 = a8;
  v281 = a6;
  v276 = a5;
  v323 = a4;
  v305 = a3;
  v328 = a2;
  v316 = a9;
  v314 = sub_2D44(&qword_1C490, &qword_11468);
  sub_8970();
  __chkstk_darwin(v10);
  sub_8948();
  v288 = v11;
  sub_8A9C();
  __chkstk_darwin(v12);
  sub_8AA8();
  v287 = v13;
  v14 = sub_2D44(&qword_1C498, &qword_11470);
  v15 = sub_8A90(v14);
  __chkstk_darwin(v15);
  sub_8948();
  v317 = v16;
  sub_8A9C();
  __chkstk_darwin(v17);
  sub_8AA8();
  v322 = v18;
  v313 = sub_2D44(&qword_1C4A0, &qword_11478);
  sub_8980();
  v297 = v19;
  __chkstk_darwin(v20);
  sub_8948();
  v312 = v21;
  sub_8A9C();
  __chkstk_darwin(v22);
  sub_8AA8();
  v275[0] = v23;
  v24 = sub_2D44(&qword_1C4A8, &qword_11480);
  v25 = sub_8A90(v24);
  __chkstk_darwin(v25);
  sub_8948();
  v315 = v26;
  sub_8A9C();
  __chkstk_darwin(v27);
  sub_8AA8();
  v327 = v28;
  sub_8C1C();
  sub_10944();
  sub_8980();
  v290 = v30;
  v291 = v29;
  __chkstk_darwin(v29);
  sub_8994();
  v310 = v32 - v31;
  v289 = sub_2D44(&qword_1C4B0, &qword_11488);
  sub_8970();
  sub_8C80();
  __chkstk_darwin(v33);
  v294 = v275 - v34;
  v311 = sub_2D44(&qword_1C4B8, &qword_11490);
  sub_8970();
  __chkstk_darwin(v35);
  sub_8948();
  v293 = v36;
  sub_8A9C();
  __chkstk_darwin(v37);
  sub_8AA8();
  v292 = v38;
  v39 = sub_2D44(&qword_1C4C0, &qword_11498);
  v40 = sub_8A90(v39);
  __chkstk_darwin(v40);
  sub_8948();
  v321 = v41;
  sub_8A9C();
  __chkstk_darwin(v42);
  sub_8AA8();
  v326 = v43;
  sub_8C1C();
  sub_10664();
  sub_8980();
  v279 = v45;
  v280 = v44;
  __chkstk_darwin(v44);
  sub_8948();
  v278 = v46;
  sub_8A9C();
  __chkstk_darwin(v47);
  sub_8AA8();
  v277 = v48;
  v49 = sub_2D44(&qword_1C4C8, &qword_114A0);
  sub_8A90(v49);
  sub_8C80();
  __chkstk_darwin(v50);
  v318 = v275 - v51;
  sub_8C1C();
  v52 = sub_10784();
  v53 = sub_8A90(v52);
  __chkstk_darwin(v53);
  sub_8948();
  v296 = v54;
  sub_8A9C();
  __chkstk_darwin(v55);
  v275[2] = v275 - v56;
  sub_8A9C();
  __chkstk_darwin(v57);
  sub_8AA8();
  v275[1] = v58;
  sub_8C1C();
  sub_10AE4();
  sub_8980();
  v285 = v60;
  v286 = v59;
  __chkstk_darwin(v59);
  sub_8994();
  v284 = v62 - v61;
  v307 = sub_2D44(&qword_1C4D0, &qword_114A8);
  sub_8970();
  __chkstk_darwin(v63);
  sub_8948();
  v283 = v64;
  sub_8A9C();
  __chkstk_darwin(v65);
  sub_8AA8();
  v282 = v66;
  v67 = sub_2D44(&qword_1C4D8, &qword_114B0);
  v68 = sub_8A90(v67);
  __chkstk_darwin(v68);
  sub_8948();
  v320 = v69;
  sub_8A9C();
  __chkstk_darwin(v70);
  sub_8AA8();
  v319 = v71;
  v72 = sub_2D44(&qword_1C4E0, &qword_114B8);
  v73 = sub_8A90(v72);
  __chkstk_darwin(v73);
  sub_8948();
  v301 = v74;
  sub_8A9C();
  __chkstk_darwin(v75);
  sub_8AA8();
  v299 = v76;
  v77 = sub_2D44(&qword_1C4E8, &qword_114C0);
  sub_8A90(v77);
  sub_8C80();
  __chkstk_darwin(v78);
  v79 = sub_105A4();
  sub_8980();
  v81 = v80;
  __chkstk_darwin(v82);
  sub_8994();
  v85 = (v84 - v83);
  v86 = sub_105C4();
  v87 = sub_8A90(v86);
  __chkstk_darwin(v87);
  sub_8994();
  sub_10A04();
  sub_8980();
  v302 = v89;
  v303 = v88;
  __chkstk_darwin(v88);
  sub_8994();
  v298 = v91 - v90;
  v300 = sub_2D44(&qword_1C4F0, &qword_114C8);
  sub_8970();
  sub_8C80();
  __chkstk_darwin(v92);
  v94 = v275 - v93;
  v304 = sub_2D44(&qword_1C4F8, &qword_114D0);
  sub_8970();
  __chkstk_darwin(v95);
  sub_8948();
  v325 = v96;
  sub_8A9C();
  v98 = __chkstk_darwin(v97);
  v100 = v275 - v99;
  __chkstk_darwin(v98);
  sub_8AA8();
  v324 = v101;
  v102 = sub_8C1C();
  v306 = v328(v102);
  v103 = *(v306 + 24);
  v328 = a1;
  v104 = a1 + v103;
  v105 = *(a1 + v103 + 96);
  v106 = *(v104 + 13);
  v295 = v104;
  *v85 = v105;
  v85[1] = v106;
  (*(v81 + 104))(v85, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v79);
  sub_105E4();
  sub_8C04();
  sub_2FD4(v107, v108, v109, v110);
  v111 = sub_10604();
  sub_8C04();
  sub_2FD4(v112, v113, v114, v111);
  sub_8C04();
  sub_2FD4(v115, v116, v117, v111);
  memset(__dst, 0, 40);

  v118 = v298;
  sub_105B4();
  sub_109F4();
  LOBYTE(v111) = sub_107C4();
  v119 = sub_107E4();
  sub_107E4();
  if (sub_107E4() != v111)
  {
    v119 = sub_107E4();
  }

  sub_10644();
  sub_8A08();
  (*(v302 + 32))(v94, v118, v303);
  v120 = &v94[*(v300 + 36)];
  *v120 = v119;
  sub_8A6C(v120);
  v121 = sub_107B4();
  v122 = sub_107E4();
  sub_107E4();
  if (sub_107E4() != v121)
  {
    v122 = sub_107E4();
  }

  sub_10644();
  sub_8A08();
  sub_82FC();
  v123 = &v100[*(v304 + 36)];
  *v123 = v122;
  sub_8A6C(v123);
  sub_82FC();
  v323 = sub_2D44(v305, v323);
  v124 = sub_105D4();
  v125 = [v124 currencyAmount];

  if (v125)
  {
    sub_10774();
    v334._countAndFlagsBits = sub_8B74();
    sub_10764(v334);
    v305 = v125;
    v126._countAndFlagsBits = sub_103AC();
    if (v126._object)
    {
      object = v126._object;
    }

    else
    {
      v126._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v126._object = object;
    sub_10754(v126);

    v335._countAndFlagsBits = sub_8B74();
    sub_10764(v335);
    v128 = sub_10794();
    v132 = sub_89A4(v128, v129, v130, v131);
    v134 = v133;
    v136 = v135;
    v304 = v276(0);
    v303 = sub_2D44(&qword_1C1F0, &qword_11248);
    sub_10694();
    sub_10824();
    v137 = enum case for Font.Design.rounded(_:);
    v138 = sub_10804();
    sub_8970();
    v140 = v318;
    (*(v139 + 104))(v318, v137, v138);
    v302 = v138;
    sub_2FD4(v140, 0, 1, v138);
    sub_10834();
    sub_808C(v140, &qword_1C4C8, &qword_114A0);
    v141 = sub_10854();
    v143 = v142;
    v145 = v144;
    v147 = v146;

    sub_82AC(v132, v134, v136 & 1);

    *(&__dst[1] + 1) = &type metadata for Text;
    *&__dst[2] = &protocol witness table for Text;
    sub_8CA4();
    v148 = swift_allocObject();
    *&__dst[0] = v148;
    *(v148 + 16) = v141;
    *(v148 + 24) = v143;
    *(v148 + 32) = v145 & 1;
    *(v148 + 40) = v147;
    sub_10774();
    v336._countAndFlagsBits = sub_8B74();
    sub_10764(v336);
    v149 = sub_105D4();
    v150 = [v149 *v281];

    if (v150)
    {
      v151 = [v150 displayName];

      sub_10B64();
    }

    v337._countAndFlagsBits = sub_8CB0();
    sub_10754(v337);

    v338._countAndFlagsBits = sub_8B74();
    sub_10764(v338);
    v156 = sub_10794();
    v160 = sub_89A4(v156, v157, v158, v159);
    v162 = v161;
    v164 = v163;
    sub_10694();
    sub_10824();
    v165 = v318;
    sub_8C04();
    sub_2FD4(v166, v167, v168, v302);
    sub_10834();
    sub_808C(v165, &qword_1C4C8, &qword_114A0);
    v303 = sub_10854();
    v170 = v169;
    v172 = v171;
    v318 = v173;

    sub_82AC(v160, v162, v164 & 1);

    v174 = v277;
    sub_7CA0(v277);
    v176 = v278;
    v175 = v279;
    v177 = v280;
    (*(v279 + 104))(v278, enum case for ColorScheme.light(_:), v280);
    v178 = sub_10654();
    v179 = *(v175 + 8);
    v179(v176, v177);
    v179(v174, v177);
    if (v178)
    {
      v180 = sub_10904();
    }

    else
    {
      v180 = sub_10914();
    }

    v329[0] = v180;
    v181 = v303;
    v182 = sub_10844();
    v184 = v183;
    v186 = v185;
    v188 = v187;
    sub_82AC(v181, v170, v172 & 1);

    v329[3] = &type metadata for Text;
    v329[4] = &protocol witness table for Text;
    sub_8CA4();
    v189 = swift_allocObject();
    v329[0] = v189;
    *(v189 + 16) = v182;
    *(v189 + 24) = v184;
    *(v189 + 32) = v186 & 1;
    *(v189 + 40) = v188;
    v332 = 0;
    v330 = 0u;
    v331 = 0u;
    v190 = v284;
    sub_10AD4();
    sub_107C4();
    v191 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v192)
    {
      v191 = sub_107E4();
    }

    sub_10644();
    sub_8A08();

    v193 = v283;
    (*(v285 + 32))(v283, v190, v286);
    v155 = v307;
    v194 = (v193 + *(v307 + 36));
    *v194 = v191;
    sub_8A6C(v194);
    sub_8E04();
    v153 = v319;
    sub_8E04();
    v152 = 0;
    v154 = v310;
  }

  else
  {
    v152 = 1;
    v153 = v319;
    v154 = v310;
    v155 = v307;
  }

  sub_2FD4(v153, v152, 1, v155);
  sub_2D44(v308, v309);
  v195 = sub_105F4();
  v196 = [v195 paymentRecord];

  if (v196 && (v197 = [v196 feeAmount], v196, v197) && (sub_103AC(), v197, v198 = sub_8CB0(), sub_1480(v198, v199), v201 = v200, , v201) || (v202 = sub_105D4(), v203 = sub_8750(v202), sub_1480(v203, v204), v206 = v205, , v206))
  {

    sub_10934();
    sub_2D44(&qword_1C548, &unk_11530);
    v207 = swift_allocObject();
    *(v207 + 16) = xmmword_11070;
    v208 = sub_107D4();
    *(v207 + 32) = v208;
    *(v207 + 33) = sub_107F4();
    v209 = sub_107E4();
    sub_107E4();
    if (sub_107E4() != v208)
    {
      v209 = sub_107E4();
    }

    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v192)
    {
      v209 = sub_107E4();
    }

    v210 = v294;
    sub_10644();
    sub_8A08();
    (*(v290 + 32))(v210, v154, v291);
    v211 = &v210[*(v289 + 36)];
    *v211 = v209;
    sub_8A6C(v211);
    sub_107C4();
    v212 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v192)
    {
      v212 = sub_107E4();
    }

    sub_10644();
    sub_8A08();
    v213 = v293;
    sub_82FC();
    v214 = v311;
    v215 = (v213 + *(v311 + 36));
    *v215 = v212;
    sub_8A6C(v215);
    sub_8E04();
    v216 = v326;
    sub_8E04();
    v217 = v214;
    v218 = 0;
  }

  else
  {
    v218 = 1;
    v217 = v311;
    v216 = v326;
  }

  sub_2FD4(v216, v218, 1, v217);
  v219 = sub_105F4();
  v220 = [v219 paymentRecord];

  if (v220 && (v221 = [v220 feeAmount], v220, v221) && (sub_103AC(), v221, v222 = sub_8CB0(), v224 = sub_1480(v222, v223), v226 = v225, , v226))
  {
    v227 = v295[6];
    v228 = v295[7];
    sub_10774();
    v339._countAndFlagsBits = sub_8B74();
    sub_10764(v339);
    v340._countAndFlagsBits = v227;
    v340._object = v228;
    sub_10754(v340);
    v341._countAndFlagsBits = 8250;
    v341._object = 0xE200000000000000;
    sub_10764(v341);
    v342._countAndFlagsBits = sub_8D78();
    sub_10754(v342);

    v343._countAndFlagsBits = sub_8B74();
    sub_10764(v343);
    v229 = sub_10794();
    sub_89A4(v229, v230, v231, v232);
    v233 = sub_8CBC();
    sub_8BD8(v233, v234);
    LOBYTE(__dst[0]) = v224 & 1;
    sub_108F4();
    KeyPath = swift_getKeyPath();
    sub_8AB4(KeyPath);
    sub_2D44(&qword_1C518, &qword_11518);
    sub_8110();
    v236 = v275[0];
    sub_108D4();
    memcpy(__dst, v329, 0x60uLL);
    sub_808C(__dst, &qword_1C518, &qword_11518);
    v237 = v327;
    v238 = v236;
    v239 = v313;
    (*(v297 + 32))(v327, v238, v313);
    v240 = v237;
    v241 = 0;
    v242 = 1;
  }

  else
  {
    sub_8C04();
    v239 = v313;
  }

  sub_2FD4(v240, v241, v242, v239);
  v243 = sub_105D4();
  v244 = sub_8750(v243);
  v246 = sub_1480(v244, v245);
  v248 = v247;

  v249 = v312;
  if (v248)
  {
    v250 = v295[4];
    v251 = v295[5];
    sub_10774();
    v344._countAndFlagsBits = sub_8B74();
    sub_10764(v344);
    v345._countAndFlagsBits = v250;
    v345._object = v251;
    sub_10754(v345);
    v346._countAndFlagsBits = 8250;
    v346._object = 0xE200000000000000;
    sub_10764(v346);
    v347._countAndFlagsBits = sub_8D78();
    sub_10754(v347);

    v348._countAndFlagsBits = sub_8B74();
    sub_10764(v348);
    v252 = sub_10794();
    sub_89A4(v252, v253, v254, v255);
    v256 = sub_8CBC();
    sub_8BD8(v256, v257);
    LOBYTE(__dst[0]) = v246 & 1;
    sub_108F4();
    v258 = swift_getKeyPath();
    sub_8AB4(v258);
    sub_2D44(&qword_1C518, &qword_11518);
    sub_8110();
    sub_108D4();
    memcpy(__dst, v329, 0x60uLL);
    sub_808C(__dst, &qword_1C518, &qword_11518);
    sub_107C4();
    v259 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v192)
    {
      v259 = sub_107E4();
    }

    sub_10644();
    sub_8A08();
    v260 = v288;
    (*(v297 + 32))(v288, v249, v239);
    v261 = v314;
    v262 = (v260 + *(v314 + 36));
    *v262 = v259;
    sub_8A6C(v262);
    sub_824C();
    v263 = v322;
    sub_824C();
    v264 = v263;
    v265 = 0;
    v266 = 1;
    v267 = v261;
  }

  else
  {
    sub_8C04();
    v267 = v314;
  }

  sub_2FD4(v264, v265, v266, v267);
  sub_8034();
  sub_8034();
  sub_8034();
  v268 = v315;
  sub_8034();
  v269 = v317;
  sub_8034();
  v270 = sub_8D4C();
  v272 = sub_2D44(v270, v271);
  v273 = v316;
  *(v316 + 24) = v272;
  v273[4] = sub_8A1C(&qword_1C508);
  sub_769C(v273);
  sub_8034();
  sub_2D44(&qword_1C510, &qword_114E0);
  sub_8034();
  sub_8034();
  sub_8034();
  sub_8034();
  sub_808C(v322, &qword_1C498, &qword_11470);
  sub_808C(v327, &qword_1C4A8, &qword_11480);
  sub_808C(v326, &qword_1C4C0, &qword_11498);
  sub_808C(v319, &qword_1C4D8, &qword_114B0);
  sub_808C(v324, &qword_1C4F8, &qword_114D0);
  sub_808C(v269, &qword_1C498, &qword_11470);
  sub_808C(v268, &qword_1C4A8, &qword_11480);
  sub_808C(v321, &qword_1C4C0, &qword_11498);
  sub_808C(v320, &qword_1C4D8, &qword_114B0);
  return sub_808C(v325, &qword_1C4F8, &qword_114D0);
}

uint64_t sub_54C4()
{
  v0 = sub_8D58();
  v1 = type metadata accessor for SendPaymentConfirmationView(v0);
  v2 = sub_8AF8(v1);
  __chkstk_darwin(v2);
  sub_8C68();
  sub_8CB0();
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v3 = sub_8D4C();
  sub_2D44(v3, v4);
  v5 = sub_8A1C(&qword_1C468);
  return sub_8DC4(v5, v6, v7, v5);
}

uint64_t sub_55EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v53 = sub_10974();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SendPaymentConfirmationView(0);
  v47 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v45 = v6;
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2D44(&qword_1C3F0, &qword_113F0);
  v63 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v42 - v8;
  v50 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v42 - v9;
  v58 = sub_109E4();
  v57 = *(v58 - 8);
  v11 = __chkstk_darwin(v58);
  v56 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v42 - v13;
  v55 = sub_10AB4();
  v62 = *(v55 - 8);
  v14 = __chkstk_darwin(v55);
  v54 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v42 - v16;
  sub_7894(0, &qword_1C470, INInteraction_ptr);
  sub_2D44(&qword_1C550, &unk_11990);
  v17 = sub_105D4();
  type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  sub_2D44(&qword_1C558, &qword_11540);
  v18 = sub_105F4();
  sub_1F64(v17, v18);
  v66 = a1;
  sub_10AC4();
  v46 = type metadata accessor for SendPaymentConfirmationView;
  v43 = a1;
  v44 = v7;
  sub_1E64();
  swift_allocObject();
  v47 = type metadata accessor for SendPaymentConfirmationView;
  sub_2E34();
  v65 = a1;
  v19 = v48;
  sub_10924();
  v20 = v52;
  v21 = v53;
  (*(v3 + 104))(v52, enum case for ButtonItemButtonStyle.Role.preferred(_:), v53);
  v22 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0, &protocol conformance descriptor for Button<A>);
  v23 = v49;
  sub_10894();
  (*(v3 + 8))(v20, v21);
  v24 = *(v63 + 8);
  v63 += 8;
  v24(v19, v23);
  v70 = v23;
  v71 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v50;
  v26 = sub_10884();
  (*(v51 + 8))(v10, v25);
  v72 = &type metadata for AnyView;
  v73 = &protocol witness table for AnyView;
  v70 = v26;
  v27 = v43;
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v64 = v27;
  sub_10924();
  v28 = sub_10884();
  v24(v19, v23);
  v68 = &type metadata for AnyView;
  v69 = &protocol witness table for AnyView;
  v67 = v28;
  v29 = v61;
  sub_109D4();
  v30 = *(v62 + 16);
  v31 = v54;
  v32 = v55;
  v30(v54, v60, v55);
  v33 = v57;
  v34 = *(v57 + 16);
  v35 = v56;
  v36 = v58;
  v34(v56, v29, v58);
  v37 = v59;
  v30(v59, v31, v32);
  v38 = sub_2D44(&qword_1C478, &qword_11450);
  v34(&v37[*(v38 + 48)], v35, v36);
  v39 = *(v33 + 8);
  v39(v61, v36);
  v40 = *(v62 + 8);
  v40(v60, v32);
  v39(v35, v36);
  return (v40)(v31, v32);
}

uint64_t sub_5EA8()
{
  sub_8B80();
  sub_109A4();
  sub_8980();
  __chkstk_darwin(v1);
  sub_8994();
  v0();
  v2 = sub_10AA4();
  v3 = sub_8D78();
  v4(v3);
  sub_2D44(&qword_1C480, &qword_11458);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_11060;
  *(v5 + 32) = v2;
  v6 = sub_10A94();

  return v6;
}

uint64_t sub_6014()
{
  v0 = sub_8D58();
  v1 = type metadata accessor for AppDisambiguationView(v0);
  v2 = sub_8AF8(v1);
  __chkstk_darwin(v2);
  v3 = sub_10A54();
  v4 = sub_8A90(v3);
  __chkstk_darwin(v4);
  sub_8994();

  sub_10A44();
  sub_8D78();
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  sub_2D44(&qword_1C410, &unk_113F8);
  sub_7384();
  return sub_10A14();
}

uint64_t sub_61D0(uint64_t a1)
{
  v1 = type metadata accessor for AppDisambiguationView(0);
  __chkstk_darwin(v1 - 8);
  swift_getKeyPath();
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  sub_2D44(&qword_1C428, &qword_11420);
  sub_2D44(&qword_1C430, &qword_11428);
  sub_75BC();
  sub_10A34();
  sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  swift_getOpaqueTypeConformance2();
  return sub_10954();
}

uint64_t sub_63E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AppDisambiguationView(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10624();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10A34();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(*a2 + 16))
  {
    v15 = *a2 + 32 * v14;
    v22 = result;
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    v48 = &type metadata for String;
    v49 = &protocol witness table for String;
    v46 = v17;
    v47 = v16;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v21 = a3;

    sub_10614();

    v24[3] = sub_10984();
    v24[4] = &protocol witness table for RFImageView;
    sub_769C(v24);
    sub_10994();
    sub_10A24();
    sub_1E64();
    v18 = (v7 + ((*(v23 + 80) + 16) & ~*(v23 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_2E34();
    *(v19 + v18) = v14;
    sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    v20 = v22;
    sub_108A4();

    return (*(v10 + 8))(v13, v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_6768(uint64_t a1, unint64_t a2)
{
  v4 = sub_10B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDisambiguationView(0);
  sub_10A64();
  sub_2D44(&qword_1C448, &unk_11430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_11060;
  v15[1] = 0x6449707061;
  v15[2] = 0xE500000000000000;
  result = sub_10BB4();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a1 + 16) > a2)
  {
    v10 = *a1 + 32 * a2;
    v12 = *(v10 + 48);
    v11 = *(v10 + 56);
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v11;

    v13 = sub_10B44();
    v16._object = 0x8000000000012910;
    v16._countAndFlagsBits = 0xD000000000000021;
    v14._rawValue = v13;
    sub_10AF4(v16, v14);

    return (*(v5 + 8))(v7, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_6958()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  sub_7208(v0, &v3);
  sub_109E4();
  sub_1D44(&qword_1C3E0, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_109C4();
}

uint64_t sub_6A24()
{
  v0 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - v2;
  sub_6C5C(&unk_18C28, sub_7344, sub_734C);
  v4 = sub_7240(&qword_1C3F0, &qword_113F0);
  v5 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0, &protocol conformance descriptor for Button<A>);
  v11 = v4;
  v12 = v5;
  swift_getOpaqueTypeConformance2();
  v6 = sub_10884();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v13 = &type metadata for AnyView;
  v14 = &protocol witness table for AnyView;
  v11 = v6;
  sub_6C5C(&unk_18C00, sub_7288, sub_7290);
  v8 = sub_10884();
  v7(v3, v0);
  v10[3] = &type metadata for AnyView;
  v10[4] = &protocol witness table for AnyView;
  v10[0] = v8;
  return sub_109D4();
}

uint64_t sub_6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = sub_10974();
  sub_8980();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_8994();
  v10 = v9 - v8;
  v11 = sub_2D44(&qword_1C3F0, &qword_113F0);
  sub_8980();
  v13 = v12;
  sub_8C80();
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  v17 = swift_allocObject();
  memcpy((v17 + 16), v3, 0x50uLL);
  v20 = v3;
  sub_7208(v3, v21);
  sub_10924();
  (*(v6 + 104))(v10, enum case for ButtonItemButtonStyle.Role.preferred(_:), v4);
  sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0, &protocol conformance descriptor for Button<A>);
  sub_8D4C();
  sub_10894();
  (*(v6 + 8))(v10, v4);
  return (*(v13 + 8))(v16, v11);
}

void sub_6E80(void *a1)
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v2 = sub_8E34();
  if (v2)
  {
    v3 = a1[8];
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      sub_10B14();
    }

    else
    {
      sub_10B24();
      sub_1D44(&qword_1C1B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      sub_106C4();
      __break(1u);
    }
  }
}

uint64_t sub_6F84@<X0>(uint64_t a2@<X8>)
{
  sub_7298();

  result = sub_10874();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_6FF0(void *a1)
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v2 = sub_8E34();
  if (v2)
  {
    v3 = a1[8];
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      sub_10B14();
    }

    else
    {
      sub_10B24();
      sub_1D44(&qword_1C1B0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      sub_106C4();
      __break(1u);
    }
  }
}

uint64_t sub_70F4@<X0>(uint64_t a2@<X8>)
{
  sub_7298();

  result = sub_10874();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_71A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_7240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_7298()
{
  result = qword_1C400;
  if (!qword_1C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C400);
  }

  return result;
}

uint64_t sub_72EC()
{
  sub_71A8(*(v0 + 16), *(v0 + 24));

  sub_71A8(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_7384()
{
  result = qword_1C418;
  if (!qword_1C418)
  {
    sub_7240(&qword_1C410, &unk_113F8);
    sub_10A34();
    sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C418);
  }

  return result;
}

uint64_t sub_7468()
{
  type metadata accessor for AppDisambiguationView(0);
  sub_8D20();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_10A84();
  sub_895C();
  (*(v8 + 8))(v1 + v4 + v7);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_7540@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppDisambiguationView(0);
  sub_8A90(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_63E4(a1, v7, a2);
}

unint64_t sub_75BC()
{
  result = qword_1C438;
  if (!qword_1C438)
  {
    sub_7240(&qword_1C428, &qword_11420);
    sub_7648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C438);
  }

  return result;
}

unint64_t sub_7648()
{
  result = qword_1C440;
  if (!qword_1C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C440);
  }

  return result;
}

uint64_t *sub_769C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_76FC()
{
  type metadata accessor for AppDisambiguationView(0);
  sub_8D20();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = *(v0 + 28);
  sub_10A84();
  sub_895C();
  (*(v11 + 8))(v9 + v10);

  return _swift_deallocObject(v1, v8 + 8, v6 | 7);
}

uint64_t sub_77E0()
{
  v1 = type metadata accessor for AppDisambiguationView(0);
  sub_8AF8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6768(v0 + v6, v7);
}

uint64_t sub_7894(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_7904()
{
  type metadata accessor for RequestPaymentConfirmationView(0);
  sub_8C8C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  sub_2D44(&qword_1C450, &unk_11820);
  sub_895C();
  (*(v8 + 8))(v1 + v4);
  v9 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v10 = *(v9 + 20);
  sub_2D44(&qword_1C458, &qword_11440);
  sub_895C();
  (*(v11 + 8))(v1 + v4 + v10);
  v12 = v1 + v4 + *(v9 + 24);

  sub_71A8(*(v12 + 64), *(v12 + 72));
  sub_71A8(*(v12 + 80), *(v12 + 88));

  v13 = v0[5];
  sub_2D44(&qword_1C1C8, &qword_11108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10664();
    sub_895C();
    (*(v14 + 8))(v7 + v13);
  }

  else
  {
  }

  v15 = v0[7];
  v16 = sub_2D44(&qword_1C1F0, &qword_11248);
  sub_8970();
  v18 = *(v17 + 8);
  v18(v7 + v15, v16);
  v18(v7 + v0[8], v16);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_7C00(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t, uint64_t))
{
  v8 = a1(0);
  sub_8A90(v8);
  return a4(v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)), a2, a3);
}

uint64_t sub_7CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10744();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2D44(&qword_1C1C8, &qword_11108);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_8034();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10664();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_10B84();
    v11 = sub_107A4();
    sub_10634();

    sub_10734();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

char *sub_7EA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2D44(&qword_1C488, &qword_11460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_8034()
{
  sub_8B80();
  sub_2D44(v1, v2);
  sub_8970();
  v3 = sub_8C10();
  v4(v3);
  return v0;
}

uint64_t sub_808C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2D44(a2, a3);
  sub_895C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_80E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10714();
  *a1 = result;
  return result;
}

unint64_t sub_8110()
{
  result = qword_1C520;
  if (!qword_1C520)
  {
    sub_7240(&qword_1C518, &qword_11518);
    sub_81C8();
    sub_88C0(&qword_1C538, &qword_1C540, &qword_11528, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C520);
  }

  return result;
}

unint64_t sub_81C8()
{
  result = qword_1C528;
  if (!qword_1C528)
  {
    sub_7240(&qword_1C530, &qword_11520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C528);
  }

  return result;
}

uint64_t sub_824C()
{
  sub_8B80();
  sub_2D44(&qword_1C490, &qword_11468);
  sub_8970();
  v1 = sub_8C10();
  v2(v1);
  return v0;
}

uint64_t sub_82AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_82BC()
{
  sub_82AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_8CA4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_82FC()
{
  sub_8B80();
  sub_2D44(v1, v2);
  sub_8970();
  v3 = sub_8C10();
  v4(v3);
  return v0;
}

uint64_t sub_8354()
{
  type metadata accessor for SendPaymentConfirmationView(0);
  sub_8C8C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  sub_2D44(&qword_1C550, &unk_11990);
  sub_895C();
  (*(v8 + 8))(v1 + v4);
  v9 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v10 = *(v9 + 20);
  sub_2D44(&qword_1C558, &qword_11540);
  sub_895C();
  (*(v11 + 8))(v1 + v4 + v10);
  v12 = v1 + v4 + *(v9 + 24);

  sub_71A8(*(v12 + 64), *(v12 + 72));
  sub_71A8(*(v12 + 80), *(v12 + 88));

  v13 = v0[5];
  sub_2D44(&qword_1C1C8, &qword_11108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10664();
    sub_895C();
    (*(v14 + 8))(v7 + v13);
  }

  else
  {
  }

  v15 = v0[7];
  v16 = sub_2D44(&qword_1C1F0, &qword_11248);
  sub_8970();
  v18 = *(v17 + 8);
  v18(v7 + v15, v16);
  v18(v7 + v0[8], v16);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_85B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_8D58();
  v5 = v4(v3);
  sub_8A90(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a2(v7);
}

uint64_t sub_8750(void *a1)
{
  v2 = [a1 note];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10B64();

  return v3;
}

uint64_t sub_88C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_7240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_89A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a3 & 1;

  return Text.init(_:tableName:bundle:comment:)(a1, a2, v5, a4, 0, 0, 0, 0);
}

uint64_t sub_8A1C(unint64_t *a1)
{

  return sub_88C0(a1, v1, v2, &protocol conformance descriptor for TupleView<A>);
}

char *sub_8A48@<X0>(unint64_t a1@<X8>)
{

  return sub_7EA0((a1 > 1), v1, 1, v2);
}

void sub_8A6C(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

uint64_t sub_8AB4(uint64_t a1)
{
  *(v1 + 472) = v2;
  *(v1 + 480) = v3;
  *(v1 + 488) = v6;
  *(v1 + 496) = v5;
  v8 = *(v1 + 592);
  *(v1 + 504) = *(v1 + 576);
  *(v1 + 520) = v8;
  *(v1 + 536) = *(v1 + 608);
  *(v1 + 552) = a1;
  *(v1 + 560) = v4;

  return static Font.Weight.regular.getter();
}

void sub_8B08()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_8B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3, &protocol conformance descriptor for ComponentStack<A>);
}

void sub_8B3C()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x636E65727275632ELL;
  v4._object = 0xEF746E756F6D4179;

  sub_10B74(v4);
}

void sub_8B8C()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x756F6D416565662ELL;
  v4._object = 0xEA0000000000746ELL;

  sub_10B74(v4);
}

uint64_t sub_8BBC()
{

  return ScaledMetric.init(wrappedValue:)(v2 - 168, v1, v0);
}

uint64_t sub_8BD8(uint64_t a1, uint64_t a2)
{

  return _FrameLayout.init(width:height:alignment:)(0, 1, 0, 1, a1, a2);
}

uint64_t sub_8C28()
{

  return sub_105D4();
}

void sub_8C40()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x65746F6E2ELL;
  v4._object = 0xE500000000000000;

  sub_10B74(v4);
}

uint64_t sub_8CBC()
{

  return (static Alignment.center.getter)();
}

uint64_t sub_8D64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

void sub_8D84()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(17);
}

uint64_t sub_8DA4()
{

  return sub_10B14();
}

uint64_t sub_8DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_109C4();
}

uint64_t sub_8DE4(uint64_t a1)
{

  return sub_106C4();
}

uint64_t sub_8E04()
{

  return sub_82FC();
}

void sub_8E1C()
{
}

void *sub_8E34()
{
  sub_8B80();
  v0 = objc_opt_self();
  isa = sub_10584().super.isa;
  v9[0] = 0;
  v2 = [v0 propertyListWithData:isa options:0 format:0 error:v9];

  if (!v2)
  {
    v7 = v9[0];
    sub_10574();

    swift_willThrow();

    return 0;
  }

  v3 = v9[0];
  sub_10BA4();
  swift_unknownObjectRelease();
  sub_2D44(&qword_1CA08, &qword_123B0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v4 = objc_opt_self();
  result = sub_D914(v8, v4);
  if (result)
  {
    v6 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_8FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_8FB0();
  *a1 = result;
  return result;
}

uint64_t sub_900C(uint64_t a1)
{
  v2 = sub_EF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9048(uint64_t a1)
{
  v2 = sub_EF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_9084(uint64_t a1)
{
  sub_10034();
  sub_2D44(&qword_1C9F0, &qword_123A8);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v3);
  sub_1014C();
  v4 = sub_101C4();
  sub_10064(v4, v5);
  sub_EF7C();
  sub_1013C();
  sub_10CC4();
  v17[112] = 0;
  v6 = sub_101C4();
  sub_2D44(v6, v7);
  sub_FF14(&qword_1C9F8);
  sub_100C4();
  sub_101F8(v1);
  if (v2)
  {
    v12 = sub_101D0();
    v13(v12);
  }

  else
  {
    v8 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    sub_102E4(v8);
    sub_2D44(&qword_1C458, &qword_11440);
    sub_FEBC();
    sub_88C0(v9, v10, &qword_11440, v11);
    sub_10094();
    sub_102B8();
    memcpy(v17, &unk_11820 + &qword_1C458, 0x70uLL);
    sub_1036C();
    sub_F184();
    sub_101F8(v17);
    sub_10234();
    sub_F1D8(&v16);
    v14 = sub_101D0();
    v15(v14);
  }

  sub_1004C();
}

void sub_9264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  sub_10338(v25);
  sub_2D44(&qword_1C458, &qword_11440);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v26);
  sub_FE7C();
  sub_2D44(&qword_1C450, &unk_11820);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v27);
  sub_FFC0();
  sub_2D44(&qword_1C988, &qword_12388);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v28);
  sub_FFB0();
  type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  sub_8970();
  __chkstk_darwin(v29);
  sub_8994();
  v30 = v23[4];
  sub_FF6C();
  v31 = sub_EF7C();
  sub_10258(&type metadata for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.CodingKeys, v32, v31);
  if (v24)
  {
    sub_D514(v23);
  }

  else
  {
    sub_100EC();
    sub_FFCC(&qword_1C998, &qword_1C450, &unk_11820);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v33 = sub_100D0();
    v34(v33);
    sub_FF8C(&qword_1C9A0, &qword_1C458, &qword_11440);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v35 = sub_FFF0();
    v36(v35);
    sub_EECC();
    sub_1007C();
    sub_10C24();
    v37 = sub_FF40();
    v38(v37);
    sub_10184();
    sub_1038C();
    sub_D514(v23);
    sub_DD4C(v30, type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
  }

  sub_1004C();
}

uint64_t sub_9618()
{
  sub_8B80();
  v3 = v1 == 0x746E65746E69 && v2 == 0xE600000000000000;
  if (v3 || (sub_1029C(0x746E65746E69) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x65736E6F70736572 && v0 == 0xE800000000000000;
    if (v5 || (sub_1029C(0x65736E6F70736572) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x616D7269666E6F63 && v0 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      v7 = sub_1029C(0x616D7269666E6F63);

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_9738(char a1)
{
  if (!a1)
  {
    return 0x746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x65736E6F70736572;
  }

  return 0x616D7269666E6F63;
}

void sub_9794(uint64_t a1)
{
  sub_10034();
  sub_2D44(&qword_1C9D0, &qword_123A0);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v3);
  sub_1014C();
  v4 = sub_101C4();
  sub_10064(v4, v5);
  sub_EE78();
  sub_1013C();
  sub_10CC4();
  v17[112] = 0;
  v6 = sub_101C4();
  sub_2D44(v6, v7);
  sub_FF14(&qword_1C9D8);
  sub_100C4();
  sub_101F8(v1);
  if (v2)
  {
    v12 = sub_101D0();
    v13(v12);
  }

  else
  {
    v8 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
    sub_102E4(v8);
    sub_2D44(&qword_1C558, &qword_11540);
    sub_FEBC();
    sub_88C0(v9, v10, &qword_11540, v11);
    sub_10094();
    sub_102B8();
    memcpy(v17, &unk_11990 + &qword_1C558, 0x70uLL);
    sub_1036C();
    sub_F184();
    sub_101F8(v17);
    sub_10234();
    sub_F1D8(&v16);
    v14 = sub_101D0();
    v15(v14);
  }

  sub_1004C();
}

void sub_9974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  sub_10338(v25);
  sub_2D44(&qword_1C558, &qword_11540);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v26);
  sub_FE7C();
  sub_2D44(&qword_1C550, &unk_11990);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v27);
  sub_FFC0();
  sub_2D44(&qword_1C960, &qword_12380);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v28);
  sub_FFB0();
  type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  sub_8970();
  __chkstk_darwin(v29);
  sub_8994();
  v30 = v23[4];
  sub_FF6C();
  v31 = sub_EE78();
  sub_10258(&type metadata for SiriPaymentsSnippetModel.SendPaymentConfirmationModel.CodingKeys, v32, v31);
  if (v24)
  {
    sub_D514(v23);
  }

  else
  {
    sub_100EC();
    sub_FFCC(&qword_1C970, &qword_1C550, &unk_11990);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v33 = sub_100D0();
    v34(v33);
    sub_FF8C(&qword_1C978, &qword_1C558, &qword_11540);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v35 = sub_FFF0();
    v36(v35);
    sub_EECC();
    sub_1007C();
    sub_10C24();
    v37 = sub_FF40();
    v38(v37);
    sub_10184();
    sub_1038C();
    sub_D514(v23);
    sub_DD4C(v30, type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
  }

  sub_1004C();
}

uint64_t sub_9D28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746F6ELL && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6562614C656566 && a2 == 0xE800000000000000;
        if (v8 || (sub_10C74() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x446D7269666E6F63 && a2 == 0xE900000000000049;
          if (v9 || (sub_10C74() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x49446C65636E6163 && a2 == 0xE800000000000000;
            if (v10 || (sub_10C74() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_10C74();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_9F70(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x614C6C65636E6163;
      break;
    case 2:
      result = 0x6562614C65746F6ELL;
      break;
    case 3:
      result = 0x6C6562614C656566;
      break;
    case 4:
      result = 0x446D7269666E6F63;
      break;
    case 5:
      result = 0x49446C65636E6163;
      break;
    case 6:
      result = 0x6449707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_A070()
{
  sub_2D44(&qword_1CA20, &qword_123C0);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v2);
  sub_FFB0();
  sub_FF6C();
  sub_F208();
  sub_1034C(&type metadata for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys);
  LOBYTE(v8) = 0;
  sub_FEF0();
  sub_10C54();
  if (!v1)
  {
    sub_FE40(1);
    sub_10C54();
    sub_FE40(2);
    sub_10C54();
    sub_FE40(3);
    sub_10C54();
    v10 = *(v0 + 64);
    v8 = *(v0 + 64);
    v7 = 4;
    sub_EFD0(&v10, v6);
    sub_F02C();
    sub_FE54();
    sub_10C64();
    sub_71A8(v8, *(&v8 + 1));
    v8 = *(v0 + 80);
    v9 = v8;
    v7 = 5;
    sub_EFD0(&v9, v6);
    sub_FE54();
    sub_10C64();
    sub_71A8(v8, *(&v8 + 1));
    sub_FE40(6);
    sub_10C54();
  }

  v3 = sub_FF40();
  return v4(v3);
}

void sub_A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  v25 = v24;
  v27 = v26;
  v28 = sub_2D44(&qword_1CA10, &qword_123B8);
  sub_8980();
  v30 = v29;
  sub_8C80();
  __chkstk_darwin(v31);
  v33 = &v50 - v32;
  sub_10064(v25, v25[3]);
  sub_F208();
  sub_10CB4();
  if (v23)
  {
    sub_D514(v25);
  }

  else
  {
    LOBYTE(v62) = 0;
    v34 = sub_FF4C();
    v60 = v35;
    LOBYTE(v62) = 1;
    v36 = sub_FF4C();
    v59 = v37;
    LOBYTE(v62) = 2;
    v53 = sub_FF4C();
    v54 = v36;
    v58 = v38;
    LOBYTE(v62) = 3;
    v39 = sub_FF4C();
    v55 = v40;
    v51 = v39;
    LOBYTE(v61[0]) = 4;
    sub_ED7C();
    sub_101AC();
    *(v42 - 256) = v41;
    sub_10C24();
    v56 = v62;
    v57 = v63;
    LOBYTE(v61[0]) = 5;
    sub_101AC();
    sub_10C24();
    v50 = v34;
    v43 = v63;
    v52 = v62;
    v44 = sub_10C14();
    v46 = v45;
    (*(v30 + 8))(v33, v28);
    v61[0] = v50;
    v61[1] = v60;
    v61[2] = v54;
    v61[3] = v59;
    v61[4] = v53;
    v47 = v58;
    v61[5] = v58;
    v61[6] = v51;
    v48 = v55;
    v49 = v56;
    v61[7] = v55;
    v61[8] = v56;
    v61[9] = v57;
    v61[10] = v52;
    v61[11] = v43;
    v61[12] = v44;
    v61[13] = v46;
    sub_F14C(v61, &v62);
    sub_D514(v25);
    v62 = v50;
    v63 = v60;
    v64 = v54;
    v65 = v59;
    v66 = v53;
    v67 = v47;
    v68 = v51;
    v69 = v48;
    v70 = v49;
    v71 = v57;
    v72 = v52;
    v73 = v43;
    v74 = v44;
    v75 = v46;
    sub_F1D8(&v62);
    memcpy(v27, v61, 0x70uLL);
  }

  sub_1004C();
}

uint64_t sub_A768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7263736544707061 && a2 == 0xEE006E6F69747069;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_10C74();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_A874(char a1)
{
  if (a1)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x7263736544707061;
  }
}

void sub_A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10034();
  v23 = v22;
  v24 = sub_2D44(&qword_1C9B8, &qword_12398);
  sub_8980();
  v26 = v25;
  sub_8C80();
  __chkstk_darwin(v27);
  sub_FE7C();
  sub_10064(v23, v23[3]);
  sub_EDD0();
  sub_10CC4();
  sub_2D44(&qword_1C948, &qword_12378);
  sub_F080(&qword_1C9C0, sub_F0F8, &protocol conformance descriptor for <A> [A]);
  sub_10C64();
  if (!v20)
  {
    sub_10018();
    sub_10C54();
  }

  (*(v26 + 8))(v21, v24);
  sub_1004C();
}

uint64_t sub_AA50(void *a1)
{
  sub_2D44(&qword_1C938, &qword_12370);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v3);
  sub_FE7C();
  v4 = a1[3];
  sub_10064(a1, v4);
  v5 = sub_EDD0();
  sub_10210(&type metadata for SiriPaymentsSnippetModel.AppDisambiguationModel.CodingKeys, v6, v5);
  if (v1)
  {
    sub_D514(a1);
  }

  else
  {
    sub_2D44(&qword_1C948, &qword_12378);
    v10[1] = 0;
    sub_F080(&qword_1C950, sub_EE24, &protocol conformance descriptor for <A> [A]);
    sub_10C24();
    v4 = v11;
    v10[0] = 1;
    sub_101DC(v10);
    v8 = sub_10088();
    v9(v8);
    sub_D514(a1);
  }

  return v4;
}

uint64_t sub_AC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x427972616D697270 && a2 == 0xEF49446E6F747475;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000000012A80 == a2;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000012AA0 == a2;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000000012AC0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_10C74();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_ADAC(char a1)
{
  result = 0x427972616D697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_AE60()
{
  sub_2D44(&qword_1C9A8, &qword_12390);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v2);
  sub_FFB0();
  sub_FF6C();
  sub_ED28();
  sub_1034C(&type metadata for SiriPaymentsSnippetModel.BinaryConfirmationModel.CodingKeys);
  v10 = *v0;
  v8 = *v0;
  v7 = 0;
  sub_EFD0(&v10, v6);
  sub_F02C();
  sub_FE54();
  sub_10C64();
  sub_71A8(v8, *(&v8 + 1));
  if (!v1)
  {
    sub_FE40(1);
    sub_10C54();
    v8 = v0[2];
    v9 = v8;
    v7 = 2;
    sub_EFD0(&v9, v6);
    sub_FE54();
    sub_10C64();
    sub_71A8(v8, *(&v8 + 1));
    sub_FE40(3);
    sub_10C54();
  }

  v3 = sub_FF40();
  return v4(v3);
}

void sub_B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  v25 = v24;
  v27 = v26;
  sub_2D44(&qword_1C920, &qword_12368);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v28);
  sub_10064(v25, v25[3]);
  sub_ED28();
  sub_10CB4();
  if (v23)
  {
    sub_D514(v25);
  }

  else
  {
    sub_ED7C();
    sub_10110();
    sub_10C24();
    v40 = v45[0];
    LOBYTE(v45[0]) = 1;
    v29 = sub_10C14();
    *(&v39 + 1) = v30;
    *&v39 = v29;
    LOBYTE(v41) = 2;
    sub_10110();
    sub_10C24();
    v38 = v45[0];
    v31 = sub_10C14();
    v33 = v32;
    v34 = sub_FE9C();
    v35(v34);
    v41 = v40;
    v42 = v39;
    v43 = v38;
    *&v44 = v31;
    *(&v44 + 1) = v33;
    sub_1CE8(&v41, v45);
    sub_D514(v25);
    v45[0] = v40;
    v45[1] = v39;
    v45[2] = v38;
    v46 = v31;
    v47 = v33;
    sub_1DE0(v45);
    v36 = v42;
    *v27 = v41;
    v27[1] = v36;
    v37 = v44;
    v27[2] = v43;
    v27[3] = v37;
  }

  sub_1004C();
}

uint64_t sub_B318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x8000000000012A00 == a2;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x8000000000012A20 == a2;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000012A40 == a2;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x8000000000012A60 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_10C74();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_B474(unsigned __int8 a1)
{
  sub_10C84();
  sub_10C94(a1);
  return sub_10CA4();
}

unint64_t sub_B4BC(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B550(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_10C74();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_B5C0()
{
  sub_10C84();
  sub_10C94(0);
  return sub_10CA4();
}

void sub_B604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10034();
  v89 = v20;
  v88 = sub_2D44(&qword_1C648, &qword_117F8);
  sub_8980();
  v87 = v21;
  sub_8C80();
  __chkstk_darwin(v22);
  sub_FFC0();
  sub_1032C(v23);
  v86 = sub_2D44(&qword_1C650, &qword_11800);
  sub_8980();
  v85 = v24;
  sub_8C80();
  __chkstk_darwin(v25);
  sub_FFC0();
  sub_1032C(v26);
  v84 = sub_2D44(&qword_1C658, &qword_11808);
  sub_8980();
  v82 = v27;
  sub_8C80();
  __chkstk_darwin(v28);
  sub_FFC0();
  sub_1032C(v29);
  v80 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  sub_8970();
  __chkstk_darwin(v30);
  sub_8994();
  sub_1032C(v32 - v31);
  v79 = sub_2D44(&qword_1C660, &qword_11810);
  sub_8980();
  v78 = v33;
  sub_8C80();
  __chkstk_darwin(v34);
  v36 = &v78 - v35;
  type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  sub_8970();
  __chkstk_darwin(v37);
  sub_8994();
  v40 = v39 - v38;
  type metadata accessor for SiriPaymentsSnippetModel(0);
  sub_8970();
  __chkstk_darwin(v41);
  sub_8994();
  v44 = (v43 - v42);
  sub_2D44(&qword_1C668, &qword_11818);
  sub_8980();
  v90 = v46;
  v91 = v45;
  sub_8C80();
  __chkstk_darwin(v47);
  sub_1014C();
  v48 = sub_101C4();
  sub_10064(v48, v49);
  sub_D870();
  sub_1013C();
  sub_10CC4();
  sub_FE28();
  sub_EF20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = v81;
      sub_DCF0();
      LOBYTE(v96) = 1;
      sub_DB60();
      v50 = v91;
      sub_1007C();
      sub_10C44();
      sub_FEFC();
      sub_D778(v72, v73, &unk_120BC);
      sub_10C64();
      v74 = sub_FE6C();
      v75(v74);
      v55 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
      goto LABEL_6;
    case 2u:
      v56 = *v44;
      v57 = v44[1];
      v58 = v44[2];
      LOBYTE(v96) = 2;
      sub_DAB8();
      v59 = v83;
      v60 = v91;
      sub_10C44();
      *&v96 = v56;
      *(&v96 + 1) = v57;
      *&v97 = v58;
      sub_DC9C();
      v61 = v86;
      sub_10C64();
      sub_10028();
      v62(v59, v61);
      v63 = sub_1012C();
      v64(v63, v60);

      break;
    case 3u:
      v65 = *(v44 + 1);
      v96 = *v44;
      v97 = v65;
      v66 = *(v44 + 3);
      v98 = *(v44 + 2);
      v99 = v66;
      LOBYTE(v92) = 3;
      sub_DA10();
      v67 = v91;
      sub_1007C();
      sub_10C44();
      v92 = v96;
      v93 = v97;
      v94 = v98;
      v95 = v99;
      sub_DC48();
      sub_10C64();
      v68 = sub_FE6C();
      v69(v68);
      v70 = sub_1012C();
      v71(v70, v67);
      sub_1DE0(&v96);
      break;
    default:
      sub_DCF0();
      LOBYTE(v96) = 0;
      sub_DBD4();
      v50 = v91;
      sub_1007C();
      sub_10C44();
      sub_FED8();
      sub_D778(v51, v52, &unk_12094);
      v53 = v79;
      sub_10C64();
      sub_10028();
      v54(v36, v53);
      v55 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
LABEL_6:
      sub_DD4C(v40, v55);
      v76 = sub_1012C();
      v77(v76, v50);
      break;
  }

  sub_1004C();
}

void sub_BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10034();
  v22 = v21;
  v119 = v23;
  v118 = sub_2D44(&qword_1C5D0, &qword_117C8);
  sub_8980();
  v115 = v24;
  sub_8C80();
  __chkstk_darwin(v25);
  sub_FFC0();
  v114 = v26;
  sub_2D44(&qword_1C5D8, &qword_117D0);
  sub_8980();
  v109 = v28;
  v110 = v27;
  sub_8C80();
  __chkstk_darwin(v29);
  sub_FFC0();
  v113 = v30;
  v108 = sub_2D44(&qword_1C5E0, &qword_117D8);
  sub_8980();
  v107 = v31;
  sub_8C80();
  __chkstk_darwin(v32);
  sub_FFC0();
  v112 = v33;
  v106 = sub_2D44(&qword_1C5E8, &qword_117E0);
  sub_8980();
  v105 = v34;
  sub_8C80();
  __chkstk_darwin(v35);
  sub_FFC0();
  v111 = v36;
  v120 = sub_2D44(&qword_1C5F0, &qword_117E8);
  sub_8980();
  v117 = v37;
  sub_8C80();
  __chkstk_darwin(v38);
  v40 = &v99 - v39;
  v116 = type metadata accessor for SiriPaymentsSnippetModel(0);
  sub_8970();
  v42 = __chkstk_darwin(v41);
  v44 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v42);
  v47 = &v99 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v99 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v99 - v52;
  __chkstk_darwin(v51);
  v121 = v22;
  sub_FF6C();
  sub_D870();
  sub_10CB4();
  if (v20)
  {
    goto LABEL_9;
  }

  v103 = v53;
  v101 = v47;
  v104 = v50;
  v102 = v44;
  v54 = sub_10C34();
  v58 = sub_D8CC(v54, 0);
  if (v56 == v57 >> 1)
  {
    goto LABEL_8;
  }

  v100 = 0;
  if (v56 >= (v57 >> 1))
  {
    __break(1u);
    JUMPOUT(0xC6D0);
  }

  v59 = *(v55 + v56);
  sub_D994(v56 + 1, v57 >> 1, v58, v55, v56, v57);
  v61 = v60;
  v63 = v62;
  swift_unknownObjectRelease();
  if (v61 != v63 >> 1)
  {
LABEL_8:
    v68 = v116;
    v69 = sub_10BE4();
    swift_allocError();
    v71 = v70;
    sub_2D44(&qword_1C600, &qword_117F0);
    *v71 = v68;
    v72 = v120;
    sub_10C04();
    sub_10BD4();
    (*(*(v69 - 8) + 104))(v71, enum case for DecodingError.typeMismatch(_:), v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    v73 = sub_FEAC();
    v74(v73, v72);
LABEL_9:
    v75 = v121;
    goto LABEL_10;
  }

  v64 = v100;
  switch(v59)
  {
    case 1:
      LOBYTE(v122) = 1;
      sub_DB60();
      sub_1015C(&type metadata for SiriPaymentsSnippetModel.SendPaymentConfirmationCodingKeys);
      type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
      sub_FEFC();
      sub_D778(v80, v81, &unk_121AC);
      sub_10C24();
      v82 = v117;
      swift_unknownObjectRelease();
      sub_10028();
      v96 = sub_10320();
      v97(v96);
      (*(v82 + 8))(v40, v59);
      swift_storeEnumTagMultiPayload();
      sub_FE28();
      sub_DCF0();
      v98 = v121;
      goto LABEL_18;
    case 2:
      LOBYTE(v122) = 2;
      sub_DAB8();
      v65 = v120;
      sub_1007C();
      sub_10BF4();
      if (v64)
      {
        goto LABEL_12;
      }

      sub_DB0C();
      sub_10C24();
      v79 = v117;
      swift_unknownObjectRelease();
      v83 = sub_FE6C();
      v84(v83);
      (*(v79 + 8))(v40, v65);
      v85 = v123;
      v86 = v101;
      *v101 = v122;
      *(v86 + 2) = v85;
LABEL_16:
      swift_storeEnumTagMultiPayload();
      sub_FE28();
      goto LABEL_17;
    case 3:
      LOBYTE(v122) = 3;
      sub_DA10();
      sub_1015C(&type metadata for SiriPaymentsSnippetModel.BinaryConfirmationCodingKeys);
      sub_DA64();
      sub_10C24();
      v77 = (v117 + 8);
      swift_unknownObjectRelease();
      v87 = sub_10320();
      v88(v87);
      (*v77)(v40, v59);
      v89 = v123;
      v90 = v102;
      *v102 = v122;
      v90[1] = v89;
      v91 = v125;
      v90[2] = v124;
      v90[3] = v91;
      goto LABEL_16;
    default:
      LOBYTE(v122) = 0;
      sub_DBD4();
      v65 = v120;
      sub_1007C();
      sub_10BF4();
      if (v64)
      {
LABEL_12:
        v76 = sub_FEAC();
        v78(v76, v65);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
      sub_FED8();
      sub_D778(v66, v67, &unk_12134);
      sub_10018();
      sub_10C24();
      swift_unknownObjectRelease();
      v92 = sub_FE6C();
      v93(v92);
      v94 = sub_FEAC();
      v95(v94, v120);
      swift_storeEnumTagMultiPayload();
      sub_FE28();
LABEL_17:
      sub_DCF0();
      v98 = v121;
LABEL_18:
      sub_FE28();
      sub_DCF0();
      v75 = v98;
      break;
  }

LABEL_10:
  sub_D514(v75);
  sub_1004C();
}

uint64_t sub_C74C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9618();
  *a1 = result;
  return result;
}

uint64_t sub_C774(uint64_t a1)
{
  v2 = sub_EE78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C7B0(uint64_t a1)
{
  v2 = sub_EE78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9D28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9F68();
  *a1 = result;
  return result;
}

uint64_t sub_C874(uint64_t a1)
{
  v2 = sub_F208();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C8B0(uint64_t a1)
{
  v2 = sub_F208();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_C8EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_A274(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x70uLL);
  }
}

uint64_t sub_C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_A834();
  *a1 = result;
  return result;
}

uint64_t sub_C9D8(uint64_t a1)
{
  v2 = sub_EDD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CA14(uint64_t a1)
{
  v2 = sub_EDD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CA50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AA50(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_CAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_ADA4();
  *a1 = result;
  return result;
}

uint64_t sub_CAF8(uint64_t a1)
{
  v2 = sub_ED28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CB34(uint64_t a1)
{
  v2 = sub_ED28();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_CB70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_B008(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

uint64_t sub_CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B550(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_CC3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B2DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_CC68(uint64_t a1)
{
  v2 = sub_DAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CCA4(uint64_t a1)
{
  v2 = sub_DAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CCE0(uint64_t a1)
{
  v2 = sub_DA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD1C(uint64_t a1)
{
  v2 = sub_DA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_CD58(uint64_t a1)
{
  v2 = *v1;
  sub_10C84();
  sub_10C94(v2);
  return sub_10CA4();
}

uint64_t sub_CDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CDCC(uint64_t a1)
{
  v2 = sub_D870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE08(uint64_t a1)
{
  v2 = sub_D870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE44(uint64_t a1)
{
  v2 = sub_DBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE80(uint64_t a1)
{
  v2 = sub_DBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_CEBC(uint64_t a1)
{
  sub_10C84();
  sub_10C94(0);
  return sub_10CA4();
}

uint64_t sub_CEFC(uint64_t a1)
{
  v2 = sub_DB60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF38(uint64_t a1)
{
  v2 = sub_DB60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_10C74();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_D060(char a1)
{
  sub_10C84();
  sub_10C94(a1 & 1);
  return sub_10CA4();
}

uint64_t sub_D0A8(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x656D614E707061;
  }
}

uint64_t sub_D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CF94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D148(uint64_t a1)
{
  v2 = sub_D340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D184(uint64_t a1)
{
  v2 = sub_D340();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AppDescription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  v26 = v25;
  v27 = sub_2D44(&qword_1C590, &qword_11570);
  sub_8980();
  v29 = v28;
  sub_8C80();
  __chkstk_darwin(v30);
  sub_FE7C();
  sub_10064(v26, v26[3]);
  sub_D340();
  sub_10CC4();
  sub_10018();
  sub_10C54();
  if (!v23)
  {
    sub_10018();
    sub_10C54();
  }

  (*(v29 + 8))(v24, v27);
  sub_1004C();
}

void *sub_D2FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_D340()
{
  result = qword_1C598;
  if (!qword_1C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C598);
  }

  return result;
}

void AppDescription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10034();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  sub_2D44(&qword_1C5A0, &qword_11578);
  sub_8980();
  sub_8C80();
  __chkstk_darwin(v28);
  sub_FE7C();
  sub_10064(v27, v27[3]);
  v29 = sub_D340();
  sub_10210(&type metadata for AppDescription.CodingKeys, v30, v29);
  if (!v23)
  {
    a13 = 0;
    sub_101DC(&a13);
    a12 = 1;
    sub_101DC(&a12);
    v31 = sub_10088();
    v32(v31);
  }

  sub_D514(v27);
  sub_1004C();
}

uint64_t sub_D514(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 sub_D5B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_D5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_D5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_D674()
{
  result = qword_1C5A8;
  if (!qword_1C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A8);
  }

  return result;
}

uint64_t sub_D778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_D7C4()
{
  result = qword_1C5C0;
  if (!qword_1C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C0);
  }

  return result;
}

unint64_t sub_D81C()
{
  result = qword_1C5C8;
  if (!qword_1C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C8);
  }

  return result;
}

unint64_t sub_D870()
{
  result = qword_1C5F8;
  if (!qword_1C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5F8);
  }

  return result;
}

uint64_t sub_D8CC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_D914(uint64_t a1, void *a2)
{
  isa = sub_10B34().super.isa;

  v4 = [a2 aceObjectWithDictionary:isa];

  return v4;
}

uint64_t sub_D994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_DA10()
{
  result = qword_1C608;
  if (!qword_1C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C608);
  }

  return result;
}

unint64_t sub_DA64()
{
  result = qword_1C610;
  if (!qword_1C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C610);
  }

  return result;
}

unint64_t sub_DAB8()
{
  result = qword_1C618;
  if (!qword_1C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C618);
  }

  return result;
}

unint64_t sub_DB0C()
{
  result = qword_1C620;
  if (!qword_1C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C620);
  }

  return result;
}

unint64_t sub_DB60()
{
  result = qword_1C628;
  if (!qword_1C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C628);
  }

  return result;
}

unint64_t sub_DBD4()
{
  result = qword_1C638;
  if (!qword_1C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C638);
  }

  return result;
}

unint64_t sub_DC48()
{
  result = qword_1C670;
  if (!qword_1C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C670);
  }

  return result;
}

unint64_t sub_DC9C()
{
  result = qword_1C678;
  if (!qword_1C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C678);
  }

  return result;
}

uint64_t sub_DCF0()
{
  sub_8B80();
  v2(0);
  sub_8970();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_DD4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8970();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_DE14(uint64_t a1)
{
  sub_DEF8(319, &qword_1C6F8, &qword_1C700, INRequestPaymentIntent_ptr, &type metadata accessor for CodableIntent);
  if (v1 <= 0x3F)
  {
    sub_DEF8(319, &qword_1C708, &unk_1C710, INRequestPaymentIntentResponse_ptr, &type metadata accessor for CodableIntentResponse);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DEF8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_7894(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_DF68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_DFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_2D44(a4, a5);
  sub_8D14();
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
LABEL_5:

    return sub_2F80(v11, a2, v10);
  }

  v12 = sub_101D0();
  sub_2D44(v12, v13);
  sub_8D14();
  if (*(v15 + 84) == a2)
  {
    v10 = v14;
    v11 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v17 = *(a1 + *(a3 + 24) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_E18C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_2D44(a5, a6);
  sub_8D14();
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    v14 = sub_10088();
    sub_2D44(v14, v15);
    sub_8D14();
    if (*(v17 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v12 = v16;
    v13 = a1 + *(a4 + 20);
  }

  sub_2FD4(v13, a2, a2, v12);
}

void sub_E290(uint64_t a1)
{
  sub_DEF8(319, &qword_1C7B0, &qword_1C7B8, INSendPaymentIntent_ptr, &type metadata accessor for CodableIntent);
  if (v1 <= 0x3F)
  {
    sub_DEF8(319, &qword_1C7C0, &unk_1C7C8, INSendPaymentIntentResponse_ptr, &type metadata accessor for CodableIntentResponse);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_E374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_E388(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_E3C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_E418(uint64_t a1, uint64_t a2)
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

uint64_t sub_E42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_E46C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_E520(unsigned __int8 *a1, int a2)
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

  return sub_102DC(a1);
}

_BYTE *sub_E56C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xE608);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E648(uint64_t a1)
{
  result = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_E6D4()
{
  result = qword_1C8A8;
  if (!qword_1C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8A8);
  }

  return result;
}

unint64_t sub_E72C()
{
  result = qword_1C8B0;
  if (!qword_1C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B0);
  }

  return result;
}

unint64_t sub_E784()
{
  result = qword_1C8B8;
  if (!qword_1C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B8);
  }

  return result;
}

unint64_t sub_E7DC()
{
  result = qword_1C8C0;
  if (!qword_1C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C0);
  }

  return result;
}

unint64_t sub_E834()
{
  result = qword_1C8C8;
  if (!qword_1C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C8);
  }

  return result;
}

unint64_t sub_E9BC()
{
  result = qword_1C8D0;
  if (!qword_1C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D0);
  }

  return result;
}

unint64_t sub_EA14()
{
  result = qword_1C8D8;
  if (!qword_1C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D8);
  }

  return result;
}

unint64_t sub_EA6C()
{
  result = qword_1C8E0;
  if (!qword_1C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E0);
  }

  return result;
}

unint64_t sub_EAC4()
{
  result = qword_1C8E8;
  if (!qword_1C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E8);
  }

  return result;
}

unint64_t sub_EB1C()
{
  result = qword_1C8F0;
  if (!qword_1C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F0);
  }

  return result;
}

unint64_t sub_EB74()
{
  result = qword_1C8F8;
  if (!qword_1C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F8);
  }

  return result;
}

unint64_t sub_EBCC()
{
  result = qword_1C900;
  if (!qword_1C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C900);
  }

  return result;
}

unint64_t sub_EC24()
{
  result = qword_1C908;
  if (!qword_1C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C908);
  }

  return result;
}

unint64_t sub_EC7C()
{
  result = qword_1C910;
  if (!qword_1C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C910);
  }

  return result;
}

unint64_t sub_ECD4()
{
  result = qword_1C918;
  if (!qword_1C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C918);
  }

  return result;
}

unint64_t sub_ED28()
{
  result = qword_1C928;
  if (!qword_1C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C928);
  }

  return result;
}

unint64_t sub_ED7C()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

unint64_t sub_EDD0()
{
  result = qword_1C940;
  if (!qword_1C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C940);
  }

  return result;
}

unint64_t sub_EE24()
{
  result = qword_1C958;
  if (!qword_1C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C958);
  }

  return result;
}

unint64_t sub_EE78()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

unint64_t sub_EECC()
{
  result = qword_1C980;
  if (!qword_1C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C980);
  }

  return result;
}

uint64_t sub_EF20()
{
  sub_8B80();
  v2(0);
  sub_8970();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_EF7C()
{
  result = qword_1C990;
  if (!qword_1C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C990);
  }

  return result;
}

unint64_t sub_F02C()
{
  result = qword_1C9B0;
  if (!qword_1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9B0);
  }

  return result;
}

uint64_t sub_F080(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_7240(&qword_1C948, &qword_12378);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F0F8()
{
  result = qword_1C9C8;
  if (!qword_1C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9C8);
  }

  return result;
}

unint64_t sub_F184()
{
  result = qword_1C9E8;
  if (!qword_1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E8);
  }

  return result;
}

unint64_t sub_F208()
{
  result = qword_1CA18;
  if (!qword_1CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xF3B0);
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

uint64_t sub_F408(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_10294((*a1 | (v4 << 8)) - 3);
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

      return sub_10294((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10294(v8);
}

_BYTE *sub_F490(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF54CLL);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_F588(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_10294((*a1 | (v4 << 8)) - 2);
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

      return sub_10294((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10294(v8);
}

_BYTE *sub_F610(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF6CCLL);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_F710(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
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
      return sub_10294((*a1 | (v4 << 8)) - 4);
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

      return sub_10294((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 4);
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

  return sub_10294(v8);
}

_BYTE *sub_F798(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF854);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F890()
{
  result = qword_1CA28;
  if (!qword_1CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA28);
  }

  return result;
}

unint64_t sub_F8E8()
{
  result = qword_1CA30;
  if (!qword_1CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA30);
  }

  return result;
}

unint64_t sub_F940()
{
  result = qword_1CA38;
  if (!qword_1CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA38);
  }

  return result;
}

unint64_t sub_F998()
{
  result = qword_1CA40;
  if (!qword_1CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA40);
  }

  return result;
}

unint64_t sub_F9F0()
{
  result = qword_1CA48;
  if (!qword_1CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA48);
  }

  return result;
}

unint64_t sub_FA48()
{
  result = qword_1CA50;
  if (!qword_1CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA50);
  }

  return result;
}

unint64_t sub_FAA0()
{
  result = qword_1CA58;
  if (!qword_1CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA58);
  }

  return result;
}

unint64_t sub_FAF8()
{
  result = qword_1CA60;
  if (!qword_1CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA60);
  }

  return result;
}

unint64_t sub_FB50()
{
  result = qword_1CA68;
  if (!qword_1CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA68);
  }

  return result;
}

unint64_t sub_FBA8()
{
  result = qword_1CA70;
  if (!qword_1CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA70);
  }

  return result;
}

unint64_t sub_FC00()
{
  result = qword_1CA78;
  if (!qword_1CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA78);
  }

  return result;
}

unint64_t sub_FC58()
{
  result = qword_1CA80;
  if (!qword_1CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA80);
  }

  return result;
}

unint64_t sub_FCB0()
{
  result = qword_1CA88;
  if (!qword_1CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA88);
  }

  return result;
}

unint64_t sub_FD08()
{
  result = qword_1CA90;
  if (!qword_1CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA90);
  }

  return result;
}

unint64_t sub_FD60()
{
  result = qword_1CA98;
  if (!qword_1CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA98);
  }

  return result;
}

uint64_t sub_FF14(unint64_t *a1)
{

  return sub_88C0(a1, v1, v2, &protocol conformance descriptor for CodableIntent<A>);
}

uint64_t sub_FF4C()
{

  return sub_10C14();
}

uint64_t sub_FF8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3, &protocol conformance descriptor for CodableIntentResponse<A>);
}

uint64_t sub_FFCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3, &protocol conformance descriptor for CodableIntent<A>);
}

uint64_t sub_10094()
{
  *(v0 + 16) = v1;

  return sub_10C64();
}

uint64_t sub_100D0()
{
  result = v1;
  *(v2 - 216) = v0;
  return result;
}

uint64_t sub_1015C(uint64_t a1)
{

  return sub_10BF4();
}

void *sub_10184()
{
  v3 = (v0 + *(*(v1 - 272) + 24));

  return memcpy(v3, (v1 - 200), 0x70uLL);
}

uint64_t sub_101DC(uint64_t a1)
{

  return sub_10C14();
}

uint64_t sub_101F8(uint64_t a1)
{

  return sub_10C64();
}

uint64_t sub_10210(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10CB4();
}

void *sub_10234()
{

  return memcpy((v0 + 24), (v0 + 136), 0x70uLL);
}

uint64_t sub_10258(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10CB4();
}

uint64_t sub_1029C(uint64_t a1)
{

  return sub_10C74();
}

void *sub_102B8()
{
  v3 = (*(v0 + 16) + *(*(v0 + 8) + 24));

  return memcpy((v1 - 200), v3, 0x70uLL);
}

uint64_t sub_102E4(uint64_t result)
{
  *(v1 + 8) = result;
  *(v2 - 65) = 1;
  return result;
}

uint64_t sub_1034C(uint64_t a1)
{

  return sub_10CC4();
}

uint64_t sub_1036C()
{
  *(v1 - 66) = 2;

  return sub_F14C(v1 - 200, v0 + 24);
}

uint64_t sub_1038C()
{

  return sub_EF20();
}

uint64_t sub_103AC()
{
  v1 = [v0 amount];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_104AC(v0);
  v5 = v4;
  if (!v4)
  {

    return 0;
  }

  v6 = v3;
  v7 = [objc_allocWithZone(NSNumberFormatter) init];
  [v7 setNumberStyle:2];
  sub_10510(v6, v5, v7);
  v8 = [v7 stringFromNumber:v2];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_10B64();

  return v10;
}

uint64_t sub_104AC(void *a1)
{
  v1 = [a1 currencyCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10B64();

  return v3;
}

void sub_10510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10B54();

  [a3 setCurrencyCode:v4];
}