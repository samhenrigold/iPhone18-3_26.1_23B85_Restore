uint64_t sub_2388C8C94(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31A58, &qword_2388DDA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388CEBF0(v9, v10, v11);
  sub_2388D3568();
  LOBYTE(v22) = 0;
  v12 = sub_2388D3298();
  if (!v2)
  {
    v15 = *(v3 + 32);
    v22 = *(v3 + 16);
    v23 = v15;
    v24 = *(v3 + 48);
    v21 = 1;
    sub_2388CCB04(v12, v13, v14);
    v16 = sub_2388D32C8();
    *&v22 = *(v3 + 64);
    v21 = 2;
    sub_2388CCB58(v16, v17, v18);
    sub_2388D32C8();
    *&v22 = *(v3 + 72);
    v21 = 3;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    sub_2388CCA54(&qword_27DF318F0, sub_2388CCB58, MEMORY[0x277D83948]);
    sub_2388D32C8();
    LOBYTE(v22) = 4;
    sub_2388D32B8();
    LOBYTE(v22) = 5;
    sub_2388D3238();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2388C8F2C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7374757074756FLL;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x74616E616C707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x7475706E69;
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

uint64_t sub_2388C8FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388CD35C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2388C9018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CEBF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388C9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CEBF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

__n128 sub_2388C9090@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2388CD564(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_2388C9108()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_marketingProductName_obj();
    if (v2)
    {
      v3 = v2;
      v4 = sub_2388D2858();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v11 = MobileGestalt_copy_productVersion_obj();
    if (v11)
    {
      v12 = v11;
      v9 = sub_2388D2858();
      v10 = v13;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v14 = MobileGestalt_copy_buildVersion_obj();
    if (v14)
    {
      v15 = v14;
      v7 = sub_2388D2858();
      v8 = v16;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = 0;
    v6 = 0;
  }

  qword_27DF3F8B0 = v4;
  *algn_27DF3F8B8 = v6;
  qword_27DF3F8C0 = v9;
  unk_27DF3F8C8 = v10;
  qword_27DF3F8D0 = v7;
  unk_27DF3F8D8 = v8;
}

uint64_t sub_2388C9220(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31970, &qword_2388DD2F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388CDE40(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3238();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_2388D3238();
  v11[13] = 2;
  sub_2388D3238();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2388C93C0()
{
  v1 = 0x6F6973726556736FLL;
  if (*v0 != 1)
  {
    v1 = 0x4E646C697542736FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29551;
  }
}

uint64_t sub_2388C9420@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388CDAD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2388C9448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CDE40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388C9484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CDE40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2388C94C0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2388CDBF8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_2388C951C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_238815878(a1, a1[3]);
  sub_2388D3518();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v5 = sub_23889D22C(v7);
  sub_2388158BC(v7);
  result = sub_2388158BC(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_2388C95C4(void *a1)
{
  v2 = *v1;
  sub_238815878(a1, a1[3]);
  sub_2388D3548();
  sub_23889F7C8(v2, v4);
  return sub_2388158BC(v4);
}

uint64_t sub_2388C9640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x6C61727475656ELL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697469736F70;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x657669746167656ELL;
  if (*a2 != 1)
  {
    v8 = 0x6C61727475656ELL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697469736F70;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388C9740()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C97E4(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_2388C9874()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_2388C9914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388CDEE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2388C9944(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x6C61727475656ELL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697469736F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388C9A54(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v7 = sub_238810E44(&qword_27DF31978, &qword_2388DD2F8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  v11 = sub_238815878(a1, a1[3]);
  sub_2388CE144(v11, v12, v13);
  v14 = sub_2388D3568();
  v21 = a2;
  v20 = 0;
  sub_2388CE1EC(v14, v15, v16);
  sub_2388D32C8();
  if (!v4)
  {
    v19 = 1;
    sub_2388D3238();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2388C9C24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388CDF34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2388C9C54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000002388DE0B0;
    v9 = 0xD00000000000001ELL;
    if (v2 == 6)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v8 = 0x80000002388DE0D0;
    }

    v10 = 0xD000000000000010;
    v11 = 0x80000002388DE070;
    if (v2 != 4)
    {
      v10 = 0xD000000000000012;
      v11 = 0x80000002388DE090;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE90000000000006CLL;
    v4 = 0x7566706C65686E75;
    v5 = 0x80000002388DE040;
    v6 = 0xD000000000000018;
    if (v2 != 2)
    {
      v6 = 0x636572726F636E69;
      v5 = 0xE900000000000074;
    }

    if (*v1)
    {
      v4 = 0x6F627265566F6F74;
      v3 = 0xEA00000000006573;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_2388C9E24()
{
  if (*v0)
  {
    return 0x74616E616C707865;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_2388C9E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_2388C9F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CE144(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388C9F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388CE144(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2388C9FC0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2388CDF80(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a3;
  v81 = a2;
  v6 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v79 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v76 - v9;
  v10 = sub_238810E44(&qword_27DF31830, &qword_2388DCAD8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v76 - v14;
  v15 = type metadata accessor for Transcript.Entry(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v76 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v80 = *a1;
  swift_getKeyPath();
  *&v97 = v4;
  sub_2388CCCCC(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v26 = *(v4 + 16);

  os_unfair_lock_lock((v4 + 32));
  v27 = *(v4 + 40);

  os_unfair_lock_unlock((v4 + 32));
  *&v97 = v26;
  sub_23881FC90(v27);
  v28 = v97;
  v29 = *(v97 + 16);
  if (!v29)
  {
LABEL_11:

    v28 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v30 = 0;
  *&v88 = v97 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v31 = (2 * v29) | 1;
  v83 = v29;
  v84 = v25;
  v85 = v16;
  while (1)
  {
    if (v29 + v30 > *(v28 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    sub_238841D74(v88 + *(v16 + 72) * (v29 + v30 - 1), v25);
    sub_238841D74(v25, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    v32 = v28;
    sub_2388AE208(v23);
    v33 = v25;
    v34 = v86;
    sub_2388CB5B0(v33, v86, type metadata accessor for Transcript.Entry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v34;
      v36 = v13;
      sub_2388CB5B0(v35, v13, type metadata accessor for Transcript.Prompt);
      v37 = type metadata accessor for Transcript.Prompt(0);
      (*(*(v37 - 8) + 56))(v13, 0, 1, v37);
    }

    else
    {
      v37 = type metadata accessor for Transcript.Prompt(0);
      v38 = v23;
      v39 = v34;
      v36 = v13;
      (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
      v40 = v39;
      v23 = v38;
      v29 = v83;
      sub_2388AE208(v40);
    }

    v41 = v36;
    v42 = v87;
    sub_2388CB540(v41, v87);
    type metadata accessor for Transcript.Prompt(0);
    v43 = (*(*(v37 - 8) + 48))(v42, 1, v37);
    sub_238827E88(v42, &qword_27DF31830, &qword_2388DCAD8);
    v44 = v43 == 1;
    v28 = v32;
    v16 = v85;
    if (!v44)
    {
      goto LABEL_13;
    }

    --v30;
    v31 -= 2;
    v25 = v84;
    if (!(v29 + v30))
    {
      goto LABEL_11;
    }
  }

  v29 = v83;
  sub_2388AE208(v25);
LABEL_13:
  v45 = *(v28 + 16);
  v46 = v29 + v30;
  if (v45 < v29 + v30)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v46 == v45)
  {

    v29 = v28;
  }

  else
  {
    sub_238853E48(v28, v88, 0, v31);
    v29 = v47;
  }

  if (v83 < v46)
  {
    goto LABEL_35;
  }

  v48 = *(v28 + 16);
  if (v48 >= v83)
  {
    if (!(v48 + v30))
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_238853E48(v28, v88, v46, (2 * v83) | 1);
  v75 = v74;

  v28 = v75;
LABEL_20:
  v49 = v82;
  sub_238827E14(v78, v82, &qword_27DF300E8, &qword_2388D5D00);
  v50 = v49;
  v51 = v79;
  sub_238827E14(v50, v79, &qword_27DF300E8, &qword_2388D5D00);
  if ((*(v16 + 48))(v51, 1, v15) == 1)
  {
    sub_238827E88(v51, &qword_27DF300E8, &qword_2388D5D00);
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = v51;
    v53 = v77;
    sub_2388CB5B0(v52, v77, type metadata accessor for Transcript.Entry);
    sub_238810E44(&qword_27DF31838, &unk_2388DCB08);
    v31 = swift_allocObject();
    v88 = xmmword_2388D3F70;
    *(v31 + 16) = xmmword_2388D3F70;
    sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
    v54 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v88;
    sub_238841D74(v53, v55 + v54);
    *(v31 + 32) = v55;
    sub_2388AE208(v53);
  }

  v23 = v81;
  if (qword_27DF2F9D8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v56 = qword_27DF3F8B0;
  v57 = *algn_27DF3F8B8;
  v59 = qword_27DF3F8C0;
  v58 = unk_27DF3F8C8;
  *&v88 = qword_27DF3F8D0;
  v60 = *(v23 + 2);
  if (v60)
  {
    v81 = qword_27DF3F8C0;
    v84 = qword_27DF3F8B0;
    v85 = v31;
    v86 = v29;
    v87 = v28;
    *&v97 = MEMORY[0x277D84F90];
    v83 = *algn_27DF3F8B8;
    v61 = unk_27DF3F8D8;

    v79 = v58;

    v78 = v61;

    sub_2388B8304(0, v60, 0);
    v62 = v97;
    v63 = v23 + 48;
    do
    {
      v64 = *(v63 - 16);
      v65 = *(v63 - 1);
      v66 = *v63;
      *&v97 = v62;
      v67 = *(v62 + 16);
      v68 = *(v62 + 24);

      if (v67 >= v68 >> 1)
      {
        sub_2388B8304((v68 > 1), v67 + 1, 1);
        v62 = v97;
      }

      *(v62 + 16) = v67 + 1;
      v69 = v62 + 24 * v67;
      *(v69 + 32) = v64;
      v63 += 3;
      *(v69 + 40) = v65;
      *(v69 + 48) = v66;
      --v60;
    }

    while (v60);
    v28 = v87;
    v29 = v86;
    v31 = v85;
    v56 = v84;
    v57 = v83;
    v59 = v81;
    v70 = v79;
    v71 = v78;
  }

  else
  {
    v71 = unk_27DF3F8D8;

    v70 = v58;
    v62 = MEMORY[0x277D84F90];
  }

  sub_238827E88(v82, &qword_27DF300E8, &qword_2388D5D00);
  *&v89 = 0x647261646E617473;
  *(&v89 + 1) = 0xE800000000000000;
  *&v90 = v56;
  *(&v90 + 1) = v57;
  *&v91 = v59;
  *(&v91 + 1) = v70;
  *&v92 = v88;
  *(&v92 + 1) = v71;
  *&v93 = v29;
  *(&v93 + 1) = v28;
  LOBYTE(v94) = v80;
  *(&v94 + 1) = v62;
  v95 = v31;
  v103 = v31;
  v101 = v93;
  v102 = v94;
  v97 = v89;
  v98 = v90;
  v99 = v91;
  v100 = v92;
  v96 = 0;
  v104 = 0;
  v72 = sub_2388C7D28();
  sub_2388CB510(&v89);
  return v72;
}

uint64_t sub_2388CAA58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2388D1058();
  v20 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];

  sub_2388D1048();
  v10 = sub_2388D1038();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
  *(v14 + 48) = v9;
  *(v14 + 56) = v8;
  *(v14 + 80) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_2388D1048();
  v15 = sub_2388D1038();
  v17 = v16;
  v13(v7, v20);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *a2 = v15;
  a2[1] = v17;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = v14;
  type metadata accessor for Transcript.Entry(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredResponseText:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  v11 = *a1;
  if (a4)
  {
    v17[0] = a3;
    v17[1] = a4;
    sub_2388CAA58(v17, &v16[-v9]);
    v12 = type metadata accessor for Transcript.Entry(0);
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for Transcript.Entry(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  LOBYTE(v17[0]) = v11;
  v14 = LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(v17, a2, v10);
  sub_238827E88(v10, &qword_27DF300E8, &qword_2388D5D00);
  return v14;
}

uint64_t sub_2388CAD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v45 = sub_2388D0D88();
  *&v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D1058();
  v46 = v4;
  v80 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[0] = sub_238810E44(&qword_27DF318F8, &qword_2388DCE58);
  sub_238810E44(&qword_27DF31900, qword_2388DCE60);
  v42 = sub_2388D28B8();
  v53 = v7;
  v8 = a1[3];
  v9 = a1[4];
  sub_238815878(a1, v8);
  (*(v9 + 24))(&v57, v8, v9);
  v10 = v57;
  v11 = v58;
  LODWORD(v9) = v59;
  v50 = v60;
  v52 = v61;
  v12 = v62;
  sub_238814698(v57, v58, v59);
  v49 = v12;

  v44 = v6;
  sub_2388D1048();
  v54 = sub_2388D1038();
  v51 = v13;
  v14 = *(v80 + 8);
  v80 += 8;
  v47 = v14;
  v14(v6, v4);
  sub_2388D0DC8();
  swift_allocObject();
  sub_238814698(v10, v11, v9);

  v15 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v16 = swift_allocObject();
  v41 = xmmword_2388D3F70;
  *(v16 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v71[0] = v16;
  sub_2388CCCCC(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  v17 = v15;
  sub_2388D0D98();
  LOBYTE(v15) = v50;
  LODWORD(v16) = v9;
  v43 = sub_238819C1C(v10, v11, v9, v17);
  v19 = v18;

  v20 = v10;
  v21 = v10;
  v39 = v10;
  LOBYTE(v10) = v16;
  v40 = v16;
  sub_238810DC4(v20, v11, v16);
  v22 = v49;

  v63[0] = v54;
  v23 = v51;
  v24 = v42;
  v63[1] = v51;
  v63[2] = v42;
  v25 = v53;
  v63[3] = v53;
  v63[4] = v21;
  v63[5] = v11;
  LOBYTE(v64) = v10;
  HIBYTE(v64) = v15;
  v65 = v55;
  v66 = v56;
  v26 = v52;
  v67 = v52;
  v68 = v22;
  v27 = v43;
  v69 = v43;
  v70 = v19;
  v28 = v19;
  v29 = v64 & 0x107 | 0x4000000000000000;
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v30 = swift_allocObject();
  *(v30 + 16) = v41;
  *(v30 + 32) = v54;
  *(v30 + 40) = v23;
  *(v30 + 48) = v24;
  *(v30 + 56) = v25;
  v31 = v39;
  *(v30 + 64) = v39;
  *(v30 + 72) = v11;
  *(v30 + 80) = v29;
  *(v30 + 88) = v26;
  v32 = v49;
  *(v30 + 96) = v49;
  *(v30 + 104) = v27;
  *(v30 + 112) = v28;
  sub_2388CCD14(v63, v71);
  sub_2388CCD14(v63, v71);
  v33 = v44;
  sub_2388D1048();
  v34 = sub_2388D1038();
  v45 = v35;
  v47(v33, v46);
  sub_2388CCD70(v63);
  v71[0] = v54;
  v71[1] = v51;
  v71[2] = v24;
  v71[3] = v53;
  v71[4] = v31;
  v71[5] = v11;
  v72 = v40;
  v73 = v50;
  v74 = v55;
  v75 = v56;
  v76 = v52;
  v77 = v32;
  v78 = v27;
  v79 = v28;
  sub_2388CCD70(v71);
  sub_238810DC4(v57, v58, v59);

  v36 = v48;
  v37 = v45;
  *v48 = v34;
  v36[1] = v37;
  v36[2] = MEMORY[0x277D84F90];
  v36[3] = v30;
  type metadata accessor for Transcript.Entry(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredResponseContent:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-v7];
  v9 = *a1;
  v13 = a3;
  sub_2388C7308(sub_2388CB618, &v12[-v7]);
  v14 = v9;
  v10 = LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(&v14, a2, v8);
  sub_238827E88(v8, &qword_27DF300E8, &qword_2388D5D00);
  return v10;
}

uint64_t sub_2388CB540(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF31830, &qword_2388DCAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388CB5B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2388CB63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31840;
  if (!qword_27DF31840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31840);
  }

  return result;
}

unint64_t sub_2388CB6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31858;
  if (!qword_27DF31858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31858);
  }

  return result;
}

__n128 sub_2388CB7C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2388CB7FC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2388D2758();
  if (*(v2 + 16))
  {
    sub_238820AA8(0xD00000000000001DLL, 0x80000002388E0190);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_2388CB8C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2388CB90C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF319A0, &qword_2388DD308);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_238815878(a1, a1[3]);
  v11 = sub_2388CE240(v8, v9, v10);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v28 = v11;
  v12 = v29;
  LOBYTE(v36) = 0;
  if (sub_2388D31D8() == 0xD000000000000026 && 0x80000002388E01F0 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_2388D3368();

  if (v15)
  {
LABEL_9:
    v42 = 2;
    sub_2388CE350(v16, v17, v18);
    sub_2388D31F8();
    (*(v12 + 8))(v7, v5);
    v34 = v40;
    v35[0] = v41[0];
    *(v35 + 9) = *(v41 + 9);
    v30 = v36;
    v31 = v37;
    v33 = v39;
    v32 = v38;
    result = sub_2388158BC(a1);
    v25 = v35[0];
    a2[4] = v34;
    a2[5] = v25;
    *(a2 + 89) = *(v35 + 9);
    v26 = v31;
    *a2 = v30;
    a2[1] = v26;
    v27 = v33;
    a2[2] = v32;
    a2[3] = v27;
    return result;
  }

  v19 = sub_2388D2FF8();
  swift_allocError();
  v21 = v20;
  sub_238810E44(&qword_27DF315D8, qword_2388DD310);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2388D3F70;
  v23 = v28;
  *(v22 + 56) = &type metadata for LanguageModelFeedback.Attachment.CodingKeys;
  *(v22 + 64) = v23;
  *(v22 + 32) = 0;
  sub_2388D2FD8();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84168], v19);
  swift_willThrow();
  (*(v12 + 8))(v7, v5);
  return sub_2388158BC(a1);
}

unint64_t sub_2388CBC84(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2388CBCD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31A28, qword_2388DD898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388CE87C(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v40 = 0;
  if (sub_2388D31D8() == 0xD000000000000010 && 0x80000002388DDFD0 == v12)
  {

    goto LABEL_9;
  }

  v14 = sub_2388D3368();

  if (v14)
  {
LABEL_9:
    v39 = 1;
    sub_2388CE9CC(v15, v16, v17);
    sub_2388D31F8();
    (*(v6 + 8))(v8, v5);
    v18 = 0;
    v37 = v30;
    v35 = v28;
    v36 = v29;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v38 = 0;
    goto LABEL_11;
  }

  v39 = 2;
  sub_2388CE978(v15, v16, v17);
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v18 = 1;
  v38 = 1;
LABEL_11:
  result = sub_2388158BC(a1);
  v20 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v20;
  *(a2 + 96) = v37;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 104) = v18;
  return result;
}

uint64_t sub_2388CBFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002388E01B0 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xE900000000000074 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002388E01D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388CC224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31870, &qword_2388DCE38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388CC8B0(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
  }

  else
  {
    LOBYTE(v51) = 0;
    v12 = sub_2388D31D8();
    v14 = v13;
    v15 = v12;
    LOBYTE(v44) = 1;
    sub_2388CC904(v12, v13, v16);
    v17 = sub_2388D31F8();
    v38 = v15;
    v37 = v51;
    v42 = v52;
    v36 = v53;
    v39 = v54;
    v35 = v55;
    v43 = v56;
    LOBYTE(v44) = 2;
    sub_2388CC958(v17, v18, v19);
    sub_2388D31F8();
    v41 = v51;
    LOBYTE(v44) = 3;
    v20 = sub_2388D31F8();
    v40 = v51;
    LOBYTE(v44) = 4;
    sub_2388CC9AC(v20, v21, v22);
    sub_2388D31B8();
    LODWORD(v15) = v51;
    sub_238810E44(&qword_27DF31898, &qword_2388DCE40);
    LOBYTE(v44) = 5;
    sub_2388CCC00(&qword_27DF318A0, sub_2388CCA00, MEMORY[0x277D83978]);
    sub_2388D31F8();
    v34 = v15;
    v23 = v51;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    v64 = 6;
    sub_2388CCA54(&qword_27DF318B8, sub_2388CC958, MEMORY[0x277D83978]);
    sub_2388D31F8();
    (*(v6 + 8))(v8, v5);
    v33 = v65;
    *&v44 = v38;
    *(&v44 + 1) = v14;
    *&v45 = v37;
    v24 = v42;
    *(&v45 + 1) = v42;
    *&v46 = v36;
    v25 = v39;
    *(&v46 + 1) = v39;
    v26 = v43;
    *&v47 = v35;
    *(&v47 + 1) = v43;
    v27 = v41;
    *&v48 = v41;
    *(&v48 + 1) = v40;
    LOBYTE(v49) = v34;
    *(&v49 + 1) = v23;
    v50 = v65;
    sub_2388CCACC(&v44, &v51);
    sub_2388158BC(a1);
    v51 = v38;
    v52 = v14;
    v53 = v37;
    v54 = v24;
    v55 = v36;
    v56 = v25;
    v57 = v35;
    v58 = v26;
    v59 = v27;
    v60 = v40;
    v61 = v34;
    v62 = v23;
    v63 = v33;
    result = sub_2388CB510(&v51);
    v29 = v49;
    *(a2 + 64) = v48;
    *(a2 + 80) = v29;
    *(a2 + 96) = v50;
    v30 = v45;
    *a2 = v44;
    *(a2 + 16) = v30;
    v31 = v47;
    *(a2 + 32) = v46;
    *(a2 + 48) = v31;
  }

  return result;
}

unint64_t sub_2388CC8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31878;
  if (!qword_27DF31878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31878);
  }

  return result;
}

unint64_t sub_2388CC904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31880;
  if (!qword_27DF31880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31880);
  }

  return result;
}

unint64_t sub_2388CC958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31888;
  if (!qword_27DF31888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31888);
  }

  return result;
}

unint64_t sub_2388CC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31890;
  if (!qword_27DF31890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31890);
  }

  return result;
}

unint64_t sub_2388CCA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF318A8;
  if (!qword_27DF318A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318A8);
  }

  return result;
}

uint64_t sub_2388CCA54(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF318B0, &qword_2388DCE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388CCB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF318C8;
  if (!qword_27DF318C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318C8);
  }

  return result;
}

unint64_t sub_2388CCB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF318D0;
  if (!qword_27DF318D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318D0);
  }

  return result;
}

unint64_t sub_2388CCBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF318D8;
  if (!qword_27DF318D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318D8);
  }

  return result;
}

uint64_t sub_2388CCC00(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31898, &qword_2388DCE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388CCC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF318E8;
  if (!qword_27DF318E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318E8);
  }

  return result;
}

uint64_t sub_2388CCCCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2388CCDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31908;
  if (!qword_27DF31908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31908);
  }

  return result;
}

unint64_t sub_2388CCE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31910;
  if (!qword_27DF31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31910);
  }

  return result;
}

unint64_t sub_2388CCE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31918;
  if (!qword_27DF31918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31918);
  }

  return result;
}

__n128 sub_2388CCECC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModelFeedback.StandardFeedbackForm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageModelFeedback.StandardFeedbackForm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2388CD05C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2388CD0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2388CD130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2388CD18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2388CD200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31920;
  if (!qword_27DF31920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31920);
  }

  return result;
}

unint64_t sub_2388CD258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31928;
  if (!qword_27DF31928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31928);
  }

  return result;
}

unint64_t sub_2388CD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31930;
  if (!qword_27DF31930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31930);
  }

  return result;
}

unint64_t sub_2388CD308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31938;
  if (!qword_27DF31938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31938);
  }

  return result;
}

uint64_t sub_2388CD35C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002388E01B0 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002388E0270 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388CD564@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31A68, &qword_2388DDAA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388CEBF0(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
  }

  else
  {
    LOBYTE(v50) = 0;
    v12 = sub_2388D31D8();
    v14 = v13;
    v40 = v12;
    LOBYTE(v43) = 1;
    sub_2388CC904(v12, v13, v15);
    v16 = sub_2388D31F8();
    v37 = v50;
    v42 = v51;
    v36 = v52;
    v38 = v53;
    v17 = v54;
    v39 = v55;
    LOBYTE(v43) = 2;
    sub_2388CC958(v16, v18, v19);
    sub_2388D31F8();
    v35 = v17;
    v41 = v50;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    LOBYTE(v43) = 3;
    sub_2388CCA54(&qword_27DF318B8, sub_2388CC958, MEMORY[0x277D83978]);
    sub_2388D31F8();
    v20 = v50;
    LOBYTE(v50) = 4;
    v34 = sub_2388D31E8();
    v63 = 5;
    v21 = sub_2388D3178();
    v22 = *(v6 + 8);
    v23 = v21;
    v33 = v24;
    v22(v8, v5);
    *&v43 = v40;
    *(&v43 + 1) = v14;
    *&v44 = v37;
    v25 = v42;
    *(&v44 + 1) = v42;
    *&v45 = v36;
    v26 = v38;
    *(&v45 + 1) = v38;
    *&v46 = v35;
    *(&v46 + 1) = v39;
    *&v47 = v41;
    *(&v47 + 1) = v20;
    *&v48 = v34;
    v27 = v33;
    *(&v48 + 1) = v23;
    v49 = v33;
    sub_2388CEC44(&v43, &v50);
    sub_2388158BC(a1);
    v50 = v40;
    v51 = v14;
    v52 = v37;
    v53 = v25;
    v54 = v36;
    v55 = v26;
    v56 = v35;
    v57 = v39;
    v58 = v41;
    v59 = v20;
    v60 = v34;
    v61 = v23;
    v62 = v27;
    result = sub_2388CEC7C(&v50);
    v29 = v48;
    *(a2 + 64) = v47;
    *(a2 + 80) = v29;
    *(a2 + 96) = v49;
    v30 = v44;
    *a2 = v43;
    *(a2 + 16) = v30;
    v31 = v46;
    *(a2 + 32) = v45;
    *(a2 + 48) = v31;
  }

  return result;
}

uint64_t sub_2388CDAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29551 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E646C697542736FLL && a2 == 0xED00007265626D75)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388CDBF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31940, &qword_2388DD2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388CDE40(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v28 = 0;
  v12 = sub_2388D3178();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_2388D3178();
  v24 = v15;
  v26 = 2;
  v16 = sub_2388D3178();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = sub_2388158BC(a1);
  *a2 = v25;
  a2[1] = v14;
  v21 = v24;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

unint64_t sub_2388CDE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31948;
  if (!qword_27DF31948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31948);
  }

  return result;
}

unint64_t sub_2388CDE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31950;
  if (!qword_27DF31950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31950);
  }

  return result;
}

unint64_t sub_2388CDEE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2388CDF34(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2388CDF80(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31958, &qword_2388DD2E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-v5];
  v7 = a1[3];
  v8 = sub_238815878(a1, v7);
  sub_2388CE144(v8, v9, v10);
  v11 = sub_2388D3538();
  if (!v1)
  {
    v15[14] = 0;
    sub_2388CE198(v11, v12, v13);
    sub_2388D31F8();
    v7 = v15[15];
    v15[13] = 1;
    sub_2388D3178();
    (*(v4 + 8))(v6, v3);
  }

  sub_2388158BC(a1);
  return v7;
}

unint64_t sub_2388CE144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31960;
  if (!qword_27DF31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31960);
  }

  return result;
}

unint64_t sub_2388CE198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31968;
  if (!qword_27DF31968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31968);
  }

  return result;
}

unint64_t sub_2388CE1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31980;
  if (!qword_27DF31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31980);
  }

  return result;
}

unint64_t sub_2388CE240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31990;
  if (!qword_27DF31990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31990);
  }

  return result;
}

unint64_t sub_2388CE2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31998;
  if (!qword_27DF31998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31998);
  }

  return result;
}

unint64_t sub_2388CE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319A8;
  if (!qword_27DF319A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319A8);
  }

  return result;
}

uint64_t sub_2388CE3D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_2388CE424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_2388CE4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319B0;
  if (!qword_27DF319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319B0);
  }

  return result;
}

unint64_t sub_2388CE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319B8;
  if (!qword_27DF319B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319B8);
  }

  return result;
}

unint64_t sub_2388CE56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319C0;
  if (!qword_27DF319C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319C0);
  }

  return result;
}

unint64_t sub_2388CE5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319C8;
  if (!qword_27DF319C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319C8);
  }

  return result;
}

unint64_t sub_2388CE61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319D0;
  if (!qword_27DF319D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319D0);
  }

  return result;
}

unint64_t sub_2388CE674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319D8;
  if (!qword_27DF319D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319D8);
  }

  return result;
}

unint64_t sub_2388CE6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319E0;
  if (!qword_27DF319E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319E0);
  }

  return result;
}

unint64_t sub_2388CE724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319E8;
  if (!qword_27DF319E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319E8);
  }

  return result;
}

unint64_t sub_2388CE77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319F0;
  if (!qword_27DF319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319F0);
  }

  return result;
}

unint64_t sub_2388CE7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF319F8;
  if (!qword_27DF319F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319F8);
  }

  return result;
}

unint64_t sub_2388CE828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A00;
  if (!qword_27DF31A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A00);
  }

  return result;
}

unint64_t sub_2388CE87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A10;
  if (!qword_27DF31A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A10);
  }

  return result;
}

unint64_t sub_2388CE8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A18;
  if (!qword_27DF31A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A18);
  }

  return result;
}

unint64_t sub_2388CE924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A20;
  if (!qword_27DF31A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A20);
  }

  return result;
}

unint64_t sub_2388CE978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A30;
  if (!qword_27DF31A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A30);
  }

  return result;
}

unint64_t sub_2388CE9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A38;
  if (!qword_27DF31A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A38);
  }

  return result;
}

uint64_t sub_2388CEA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2388CEA80(uint64_t result, int a2, int a3)
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

unint64_t sub_2388CEAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A40;
  if (!qword_27DF31A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A40);
  }

  return result;
}

unint64_t sub_2388CEB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A48;
  if (!qword_27DF31A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A48);
  }

  return result;
}

unint64_t sub_2388CEB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A50;
  if (!qword_27DF31A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A50);
  }

  return result;
}

unint64_t sub_2388CEBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A60;
  if (!qword_27DF31A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A60);
  }

  return result;
}

unint64_t sub_2388CECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A70;
  if (!qword_27DF31A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A70);
  }

  return result;
}

unint64_t sub_2388CED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A78;
  if (!qword_27DF31A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A78);
  }

  return result;
}

unint64_t sub_2388CED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31A80;
  if (!qword_27DF31A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A80);
  }

  return result;
}

uint64_t sub_2388CEDF0()
{
  v0 = sub_2388D2408();
  sub_2388CEF14(v0, qword_27DF3F8E0);
  sub_2388413AC(v0, qword_27DF3F8E0);
  return sub_2388D23F8();
}

uint64_t sub_2388CEE70()
{
  v0 = sub_2388D2408();
  sub_2388CEF14(v0, qword_27DF3F8F8);
  sub_2388413AC(v0, qword_27DF3F8F8);
  type metadata accessor for LanguageModelSession(0);
  sub_238810E44(qword_27DF31A88, &unk_2388DDBB0);
  sub_2388D28B8();
  return sub_2388D23F8();
}

uint64_t *sub_2388CEF14(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2388CEF78()
{
  v0 = sub_2388D2388();
  sub_2388CEF14(v0, qword_27DF3F910);
  sub_2388413AC(v0, qword_27DF3F910);
  return sub_2388D2378();
}

uint64_t sub_2388CF008(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{
  v26 = a4;
  v27 = a6;
  v25 = a2;
  v8 = sub_2388D2398();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_2388D2358();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_2388D2388();
  sub_2388413AC(v15, qword_27DF3F910);

  v16 = sub_2388D2368();
  sub_2388D23A8();
  v24 = sub_2388D2E28();

  if (sub_2388D2E68())
  {

    sub_2388D23D8();

    if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      v18 = "SessionID=%{public}s RequestID=%{public}s";
      v17 = 2;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = v17;
    *(v19 + 1) = v17;
    *(v19 + 2) = 2082;
    *(v19 + 4) = sub_2388C0770(v25, a3, &v29);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2388C0770(v26, a5, &v29);
    v21 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v16, v24, v21, v27, v18, v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v20, -1, -1);
    MEMORY[0x23EE68030](v19, -1, -1);
  }

  return (*(v12 + 8))(v14, v28);
}

uint64_t sub_2388CF344(uint64_t a1)
{
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v23 = *(a1 + 32);
  v5 = sub_23881608C();
  sub_238814D44(a1);
  if (v1)
  {
    return v2;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v26 = MEMORY[0x277D84F90];
  v21 = v5;
  result = sub_2388B7BD0(0, v7, 0);
  v8 = v5;
  v9 = 0;
  v10 = 32;
  v2 = v26;
  v11 = v7;
  v20 = v7;
  while (v9 < *(v8 + 16))
  {
    v12 = *(v8 + v10);
    v13 = *(v8 + v10 + 16);
    v25 = *(v8 + v10 + 32);
    v24[0] = v12;
    v24[1] = v13;
    if (v13 == 2)
    {
      v14 = *(&v24[0] + 1);
      v15 = *&v24[0];
    }

    else
    {
      sub_2388AE8F8(v24, v22);
      v15 = sub_2388147C8();
      v14 = v16;
      result = sub_238814D44(v24);
      v11 = v20;
      v8 = v21;
    }

    v26 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_2388B7BD0((v17 > 1), v18 + 1, 1);
      v11 = v20;
      v8 = v21;
      v2 = v26;
    }

    ++v9;
    *(v2 + 16) = v18 + 1;
    v19 = v2 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v10 += 40;
    if (v11 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2388CF50C(uint64_t a1, uint64_t a2)
{
  v6 = sub_2388D0D88();
  MEMORY[0x28223BE20](v6);
  result = sub_2388CF7E0(a1, a2);
  if (!v3 && !result)
  {
    sub_2388D2FA8();

    MEMORY[0x23EE66C20](a1, a2);
    MEMORY[0x23EE66C20](0x65746E6F430A2E27, 0xEC000000203A746ELL);
    v17 = *(v2 + 8);
    v18 = *v2;
    v8 = *(v2 + 16);
    sub_2388D0DC8();
    swift_allocObject();
    v9 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    *(swift_allocObject() + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    sub_2388D2F08();
    sub_2388D0D98();
    v10 = sub_238819C1C(v18, v17, v8, v9);
    v12 = v11;

    MEMORY[0x23EE66C20](v10, v12);

    sub_2388151C8(v13, v14, v15);
    swift_allocError();
    *v16 = 0xD00000000000002ELL;
    *(v16 + 8) = 0x80000002388DE3A0;
    *(v16 + 16) = MEMORY[0x277D84F90];
    *(v16 + 24) = 0;
    *(v16 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2388CF7E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v6;
  v23 = *(v2 + 32);
  result = sub_23881AB94();
  if (!v3)
  {
    v8 = result;
    if (*(result + 16) && (v9 = sub_238820AA8(a1, a2), (v10 & 1) != 0))
    {
      v11 = *(v8 + 56) + 40 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 16);
      v24 = *v11;
      v25 = v13;
      v26 = v12;
      sub_2388AE8F8(&v24, v22);

      v27 = v24;
      v28 = v25;
      v15 = *(&v24 + 1);
      v14 = v24;
      v16 = v25;
      sub_238826DB0(&v27, v22);
      v17 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
      v19 = v18;
      v21 = v20;
      LOBYTE(v14) = sub_23882D4E4(v17, v18, v20, v14, v15, v16);
      sub_238810DC4(v17, v19, v21);
      sub_238826E74(&v27);
      if (v14 & 1) == 0 || ((HIBYTE(v28) ^ ((v21 & 0x100) >> 8)))
      {
        return sub_2388CF344(&v24);
      }

      sub_238814D44(&v24);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_2388CF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_2388978D4(sub_2388D0284, v4, a1);
}

uint64_t sub_2388CF99C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v73 = a5;
  v80 = a4;
  v81 = a6;
  v77 = a3;
  v78 = a2;
  v7 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v65 - v12;
  v13 = sub_2388D2178();
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for GenerationSchema(0);
  v67 = *(v69 - 8);
  v16 = MEMORY[0x28223BE20](v69);
  v66 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v65 - v19;
  MEMORY[0x28223BE20](v18);
  v75 = &v65 - v20;
  v21 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v71 = (&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  *&v79 = type metadata accessor for Transcript.ResponseFormat(0);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v27 = (&v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D06F8(a1, v33, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v36 = *v33;
    v37 = *(v33 + 3);
    v79 = *(v33 + 8);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v38 = v80;
    *(&v65 - 4) = v77;
    *(&v65 - 3) = v38;
    *(&v65 - 2) = v78;

    v39 = sub_238897F98(sub_2388D06D4, (&v65 - 6), v37);
    swift_bridgeObjectRelease_n();
    v40 = v81;
    *v81 = v36;
    *(v40 + 1) = v79;
    v40[3] = v39;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2388D07C0(v33, v30, type metadata accessor for Transcript.Prompt);
    v35 = *(v28 + 28);
    sub_238827E14(&v30[v35], v25, &qword_27DF2FF00, &qword_2388D57E0);
    if ((*(v76 + 48))(v25, 1, v79) == 1)
    {
      sub_238827E88(v25, &qword_27DF2FF00, &qword_2388D57E0);
    }

    else
    {
      sub_2388D07C0(v25, v27, type metadata accessor for Transcript.ResponseFormat);
      v44 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
      (*(v74 + 16))(v15, v27 + *(v44 + 24), v13);
      v46 = *v27;
      v45 = v27[1];

      v47 = v75;
      v48 = v46;
      v49 = v82;
      GenerationSchema.init(schema:source:)(v15, v48, v45, v75);
      v82 = v49;
      if (v49)
      {
        sub_2388D0760(v27, type metadata accessor for Transcript.ResponseFormat);
        result = sub_2388D0760(v30, type metadata accessor for Transcript.Prompt);
        *v73 = v82;
        return result;
      }

      v73 = v44;
      v74 = v35;
      v50 = v68;
      sub_2388D06F8(v47, v68, type metadata accessor for GenerationSchema);
      v51 = v67;
      v52 = v69;
      (*(v67 + 56))(v50, 0, 1, v69);
      v53 = v72;
      (*(v80 + 24))(v50, v77);
      sub_238827E88(v50, &qword_27DF2FE20, &qword_2388D5740);
      v54 = v70;
      sub_238827E14(v53, v70, &qword_27DF2FE20, &qword_2388D5740);
      if ((*(v51 + 48))(v54, 1, v52) == 1)
      {
        sub_238827E88(v53, &qword_27DF2FE20, &qword_2388D5740);
        sub_2388D0760(v75, type metadata accessor for GenerationSchema);
        sub_2388D0760(v27, type metadata accessor for Transcript.ResponseFormat);
        v55 = 1;
        v56 = v71;
      }

      else
      {
        v57 = v52;
        v58 = v65;
        sub_2388D07C0(v54, v65, type metadata accessor for GenerationSchema);
        v59 = v66;
        sub_2388D06F8(v58, v66, type metadata accessor for GenerationSchema);
        v60 = (v59 + *(v57 + 20));
        v61 = v60[1];
        v80 = *v60;

        sub_2388C24EC();
        v77 = v63;
        v78 = v62;
        v56 = v71;
        GenerationSchema.jsonSchema()(v71 + *(v73 + 24));
        sub_2388D0760(v59, type metadata accessor for GenerationSchema);
        sub_2388D0760(v58, type metadata accessor for GenerationSchema);
        sub_238827E88(v53, &qword_27DF2FE20, &qword_2388D5740);
        sub_2388D0760(v75, type metadata accessor for GenerationSchema);
        sub_2388D0760(v27, type metadata accessor for Transcript.ResponseFormat);
        v55 = 0;
        *v56 = v80;
        v56[1] = v61;
        v64 = v77;
        v56[2] = v78;
        v56[3] = v64;
      }

      (*(v76 + 56))(v56, v55, 1, v79);
      sub_238856608(v56, &v30[v74]);
    }

    sub_2388D06F8(v30, v81, type metadata accessor for Transcript.Prompt);
    swift_storeEnumTagMultiPayload();
    v42 = type metadata accessor for Transcript.Prompt;
    v43 = v30;
  }

  else
  {
    sub_2388D06F8(a1, v81, type metadata accessor for Transcript.Entry);
    v42 = type metadata accessor for Transcript.Entry;
    v43 = v33;
  }

  return sub_2388D0760(v43, v42);
}

uint64_t sub_2388D02A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_2388D0D88();
  MEMORY[0x28223BE20](v9);
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = a1[3];
  v42 = a1[2];
  *v43 = v11;
  *&v43[16] = a1[4];
  *&v43[32] = *(a1 + 10);
  if (v11 >> 62 == 1)
  {
    v12 = *(&v40 + 1);
    v32 = v40;
    v34 = v40;
    v13 = v41;
    v44 = v13 >> 64;
    v31 = v13;
    v35 = v41;
    v36 = v42;
    v37 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    v38 = *&v43[8];
    v39 = *&v43[24];
    v14 = (*(a3 + 48))(&v34, a2, a3);
    v33[1] = 0;
    v33[0] = 0;
    GeneratedContent.init(id:text:)(v33, v14, v15, &v34);
    if (v4)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v16 = v34;
      v17 = v35;
      v27 = v35;
      v29 = BYTE1(v35);
      v30 = *(&v35 + 1);
      v28 = v36;
      sub_2388D0DC8();
      swift_allocObject();

      sub_238814698(v16, *(&v16 + 1), v17);

      v18 = sub_2388D0DB8();
      sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
      *(swift_allocObject() + 16) = xmmword_2388D3F70;
      sub_2388D0D78();
      sub_238815B14();
      sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
      sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
      sub_2388D2F08();
      sub_2388D0D98();
      if (v29)
      {
        v19 = 0x4000000000000100;
      }

      else
      {
        v19 = 0x4000000000000000;
      }

      v20 = sub_238819C1C(v16, *(&v16 + 1), v27, v18);
      v22 = v21;

      sub_238810DC4(v16, *(&v16 + 1), v27);

      *a4 = v32;
      *(a4 + 8) = v12;
      v24 = v44;
      *(a4 + 16) = v31;
      *(a4 + 24) = v24;
      *(a4 + 32) = v16;
      *(a4 + 48) = v19 & 0xFFFFFFFFFFFFFFF8 | v27 & 7;
      *(a4 + 56) = v30;
      *(a4 + 64) = v28;
      *(a4 + 72) = v20;
      *(a4 + 80) = v22;
    }
  }

  else
  {
    v25 = a1[3];
    *(a4 + 32) = a1[2];
    *(a4 + 48) = v25;
    *(a4 + 64) = a1[4];
    *(a4 + 80) = *(a1 + 10);
    v26 = a1[1];
    *a4 = *a1;
    *(a4 + 16) = v26;
    return sub_2388977E4(&v40, &v34);
  }

  return result;
}

uint64_t sub_2388D06F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388D0760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388D07C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388D0864@<X0>(void *a1@<X8>)
{
  sub_238810E44(&qword_27DF31B10, &qword_2388DDC78);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = 0x736369706F74;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v3 = sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  v4 = sub_2388D0C68();
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  type metadata accessor for AnyGenerationGuides(0);
  swift_allocObject();
  *(v2 + 88) = sub_2388C1410();
  *a1 = 0x676E6967676154;
  a1[1] = 0xE700000000000000;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for GenerationSchema(0);
  v6 = (a1 + *(v5 + 20));
  *v6 = 0x676E6967676154;
  v6[1] = 0xE700000000000000;
  v7 = *(*(v5 - 8) + 56);

  return v7(a1, 0, 1, v5);
}

uint64_t sub_2388D09B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2388D0B10(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2388D0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_2388D0AE0(uint64_t a1)
{
  v1 = *(a1 + 72);

  return v1;
}

uint64_t sub_2388D0B10(uint64_t a1, unint64_t a2)
{
  v9[0] = 0uLL;

  GeneratedContent.init(id:text:)(v9, a1, a2, v7);
  v9[0] = v7[0];
  v9[1] = v7[1];
  v10 = v8;
  sub_2388AE8F8(v9, v7);
  v4 = sub_2388CF50C(0x736369706F74, 0xE600000000000000);
  sub_238814D44(v9);
  sub_238814D44(v9);
  *&v7[0] = v4;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
  v5 = sub_2388D27B8();

  return v5;
}

unint64_t sub_2388D0C68()
{
  result = qword_27DF31B18;
  if (!qword_27DF31B18)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31B18);
  }

  return result;
}