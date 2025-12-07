void sub_1003B053C(uint64_t a1)
{
  v3 = v1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v1[2];
  v19 = v1[6];
  v13 = v1[7];
  v17 = v1[8];
  v18 = v1[4];
  v15 = v1[10];
  v16 = v1[9];
  v14 = v1[11];
  sub_1004A6EC4(1u);
  v5 = *(v4 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    v8 = v3 + 40;
    while (v6 < *(v3 + 16))
    {
      ++v6;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 16;
      v8 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v18 == 1)
  {
LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(1u);
  if (v18)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v9 = *(v13 + 16);
    sub_1004A6EB4(v9);

    if (v9)
    {
      v10 = 0;
      v11 = v13 + 40;
      v12 = v19 + 40;
      while (v10 < *(v19 + 16))
      {
        ++v10;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v11 += 16;
        v12 += 16;
        if (v9 == v10)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v17, v16, v15, v14);
}

void sub_1003B0794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  sub_1004A6EC4(1u);
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (a5)
  {
    sub_1004A6EC4(1u);
    if (a4)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v10 = *(a5 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (a5 + 55);
      do
      {
        v12 = *(v11 - 23);
        if (*v11)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v12);
        }

        else
        {
          sub_1004A6EB4(0);
          if (v12)
          {
            sub_1004A6EC4(1u);
            swift_beginAccess();
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v11 += 24;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
LABEL_8:
    sub_1004A6EC4(0);
  }
}

void sub_1003B0920(uint64_t a1)
{
  v3 = v1[1];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v16 = v1[10];
  v17 = v1[6];
  sub_1004A6EC4(1u);
  if (v3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v4 == 1)
    {
LABEL_4:
      sub_1004A6EC4(0);
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v4 == 1)
    {
      goto LABEL_4;
    }
  }

  sub_1004A6EC4(1u);
  if (!v4)
  {
    sub_1004A6EC4(0);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v7;
  v15 = v6;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v9 = *(v17 + 16);
  sub_1004A6EB4(v9);

  if (!v9)
  {
LABEL_11:

    v7 = v14;
    v6 = v15;
    v8 = v13;
LABEL_13:

    sub_1003B0794(a1, v6, v7, v8, v16);
    return;
  }

  v10 = 0;
  v11 = v17 + 40;
  v12 = v5 + 40;
  while (v10 < *(v5 + 16))
  {
    ++v10;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v11 += 16;
    v12 += 16;
    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL _s12NIOIMAPCore213BodyStructureO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 144);
  v80[8] = *(a1 + 128);
  v80[9] = v3;
  v80[10] = *(a1 + 160);
  v81 = *(a1 + 176);
  v4 = *(a1 + 80);
  v80[4] = *(a1 + 64);
  v80[5] = v4;
  v5 = *(a1 + 112);
  v80[6] = *(a1 + 96);
  v80[7] = v5;
  v6 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v6;
  v7 = *(a1 + 48);
  v80[2] = *(a1 + 32);
  v80[3] = v7;
  if (sub_10000FE88(v80) != 1)
  {
    v29 = UInt32.init(_:)(v80);
    v69 = v29[7];
    v70 = v29[8];
    v71 = v29[9];
    v72 = v29[10];
    v65 = v29[3];
    v66 = v29[4];
    v67 = v29[5];
    v68 = v29[6];
    v62 = *v29;
    v63 = v29[1];
    v64 = v29[2];
    LOBYTE(v50) = *(a2 + 176);
    v30 = a2[10];
    v48 = a2[9];
    v49 = v30;
    v31 = a2[8];
    v46 = a2[7];
    v47 = v31;
    v32 = a2[6];
    v44 = a2[5];
    v45 = v32;
    v33 = a2[4];
    v42 = a2[3];
    v43 = v33;
    v34 = a2[2];
    v40 = a2[1];
    v41 = v34;
    v39 = *a2;
    if (sub_10000FE88(&v39) != 1)
    {
      v35 = UInt32.init(_:)(&v39);
      v58 = v35[7];
      v59 = v35[8];
      v60 = v35[9];
      v61 = v35[10];
      v54 = v35[3];
      v55 = v35[4];
      v56 = v35[5];
      v57 = v35[6];
      v51 = *v35;
      v52 = v35[1];
      v53 = v35[2];
      return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v62, &v51);
    }

    UInt32.init(_:)(&v39);
    return 0;
  }

  v8 = UInt32.init(_:)(v80);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 72);
  v84 = *(v8 + 56);
  v85 = v12;
  v13 = *(v8 + 104);
  v86 = *(v8 + 88);
  v87 = v13;
  v14 = *(v8 + 40);
  v82 = *(v8 + 24);
  v83 = v14;
  v15 = a2[3];
  v64 = a2[2];
  v65 = v15;
  v16 = a2[9];
  v70 = a2[8];
  v71 = v16;
  v72 = a2[10];
  v73 = *(a2 + 176);
  v17 = a2[7];
  v68 = a2[6];
  v69 = v17;
  v18 = a2[5];
  v66 = a2[4];
  v67 = v18;
  v19 = a2[1];
  v62 = *a2;
  v63 = v19;
  if (sub_10000FE88(&v62) != 1)
  {
    UInt32.init(_:)(&v62);
    return 0;
  }

  v20 = UInt32.init(_:)(&v62);
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  v23 = *(v20 + 72);
  v76 = *(v20 + 56);
  v77 = v23;
  v24 = *(v20 + 104);
  v78 = *(v20 + 88);
  v79 = v24;
  v25 = *(v20 + 40);
  v74 = *(v20 + 24);
  v75 = v25;
  if ((sub_10039C870(v10) & 1) == 0 || (v9 != v21 || v11 != v22) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v88[2] = v84;
  v88[3] = v85;
  v88[4] = v86;
  v88[5] = v87;
  v88[0] = v82;
  v88[1] = v83;
  v89[2] = v76;
  v89[3] = v77;
  v89[4] = v78;
  v89[5] = v79;
  v89[0] = v74;
  v89[1] = v75;
  v26 = v82;
  if (!*(&v82 + 1))
  {
    if (!*(&v74 + 1))
    {
      v39 = v82;
      v42 = v85;
      v43 = v86;
      v44 = v87;
      v40 = v83;
      v41 = v84;
      sub_10000E268(v88, &v51, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v89, &v51, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(&v39, &qword_1005DBCC8, &qword_1004FE5E0);
      return 1;
    }

    goto LABEL_17;
  }

  if (!*(&v74 + 1))
  {
LABEL_17:
    *&v39 = *&v88[0];
    *(&v39 + 1) = *(&v82 + 1);
    v42 = v85;
    v43 = v86;
    v44 = v87;
    v40 = v83;
    v41 = v84;
    v45 = v74;
    v49 = v78;
    v50 = v79;
    v47 = v76;
    v48 = v77;
    v46 = v75;
    sub_10000E268(v88, &v51, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_10000E268(v89, &v51, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_100025F40(&v39, &qword_1005DBCD0, &qword_1004FE5E8);
    return 0;
  }

  *&v37[0] = *&v89[0];
  *(&v37[0] + 1) = *(&v74 + 1);
  v37[3] = v77;
  v37[4] = v78;
  v37[5] = v79;
  v37[1] = v75;
  v37[2] = v76;
  v43 = v78;
  v44 = v79;
  v41 = v76;
  v42 = v77;
  v39 = v37[0];
  v40 = v75;
  v55 = v86;
  v56 = v87;
  v53 = v84;
  v54 = v85;
  v52 = v83;
  v51 = v82;
  sub_10000E268(v88, v38, &qword_1005DBCC8, &qword_1004FE5E0);
  sub_10000E268(v89, v38, &qword_1005DBCC8, &qword_1004FE5E0);
  v27 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(&v51, &v39);
  sub_100025F40(v37, &qword_1005DBCC8, &qword_1004FE5E0);
  v38[0] = v26;
  v38[3] = v85;
  v38[4] = v86;
  v38[5] = v87;
  v38[1] = v83;
  v38[2] = v84;
  sub_100025F40(v38, &qword_1005DBCC8, &qword_1004FE5E0);
  return v27;
}

unint64_t sub_1003B0FE8()
{
  result = qword_1005DBD88;
  if (!qword_1005DBD88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageAttribute.BodyStructure, &type metadata for MessageAttribute.BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBD88);
  }

  return result;
}

unint64_t sub_1003B1040()
{
  result = qword_1005DBD90;
  if (!qword_1005DBD90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure, &type metadata for BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBD90);
  }

  return result;
}

unint64_t sub_1003B1098()
{
  result = qword_1005DBD98;
  if (!qword_1005DBD98)
  {
    result = swift_getWitnessTable("ٝ\b", &type metadata for BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBD98);
  }

  return result;
}

unint64_t sub_1003B1134()
{
  result = qword_1005DBDB0;
  if (!qword_1005DBDB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure, &type metadata for BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBDB0);
  }

  return result;
}

unint64_t sub_1003B118C()
{
  result = qword_1005DBDB8;
  if (!qword_1005DBDB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DBDC0, &qword_1004FF018);
    v4[0] = sub_1003B1134();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_1005DBDB8);
  }

  return result;
}

unint64_t sub_1003B1214()
{
  result = qword_1005DBDC8;
  if (!qword_1005DBDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure, &type metadata for BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBDC8);
  }

  return result;
}

uint64_t sub_1003B12B0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10000DEFC(&qword_1005DBDA8, &qword_1004FF010);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003B132C()
{
  result = qword_1005DBDD8;
  if (!qword_1005DBDD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005DBDC0, &qword_1004FF018);
    v4[0] = sub_1003B1098();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_1005DBDD8);
  }

  return result;
}

unint64_t sub_1003B13B4()
{
  result = qword_1005DBDE0;
  if (!qword_1005DBDE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure, &type metadata for BodyStructure, v0, v1);
    atomic_store(result, &qword_1005DBDE0);
  }

  return result;
}

unint64_t sub_1003B140C()
{
  result = qword_1005DBDE8;
  if (!qword_1005DBDE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionSpecifier.Part, &type metadata for SectionSpecifier.Part, v0, v1);
    atomic_store(result, &qword_1005DBDE8);
  }

  return result;
}

uint64_t sub_1003B152C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003B1574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = ~a2;
    }
  }

  return result;
}

double sub_1003B15D4(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 176) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 176) = -a2;
  }

  return result;
}

uint64_t sub_1003B163C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 177))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 176);
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

uint64_t sub_1003B1684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 176) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003B1714(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = sub_1004A5924();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1004A5954();

  return sub_1004A5AB4();
}

double sub_1003B17E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }

  return result;
}

uint64_t sub_1003B1820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B1888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B18F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void BodyExtension.hash(into:)(uint64_t a1, Swift::UInt a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(a2);
  }

  else
  {
    sub_1004A6EB4(0);
    if (a2)
    {
      sub_1004A6EC4(1u);
      swift_beginAccess();
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EC4(0);
    }
  }
}

Swift::Int BodyExtension.hashValue.getter(Swift::UInt a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  BodyExtension.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a3) & 1) << 56));
  return sub_1004A6F14();
}

Swift::Int sub_1003B1A94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1004A6E94();
  BodyExtension.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1004A6F14();
}

Swift::Int sub_1003B1B40(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1004A6E94();
  BodyExtension.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1004A6F14();
}

BOOL sub_1003B1C18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) != 0)
  {
    return HIBYTE(a6) & (a1 == a4);
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    return 0;
  }

  if (a1)
  {
    if (a4)
    {
      sub_1003A336C(a4, a5, a6, 0);
      sub_1003A336C(a1, a2, a3, 0);
      v12 = sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
      sub_1003B1E64(a4, a5, a6, 0);
      sub_1003B1E64(a1, a2, a3, 0);
      return v12;
    }

LABEL_9:
    sub_1003A336C(a4, a5, a6, 0);
    sub_1003A336C(a1, a2, a3, 0);

    return 0;
  }

  if (a4)
  {
    goto LABEL_9;
  }

  return 1;
}

unint64_t sub_1003B1D5C()
{
  result = qword_1005DBE18;
  if (!qword_1005DBE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyExtension, &type metadata for BodyExtension, v0, v1);
    atomic_store(result, &qword_1005DBE18);
  }

  return result;
}

uint64_t sub_1003B1DBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 23);
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

uint64_t sub_1003B1E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003B1E64(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v4;
}

uint64_t sub_1003B1E70(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
  {
    v5[0] = result;
    v5[1] = a2;
    v6 = a3;
    v7 = WORD2(a3);
    v8 = BYTE6(a3);
    v9 = a2;
    v10 = HIDWORD(a2);

    sub_10044226C(v5);
    v4 = v3;
    sub_1003A52D0(v5);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t GmailLabel.init(useAttribute:)(unint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 12);
  result = sub_1002F178C(a1._countAndFlagsBits, a1._object, v1, v4);
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 12);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v10;
  }

  return result;
}

uint64_t ByteBuffer.writeBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = ByteBuffer.setBytes<A>(_:at:)(a1, *(v3 + 12), a2, a3);
  v5 = *(v3 + 12);
  v6 = __CFADD__(v5, result);
  v7 = v5 + result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v7;
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v6 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v3) - v3) - length >= at - v3)
    {
      v7 = at;
      v8 = v4;
      v9 = v2;
      swift_beginAccess();
      if (length)
      {
        v11 = length;
        v12 = *(v9 + 24);
        v13 = ((v8 >> 24) & 0xFFFF00 | BYTE6(v8)) + v7;
        v14 = v11;
        v15 = sub_10015BEAC(v11, 0);
        memcpy(v15 + 4, (v12 + v13), v14);
        v6 = v15;
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  result.is_nil = length;
  result.value._rawValue = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  v2 = length;
  v3 = *(v1 + 8);
  result = ByteBuffer.getBytes(at:length:)(v3, length);
  if (result.value._rawValue)
  {
    if (__CFADD__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v3 + v2;
    }
  }

  return result;
}

void ByteBuffer.writeStaticString(_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  ByteBuffer.setStaticString(_:at:)(a1, a2, a3, *(v3 + 12));
  v4 = *(v3 + 12);
  v6 = __CFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 12) = v7;
  }
}

void ByteBuffer.setStaticString(_:at:)(const void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a4;
  v8 = a4 + a2;
  if (__CFADD__(a4, a2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v4 + 16);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(a2, v6);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a1 + a2, v6);
    return;
  }

LABEL_14:
  __break(1u);
}

Swift::Int __swiftcall ByteBuffer.setString(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  result = sub_1002F178C(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    v8 = countAndFlagsBits;
    v9 = object;

    return ByteBuffer._setStringSlowpath(_:at:)(*&v8, at);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeNullTerminatedString(_:)(Swift::String a1)
{
  result = ByteBuffer.setNullTerminatedString(_:at:)(a1, *(v1 + 12));
  v3 = *(v1 + 12);
  v4 = __CFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setNullTerminatedString(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_1002F178C(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    v8._countAndFlagsBits = countAndFlagsBits;
    v8._object = object;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, at);
  }

  v9 = v6;
  v10 = v6 + at;
  v18 = 0;
  v11 = v6 + at + 1;
  if (v10 == -1)
  {
    __break(1u);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v2 + 16);
    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v10);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v18, &v19, v10);
  return v9 + 1;
}

Swift::Int __swiftcall ByteBuffer._setStringSlowpath(_:at:)(Swift::String _, Swift::Int at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  result = sub_1003B247C(_._countAndFlagsBits, _._object, v2, at);
  if (v7)
  {
    result = sub_1003B2588(countAndFlagsBits, object, v2, at);
    if ((result & 0x100000000) != 0)
    {
      LODWORD(result) = sub_1003B51F8(countAndFlagsBits, object, at);
    }

    return result;
  }

  return result;
}

unint64_t sub_1003B247C(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v19[0] = result;
  v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a3 + 16);
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v19, v19 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B2588(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v19 = 0;
    return v19 | (((a2 >> 60) & 1) << 32);
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    LODWORD(v12) = v11;
LABEL_16:
    v19 = v12;
    return v19 | (((a2 >> 60) & 1) << 32);
  }

  v12 = HIBYTE(a2) & 0xF;
  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a3 + 16);
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(HIBYTE(a2) & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v20, v20 + v12, a4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v4 = 0;
  v5 = 0;
  if (at < v2 || length < 0)
  {
    goto LABEL_6;
  }

  if ((HIDWORD(v2) - v2) - length >= at - v2)
  {
    swift_beginAccess();
    v4 = sub_1004A58D4();
    v5 = v7;
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  v4 = 0;
  v6 = 0;
LABEL_7:
  result.value._object = v6;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getNullTerminatedString(at:)(Swift::Int at)
{
  v2 = v1;
  v8 = ByteBuffer._getNullTerminatedStringLength(at:)(at);
  if (v8.is_nil)
  {
    goto LABEL_2;
  }

  value = v8.value;
  v4 = 0;
  v5 = 0;
  if (at >= v2 && (value & 0x8000000000000000) == 0)
  {
    if ((HIDWORD(v2) - v2) - value < at - v2)
    {
LABEL_2:
      v4 = 0;
      v5 = 0;
      goto LABEL_8;
    }

    swift_beginAccess();
    v4 = sub_1004A58D4();
  }

LABEL_8:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Int_optional __swiftcall ByteBuffer._getNullTerminatedStringLength(at:)(Swift::Int at)
{
  v4 = v1;
  v6 = 0;
  v7 = 1;
  if (v2 > at)
  {
    goto LABEL_18;
  }

  v8 = HIDWORD(v2);
  if (HIDWORD(v2) <= at)
  {
    goto LABEL_18;
  }

  v9 = (WORD2(v3) << 8) | BYTE6(v3);
  if ((v3 - v9) < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < v2 || (v10 = v8 - at, v8 < at))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12[0] = v4;
  v12[1] = v2;
  v13 = v3;
  v14 = WORD2(v3);
  v15 = BYTE6(v3);
  v16 = at;
  v17 = HIDWORD(v2);
  v6 = swift_beginAccess();
  v11 = 0;
  while (*(*(v4 + 24) + v9 + at + v11))
  {
    if ((v10 & ~(v10 >> 63)) == v11)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 == ++v11)
    {

      sub_1003A52D0(v12);
      v6 = 0;
      v7 = 1;
      goto LABEL_18;
    }
  }

  v6 = sub_1003A52D0(v12);
  if (__OFADD__(v11, at))
  {
    goto LABEL_17;
  }

  v7 = 0;
  v6 = v11;
LABEL_18:
  result.value = v6;
  result.is_nil = v7;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0 || (v2 = *(v1 + 8), (*(v1 + 12) - v2) < length))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = length;
    swift_beginAccess();
    v3 = sub_1004A58D4();
    if (__CFADD__(v2, v5))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v2 + v5;
    }
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.readNullTerminatedString()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v9 = ByteBuffer._getNullTerminatedStringLength(at:)(v1);
  if (!v9.is_nil)
  {
    value = v9.value;
    v3 = 0;
    if (value < 0)
    {
      v4 = 0;
      v7 = v1 + 1;
      if (v1 != -1)
      {
LABEL_8:
        if (v2 >= v7)
        {
          *(v0 + 8) = v7;
          goto LABEL_14;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
      if (value <= v2 - v1)
      {
        swift_beginAccess();
        v3 = sub_1004A58D4();
        v6 = __CFADD__(v1, value);
        v1 += value;
        if (v6)
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        *(v0 + 8) = v1;
      }

      v7 = v1 + 1;
      if (v1 != -1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 0;
LABEL_14:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

unint64_t ByteBuffer.writeSubstring(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = *(v4 + 12);
  result = sub_1003B571C(a1, a2, a3, a4, v4, v5);
  if (v7)
  {
    v8 = sub_1004A5864();
    v10 = v9;
    v11 = sub_1002F178C(v8, v9, v4, v5);
    if (v12)
    {
      v13._countAndFlagsBits = v8;
      v13._object = v10;
      v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
    }

    v14 = v11;

    result = v14;
  }

  v15 = *(v4 + 12);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v17;
  }

  return result;
}

unint64_t ByteBuffer.setSubstring(_:at:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  result = sub_1003B571C(a1, a2, a3, a4, v5, a5);
  if (v8)
  {
    v9 = sub_1004A5864();
    v11 = v10;
    v12 = sub_1002F178C(v9, v10, v5, a5);
    if (v13)
    {
      v14._countAndFlagsBits = v9;
      v14._object = v11;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, a5);
    }

    v15 = v12;

    return v15;
  }

  return result;
}

void ByteBuffer.writeDispatchData(_:)(uint64_t a1)
{
  ByteBuffer.setDispatchData(_:at:)(a1, *(v1 + 12));
  v2 = *(v1 + 12);
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v5;
  }
}

void ByteBuffer.setDispatchData(_:at:)(uint64_t a1, int64_t a2)
{
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v5 = a2 + v4;
  if (__OFADD__(a2, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 > *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v5, 0);
    }

    else
    {
      v6 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v6 & 1);
    }
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v7 = *(v2 + 16);
  v8 = *(v2 + 20);
  v9 = *(v2 + 22);
  swift_beginAccess();
  v10 = v7 - (v9 | (v8 << 8));
  if (v5 < a2)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, a2);
  if (a2 < 0)
  {
    goto LABEL_17;
  }

  if (v10 < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 > v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v11)
  {
    sub_1004A5374();
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t ByteBuffer.getDispatchData(at:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  if (a1 < a4 || a2 < 0 || (HIDWORD(a4) - a4) - a2 < a1 - a4)
  {
    v7 = sub_1004A5384();
    v8 = *(*(v7 - 8) + 56);

    return v8(a6, 1, 1, v7);
  }

  else
  {
    swift_beginAccess();
    sub_1004A5324();
    v10 = sub_1004A5384();
    return (*(*(v10 - 8) + 56))(a6, 0, 1, v10);
  }
}

uint64_t ByteBuffer.readDispatchData(length:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004A5384();
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0 || (v10 = *(v2 + 8), (*(v2 + 12) - v10) < a1))
  {
    v11 = *(v6 + 56);

    return v11(a2, 1, 1, v5, v7);
  }

  else
  {
    v13 = v6;
    swift_beginAccess();
    sub_1004A5324();
    result = (*(v13 + 32))(a2, v9, v5);
    if (__CFADD__(v10, a1))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 8) = v10 + a1;
      return (*(v13 + 56))(a2, 0, 1, v5);
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 10);
  v8 = *(v1 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  result = a1(v9 + v5, v9 + v6);
  if (!v2)
  {
    if (__CFADD__(v5, result))
    {
      __break(1u);
    }

    else
    {
      *(v1 + 2) = v5 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *v3;
  v8 = *(v3 + 10);
  v9 = *(v3 + 22);
  swift_beginAccess();
  v10 = *(v7 + 24) + (v9 | (v8 << 8));
  result = a1(v10 + v6, v10 + v5);
  if (!v2)
  {
    if (__CFADD__(v6, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 2) = v6 + result;
    }
  }

  return result;
}

void sub_1003B3210(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2;
  v9 = HIDWORD(a2);
  swift_beginAccess();
  v10 = v5 + v9 - v7;
  if (__CFADD__(v5, v9 - v7))
  {
    __break(1u);
  }

  else
  {
    v11 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = *(v4 + 16);
      v13 = v10 >= v12;
      v14 = v10 - v12;
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
    }

    v17 = v11 + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    ByteBuffer._ensureAvailableCapacity(_:at:)(v9 - v7, v5);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v17 + v7), v17 + v9, v5);
  }
}

void ByteBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 10);
  v7 = *(a1 + 22);
  v8 = *(v1 + 12);
  swift_beginAccess();
  v9 = v5 - v4;
  v10 = v8 + v5 - v4;
  if (__CFADD__(v8, v5 - v4))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v3 + 24) + (v7 | (v6 << 8));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = *(v1 + 16);
    v13 = v10 >= v12;
    v14 = v10 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v5 - v4, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v11 + v4), v11 + v5, v8);
  v17 = *(v1 + 12);
  v13 = __CFADD__(v17, v9);
  v18 = v17 + v9;
  if (v13)
  {
    goto LABEL_11;
  }

  *(v1 + 12) = v18;
  if (!__CFADD__(v4, v9))
  {
    *(a1 + 2) = v5;
    return;
  }

LABEL_12:
  __break(1u);
}

void ByteBuffer.writeBytes(_:)(const void *a1, uint64_t a2)
{
  ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 12));
  v3 = *(v2 + 12);
  v5 = __CFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v6;
  }
}

Swift::Int __swiftcall ByteBuffer.writeRepeatingByte(_:count:)(Swift::UInt8 _, Swift::Int count)
{
  result = ByteBuffer.setRepeatingByte(_:count:at:)(_, count, *(v2 + 12));
  v5 = *(v2 + 12);
  v6 = __CFADD__(v5, count);
  v7 = v5 + count;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = v7;
    return count;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.setRepeatingByte(_:count:at:)(Swift::UInt8 _, Swift::Int count, Swift::Int at)
{
  if (count < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = at + count;
  if (__OFADD__(at, count))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = _;
  if (v6 > *(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v8 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v8 & 1);
    }
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v9 = *v3;
  v10 = *(v3 + 10);
  v11 = *(v3 + 22);
  *&_ = swift_beginAccess();
  if (v6 < at)
  {
    goto LABEL_14;
  }

  if (v6 - at < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != at)
  {
    memset((*(v9 + 24) + (v10 << 8) + at + v11), v7, v6 - at);
  }

  *&_ = count;
LABEL_16:
  LOBYTE(result) = _;
  return result;
}

uint64_t ByteBuffer.slice()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = ByteBuffer.getSlice(at:length:)(a2, (HIDWORD(a2) - a2), a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t ByteBuffer.readSlice(length:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 12);
  if (v3 < result || (v3 - result) < v4)
  {
    return 0;
  }

  v6 = *(v1 + 22) | (*(v1 + 20) << 8);
  if (__CFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v6 + v4) >> 24)
    {
      result = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(*(v1 + 8), result, *v1);
    }

    else
    {
    }

    if (!__CFADD__(v4, v2))
    {
      *(v1 + 8) = v4 + v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a1;
  v3[1] = a2;
  v4 = a3;
  v6 = BYTE6(a3);
  v5 = WORD2(a3);
  ByteBuffer.writeBuffer(_:)(v3);
}

uint64_t ByteBuffer.readWithUnsafeMutableReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v18[-v11];
  v19 = a3;
  v20 = a1;
  v21 = a2;
  result = ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(sub_1003B57D4);
  if (!v5)
  {
    v14 = *v12;
    result = (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
    v15 = *(v4 + 8);
    v16 = __CFADD__(v15, v14);
    v17 = v15 + v14;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v17;
    }
  }

  return result;
}

uint64_t ByteBuffer.readWithUnsafeReadableBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v20[-v11];
  v13 = *v4;
  v14 = *(v4 + 8);
  v15 = *(v4 + 16);
  v16 = *(v4 + 20);
  v17 = *(v4 + 22);
  v21 = a3;
  v22 = a1;
  v23 = a2;
  result = ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B57F0, v20, v13, v14, v15 | (v16 << 32) | (v17 << 48));
  if (!v5)
  {
    v19 = *v12;
    result = (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
    if (__CFADD__(v14, v19))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 8) = v14 + v19;
    }
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(string:)(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v8 = sub_1004A59E4();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    a6 = v18;
    a5 = v17;
    a4 = v16;
    a3 = v15;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v8, a3, a4, a5, a6);
  swift_beginAccess();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(v9 + 16);
  while (1)
  {
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = v14;
    v27 = v12;
    v28 = v13;
    v19 = sub_1002F178C(a1, a2, &v23, v11);
    if (v20)
    {
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v11);
    }

    if (!__CFADD__(v25, v19))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_11:
    v9 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v10 = qword_1005DE390;
    v11 = HIDWORD(qword_1005DE390);
    v14 = dword_1005DE398;
    v12 = word_1005DE39C;
    v13 = byte_1005DE39E;
  }

  return v23;
}

uint64_t ByteBuffer.init(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = ByteBufferAllocator.buffer(substring:)(a1, a2, a3, a4, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v4;
}

uint64_t ByteBufferAllocator.buffer(substring:)(unint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1004A63E4();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!v16)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v17 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v16, a5, a6, a7, a8);
  swift_beginAccess();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(v17 + 16);
  while (1)
  {
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v22;
    v34 = v20;
    v35 = v21;
    v23 = sub_1003B571C(a1, a2, a3, a4, &v30, v19);
    if (v24)
    {
      a2 = sub_1004A5864();
      a4 = v25;
      v26 = sub_1002F178C(a2, v25, &v30, v19);
      if (v27)
      {
        v28._countAndFlagsBits = a2;
        v28._object = a4;
        v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v19);
      }

      a3 = v26;

      v23 = a3;
    }

    if (!__CFADD__(v32, v23))
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
LABEL_5:
    v17 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v18 = qword_1005DE390;
    v19 = HIDWORD(qword_1005DE390);
    v22 = dword_1005DE398;
    v20 = word_1005DE39C;
    v21 = byte_1005DE39E;
  }

  return v30;
}

uint64_t ByteBufferAllocator.buffer(staticString:)(const void *a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = a2;
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3;
  v9 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v10 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a4, a5, a6, a7);
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    ByteBuffer.setStaticString(_:at:)(v9, v8, v7, v11);
    if (!__CFADD__(v11, v12))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    v10 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v11 = HIDWORD(qword_1005DE390);
  }

  return v10;
}

uint64_t ByteBuffer.init<A>(bytes:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = ByteBufferAllocator.buffer<A>(bytes:)(a1, j__malloc, j__realloc, sub_100127C74, sub_100127C84, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t ByteBufferAllocator.buffer<A>(bytes:)(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1004A5AE4();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v14)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v15 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v14, a2, a3, a4, a5);
  swift_beginAccess();
  v16 = 0;
  while (__CFADD__(v16, ByteBuffer.setBytes<A>(_:at:)(a1, v16, a6, a7)))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v15 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v16 = HIDWORD(qword_1005DE390);
  }

  return v15;
}

uint64_t ByteBuffer.init<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = ByteBufferAllocator.buffer<A>(integer:endianness:as:)(a1, a2 & 1, a3, j__malloc, j__realloc, sub_100127C74, sub_100127C84, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t ByteBufferAllocator.buffer<A>(integer:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*(a8 - 8) + 64);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = a8;
  v11 = a3;
  v10 = a2;
  if (!v13)
  {
    if (qword_1005DB9D0 == -1)
    {
LABEL_5:
      v14 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      goto LABEL_6;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v14 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v13, a4, a5, a6, a7);
  swift_beginAccess();
LABEL_6:
  ByteBuffer.writeInteger<A>(_:endianness:as:)(a1, v10 & 1, v11, v9);
  return v14;
}

void *ByteBuffer.init(repeating:count:)(Swift::UInt8 a1, Swift::Int a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = a2;
  v3 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = v5 | HIWORD(v5);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  result = malloc(v9);
  if (result)
  {
    v14 = result;
    type metadata accessor for ByteBuffer._Storage();
    v11 = swift_allocObject();
    v10 = 0;
    *(v11 + 16) = v9;
    *(v11 + 24) = v14;
    *(v11 + 32) = j__malloc;
    *(v11 + 40) = j__realloc;
    *(v11 + 48) = sub_100127C74;
    *(v11 + 56) = sub_100127C84;
    for (i = v2; ; i = 0)
    {
      v15 = v11;
      ByteBuffer.setRepeatingByte(_:count:at:)(v3, v2, v10);
      if (!__CFADD__(v10, i))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v10 = HIDWORD(qword_1005DE390);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(repeating:count:)(Swift::UInt8 a1, Swift::Int a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v7 = a1;
  if (!a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v8 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a2, a3, a4, a5, a6);
  swift_beginAccess();
  v9 = 0;
  for (i = v6; ; i = 0)
  {
    ByteBuffer.setRepeatingByte(_:count:at:)(v7, v6, v9);
    if (!__CFADD__(v9, i))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v8 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v9 = HIDWORD(qword_1005DE390);
  }

  return v8;
}

void *ByteBuffer.init(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      swift_once();
    }

    v19 = qword_1005DE390;
    LODWORD(v7) = dword_1005DE398;
    v8 = word_1005DE39C;
    v9 = byte_1005DE39E;

    v11 = v19;
    goto LABEL_10;
  }

  v12 = (HIDWORD(a2) + ~a2) | ((HIDWORD(a2) + ~a2) >> 1);
  v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
  v14 = v13 | (v13 >> 8) | ((v13 | (v13 >> 8)) >> 16);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v16;
  }

  result = malloc(v7);
  if (result)
  {
    v18 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v8 = 0;
    v9 = 0;
    *(v10 + 16) = v7;
    *(v10 + 24) = v18;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_100127C74;
    *(v10 + 56) = sub_100127C84;
    v11 = 0;
LABEL_10:
    v26 = v10;
    v27 = v11;
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v20 = a1;
    v21 = v4;
    v22 = v6;
    v23 = a3;
    v24 = WORD2(a3);
    v25 = BYTE6(a3);
    ByteBuffer.writeBuffer(_:)(&v20);

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferAllocator.buffer(buffer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v10 = HIDWORD(a2);
  if (HIDWORD(a2) == a2)
  {
    if (qword_1005DB9D0 != -1)
    {
      swift_once();
    }

    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v17 = qword_1005DE390;
    v12 = dword_1005DE398;
    v13 = word_1005DE39C;
    v14 = byte_1005DE39E;

    v15 = v17;
  }

  else
  {
    v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(HIDWORD(a2) - a2, a4, a5, a6, a7);
    swift_beginAccess();
    v13 = 0;
    v14 = 0;
    v12 = *(v11 + 16);
    v15 = 0;
  }

  v24 = v11;
  v25 = v15;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = a1;
  v19 = v8;
  v20 = v10;
  v21 = a3;
  v22 = WORD2(a3);
  v23 = BYTE6(a3);
  ByteBuffer.writeBuffer(_:)(&v18);
  return v24;
}

void *ByteBuffer.init(dispatchData:)(uint64_t a1)
{
  v2 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!v2)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v2)
  {
    v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  result = malloc(v8);
  if (result)
  {
    v12 = result;
    type metadata accessor for ByteBuffer._Storage();
    v10 = swift_allocObject();
    v9 = 0;
    *(v10 + 16) = v8;
    *(v10 + 24) = v12;
    *(v10 + 32) = j__malloc;
    *(v10 + 40) = j__realloc;
    *(v10 + 48) = sub_100127C74;
    *(v10 + 56) = sub_100127C84;
    while (1)
    {
      v15 = v10;
      ByteBuffer.setDispatchData(_:at:)(a1, v9);
      if (!__CFADD__(v9, v13))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_8:
      v9 = HIDWORD(qword_1005DE390);
    }

    v14 = sub_1004A5384();
    (*(*(v14 - 8) + 8))(a1, v14);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferAllocator.buffer(dispatchData:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v10)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v11 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(v10, a2, a3, a4, a5);
  swift_beginAccess();
  v12 = 0;
  while (1)
  {
    ByteBuffer.setDispatchData(_:at:)(a1, v12);
    if (!__CFADD__(v12, v13))
    {
      break;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
LABEL_5:
    v11 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v12 = HIDWORD(qword_1005DE390);
  }

  return v11;
}

void *ByteBuffer.init(from:)(void *a1)
{
  result = sub_1003B5B28(a1);
  if (v1)
  {
    return (v3 & 0xFFFFFFFFFFFFFFLL);
  }

  return result;
}

void *ByteBuffer.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  sub_10002587C(a1, a1[3]);
  result = sub_1004A6F94();
  if (v7 < v5)
  {
    __break(1u);
  }

  else if (a4 - ((WORD2(a4) << 8) | BYTE6(a4)) >= v7)
  {
    v11 = a2;
    v12 = v5;
    v13 = v7;
    v14 = a4;
    v15 = WORD2(a4);
    v16 = BYTE6(a4);
    v17 = v5;
    v18 = v7;
    v9 = swift_beginAccess();
    __chkstk_darwin(v9);

    sub_1004A5904();
    sub_1003A52D0(&v11);
    sub_100025928(v10, v10[3]);
    sub_1004A6D74();

    return sub_1000197E0(v10);
  }

  __break(1u);
  return result;
}

void *sub_1003B4E60@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1003B5B28(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = WORD2(v6);
    *(a1 + 22) = BYTE6(v6);
  }

  return result;
}

void Optional<A>.setOrWriteImmutableBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  v7 = BYTE6(a3);
  v6 = WORD2(a3);
  if (*v3)
  {
    ByteBuffer.writeBuffer(_:)(v4);
  }

  else
  {
    *v3 = a1;
    *(v3 + 8) = a2;
    *(v3 + 16) = a3;
    *(v3 + 22) = BYTE6(a3);
    *(v3 + 20) = WORD2(a3);
  }
}

void Optional<A>.setOrWriteBuffer(_:)(uint64_t a1)
{
  if (*v1)
  {

    ByteBuffer.writeBuffer(_:)(a1);
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 12);
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 22);
    *v1 = *a1;
    *(v1 + 8) = v2 | (v3 << 32);
    *(v1 + 22) = v6;
    *(v1 + 20) = v5;
    *(v1 + 16) = v4;
    *(a1 + 8) = v3;
  }
}

void sub_1003B4FC4(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  v8 = a3 - a2;
  if (a3 < a2)
  {
    v8 += *(a1 + 16);
  }

  v9 = a4 + v8;
  if (!__CFADD__(a4, v8))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v4 + 16);
      v11 = v9 >= v10;
      v12 = v9 - v10;
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
    }

    v15 = sub_10019118C(v8, v4, a4);
    sub_1003B5550(v15, v8, a1, a2, a3, &v31);
    v16 = v33;
    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    if (HIDWORD(v33))
    {
      goto LABEL_32;
    }

    v28 = v32;
    v29 = v31;
    v17 = v34;
    v18 = v38;
    if (v34 == v33 && v35 == 0xFFFF && v36 == 255 && v33 < v32 != v37)
    {
LABEL_24:

      return;
    }

    v27 = v31 + 32;
    while (1)
    {
      v19 = *(v29 + 16);
      if (v19 <= v17)
      {
        break;
      }

      v20 = (v27 + 2 * v17);
      if (v20[1])
      {
        goto LABEL_33;
      }

      v21 = (v19 + 0x1FFFFFFFFLL) & (v17 + 1);
      if (HIDWORD(v21))
      {
        goto LABEL_26;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_27;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_29;
      }

      v23 = *v20;
      v17 = (v19 - 1) & (v17 + 1);
      ByteBuffer._ensureAvailableCapacity(_:at:)(v18 + 1, a4);
      v24 = *v4;
      v25 = *(v4 + 20);
      v26 = *(v4 + 22);
      swift_beginAccess();
      *(*(v24 + 24) + (v26 | (v25 << 8)) + a4 + v18++) = v23;
      if (v21 == v16 && v16 < v28 != v21 >= v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void *sub_1003B51F8(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (result == &type metadata for String.UTF8View)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_1004A59E4();
    v8 = result;
    v9 = a3 + result;
    if (!__CFADD__(a3, result))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = a3 + v8;
  if (__CFADD__(a3, v8))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = *(v3 + 16);
    v11 = v9 >= v10;
    v12 = v9 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
  }

  sub_10019118C(v8, v3, a3);
  result = sub_1004A6734();
  if (v15)
  {
    goto LABEL_18;
  }

  return result;
}

void *sub_1003B52E0(int64_t a1, int a2, Swift::UInt32 a3)
{
  v7 = sub_10000C9C0(&qword_1005DBE28, &qword_1004FF988);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v7 != result)
  {
    v9 = a3 + a1;
    if (!__CFADD__(a3, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v3 + 16);
        v11 = v9 >= v10;
        v12 = v9 - v10;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v13, v14 & 1);
      }

      result = sub_10019118C(a1, v3, a3);
      if (!a1)
      {
        return a1;
      }

      if (a1 >= 1)
      {
        memset(result, a2, a1);
        return a1;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B53B4(char a1, Swift::UInt32 a2)
{
  v5 = sub_10000C9C0(&qword_1005D4B60, &qword_1004E49A8);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v5 == result)
  {
    goto LABEL_10;
  }

  v7 = a2 + 1;
  if (a2 == -1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = *(v2 + 16);
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v11, v12 & 1);
  }

  *sub_10019118C(1uLL, v2, a2) = a1;
  return 1;
}

uint64_t sub_1003B5464(Swift::UInt32 a1)
{
  v3 = sub_10000C9C0(&qword_1005DBE20, &qword_1004FF980);
  result = sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8);
  if (v3 == result)
  {
    __break(1u);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = *(v1 + 16);
      v6 = a1 >= v5;
      v7 = a1 - v5;
      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v8, v9 & 1);
    }

    sub_10019118C(0, v1, a1);
    return 0;
  }

  return result;
}

uint64_t sub_1003B5500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if ((a1 & 0x100000000000000) != 0)
  {
    v5 = v3 - a1 + a2;
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v5;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = a1 - a2 + v3;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

_BYTE *sub_1003B5550@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a5 - a4;
  if (a5 < a4)
  {
    v10 += *(a3 + 16);
  }

  if (v10 > a2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!result)
  {
    if (a4 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (HIDWORD(a4))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = 0;
    goto LABEL_35;
  }

  if (a5 >= a4)
  {
    if (a5 == a4)
    {
LABEL_22:
      if ((a5 & 0x8000000000000000) == 0)
      {
LABEL_29:
        if (HIDWORD(a5))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_30:
        v21 = a5 | ((a5 >= a4) << 56) | 0xFFFFFF00000000;
        result = sub_1003B5894(v21, v21, a3, a4, a5);
        if ((v22 & 0x8000000000000000) != 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (HIDWORD(v22))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v18 = v6 - v7;
        if (v6 < v7)
        {
          v18 += *(v8 + 2);
        }

        v8 = result;
        v7 = v22;
        v6 = v23;
LABEL_35:

        *a6 = v8;
        *(a6 + 8) = v7;
        *(a6 + 16) = v6;
        *(a6 + 24) = v7;
        *(a6 + 28) = 0x1FFFFFF;
        *(a6 + 32) = v18;
        return result;
      }

      __break(1u);
    }

    v19 = (a3 + 2 * a4 + 33);
    v20 = a4;
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (v20 >= *(a3 + 16))
      {
        goto LABEL_38;
      }

      if (*v19)
      {
        goto LABEL_49;
      }

      ++v20;
      *result++ = *(v19 - 1);
      v19 += 2;
      if (a5 == v20)
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = *(a3 + 16);
  v12 = v11 == a4;
  v13 = v11 < a4;
  v14 = v11 - a4;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v12)
  {
    v15 = (a3 + 2 * a4 + 33);
    while ((a4 & 0x8000000000000000) == 0)
    {
      if (*v15)
      {
        goto LABEL_48;
      }

      *result++ = *(v15 - 1);
      v15 += 2;
      if (!--v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_12:
  if (a5 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a5)
  {
    goto LABEL_30;
  }

  v16 = (a3 + 33);
  v17 = a5;
  while ((*v16 & 1) == 0)
  {
    *result++ = *(v16 - 1);
    v16 += 2;
    if (!--v17)
    {
      goto LABEL_22;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_1003B571C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = sub_1004A67E4();
  }

  return sub_1003B593C(v12, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1003B580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = *(v3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v8(&a3[*(TupleTypeMetadata2 + 48)], a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003B5894(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(a4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(a3 + 16);
  if ((result & 0x100000000000000) != 0)
  {
    v6 = 0;
  }

  if (result - a4 + v6 < 0)
  {
    goto LABEL_14;
  }

  if (a5 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 0x1FFFFFF00000000;
  if (a5 < a4)
  {
    v7 = 0xFFFFFF00000000;
  }

  result = sub_1003B5500(a2 & 0x1FFFFFFFFFFFFFFLL, v7 | a5, a3);
  if ((result & 0x8000000000000000) == 0)
  {
    return a3;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1003B593C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a2 & 0xC;
  v13 = a2;
  if (v12 == v11)
  {
    v27 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10010C210(a2, a4, a5);
    a2 = v27;
    a3 = v15;
    a5 = v16;
    v13 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = v13 >> 16;
      if (v12 != v11)
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

  v28 = a2;
  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_34;
  }

  v18 = a3;
  v19 = a5;
  result = sub_1004A5A14();
  a5 = v19;
  v14 = result;
  a3 = v18;
  a2 = v28;
  if (v12 == v11)
  {
LABEL_14:
    v20 = a3;
    v21 = a5;
    result = sub_10010C210(a2, a4, a5);
    a3 = v20;
    a5 = v21;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v11)
  {
    v22 = a2;
    v23 = a5;
    result = sub_10010C210(a3, a4, a5);
    a2 = v22;
    a5 = v23;
    a3 = result;
    if ((v23 & 0x1000000000000000) == 0)
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

  v24 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 < a2 >> 16)
  {
    goto LABEL_32;
  }

  if (v24 < a3 >> 16)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  result = sub_1004A5A14();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v14 + result) < v14)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v9)
  {
    v25 = v9 + v14 + result;
  }

  else
  {
    v25 = 0;
  }

  if (v9)
  {
    v26 = (v9 + v14);
  }

  else
  {
    v26 = 0;
  }

  ByteBuffer._setBytes(_:at:)(v26, v25, a7);
  return result;
}

void *sub_1003B5B28(void *a1)
{
  v3 = sub_10002587C(a1, a1[3]);
  sub_1004A6F74();
  if (!v1)
  {
    sub_10002587C(v8, v8[3]);
    v4 = sub_1004A6D54();
    v7 = static Base64.decode(string:options:)(v4, v5, 0);

    v3 = sub_1003F5A98(v7, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

    sub_1000197E0(v8);
  }

  sub_1000197E0(a1);
  return v3;
}

int64_t ByteBuffer.rangeWithinReadableBytes(index:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a4;
  if ((HIDWORD(a4) - a4) - a2 < v4)
  {
    v4 = 0;
  }

  if (a2 < 0)
  {
    v4 = 0;
  }

  if (a1 >= a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ByteBuffer.withUnsafeReadableBytes<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4));
}

Swift::Void __swiftcall ByteBuffer._moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer._moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v4;
  }
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 12) >= v4)
  {
    *(v1 + 8) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < a1)
  {
    v2 = a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v2, 0);
    }

    else
    {
      v3 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v2, v3);
    }
  }
}

uint64_t ByteBuffer.withVeryUnsafeMutableBytes<A>(_:)(uint64_t (*a1)(void, void, __n128))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  return (a1)(*(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
}

uint64_t ByteBuffer.withUnsafeMutableReadableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *v1;
  v6 = *(v1 + 10);
  v7 = *(v1 + 22);
  swift_beginAccess();
  v8 = *(v5 + 24) + (v7 | (v6 << 8));
  return a1(v8 + v3, v8 + v4);
}

uint64_t ByteBuffer.getSlice(at:length:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && (a2 & 0x8000000000000000) == 0 && a4 <= a1)
  {
    result = 0;
    if (HIDWORD(a4) >= a2 && (HIDWORD(a4) - a2) >= a1)
    {
      v7 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
      v8 = __CFADD__(v7, a1);
      v9 = v7 + a1;
      if (v8)
      {
        __break(1u);
      }

      else if (HIBYTE(v9))
      {
        return ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(a1, a2, a3);
      }

      else
      {

        return a3;
      }
    }
  }

  return result;
}

uint64_t *ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  return &static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
}

uint64_t ByteBufferAllocator.buffer(capacity:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a1)
  {
    if (qword_1005DB9D0 == -1)
    {
LABEL_5:
      v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;

      return v5;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a1, a2, a3, a4, a5);
  swift_beginAccess();
  return v5;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(to:)(Swift::Int to)
{
  if (*(v1 + 12) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = to;
  }
}

BOOL sub_1003B62BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6);
}

uint64_t _ByteBufferSlice._begin.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

unint64_t _ByteBufferSlice.description.getter()
{
  sub_1004A6724(28);

  v1._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v1);

  v2._countAndFlagsBits = 3943982;
  v2._object = 0xE300000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1004A5994(v4);
  return 0xD000000000000013;
}

uint64_t ByteBuffer.init(allocator:startingCapacity:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(a5, a1, a2, a3, a4);
  swift_beginAccess();
  return v5;
}

_DWORD *sub_1003B64E8()
{
  result = malloc(0);
  if (result)
  {
    v1 = result;
    type metadata accessor for ByteBuffer._Storage();
    result = swift_allocObject();
    result[4] = 0;
    *(result + 3) = v1;
    *(result + 4) = j__malloc;
    *(result + 5) = j__realloc;
    *(result + 6) = sub_100127C74;
    *(result + 7) = sub_100127C84;
    static ByteBufferAllocator.zeroCapacityWithDefaultAllocator = result;
    qword_1005DE390 = 0;
    *(&qword_1005DE390 + 7) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ByteBufferAllocator.zeroCapacityWithDefaultAllocator.getter()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }
}

uint64_t ByteBuffer._slice.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  *(v1 + 22) = BYTE6(result);
  return result;
}

uint64_t ByteBuffer._Storage.__allocating_init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t ByteBuffer._Storage.init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t ByteBuffer._Storage.deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return v0;
}

uint64_t ByteBuffer._Storage.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v1(*(v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t static ByteBuffer._Storage._allocateAndPrepareRawMemory(bytes:allocator:)(unsigned int a1, uint64_t (*a2)(void))
{
  result = a2(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.allocateStorage(capacity:)(int a1)
{
  if (a1)
  {
    v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
    v4 = v3 | HIWORD(v3);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 32);
  result = v8(v7);
  if (result)
  {
    v10 = result;
    v11 = *(v1 + 56);
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v10;
    *(result + 32) = v8;
    *(result + 40) = *(v1 + 40);
    *(result + 56) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(unint64_t a1, int a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = ByteBuffer._Storage.allocateStorage(capacity:)(a2);
  v6 = *(v2 + 56);
  swift_beginAccess();
  v7 = *(v5 + 24);
  swift_beginAccess();
  if (v4 < v3)
  {
    v8 = -(v3 - v4);
  }

  else
  {
    v8 = v4 - v3;
  }

  v6(v7, *(v2 + 24) + v3, v8);
  return v5;
}

Swift::Void __swiftcall ByteBuffer._Storage.reallocStorage(capacity:)(Swift::UInt32 capacity)
{
  if (capacity)
  {
    v2 = (capacity - 1) | ((capacity - 1) >> 1) | (((capacity - 1) | ((capacity - 1) >> 1)) >> 2);
    v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
    v4 = v3 | HIWORD(v3);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 40);
  swift_beginAccess();
  v9 = v8(*(v1 + 24), v7);
  if (v9)
  {
    *(v1 + 24) = v9;
    swift_beginAccess();
    *(v1 + 16) = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B6B2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  swift_beginAccess();
  v7 = (a1 >> 24) & 0xFFFF00 | BYTE6(a1);
  v8 = v7 + a2;
  if (__OFADD__(v7, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8 + a3;
  if (__OFADD__(v8, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 < v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 == v9)
  {
LABEL_15:
    v20._countAndFlagsBits = 23840;
    v20._object = 0xE200000000000000;
    sub_1004A5994(v20);
    return;
  }

  if (v8 < v9)
  {
    v10 = *(v3 + 16);
    while (v8 < v10)
    {
      ++v8;
      sub_10014F900();
      v11 = sub_1004A5A84();
      v13 = v12;
      v14 = sub_1004A5924();
      v15 = v14 == 1;
      if (v14 == 1)
      {
        v16._countAndFlagsBits = 48;
      }

      else
      {
        v16._countAndFlagsBits = 0;
      }

      if (v15)
      {
        v17 = 0xE100000000000000;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      v16._object = v17;
      sub_1004A5994(v16);

      v18._countAndFlagsBits = v11;
      v18._object = v13;
      sub_1004A5994(v18);

      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      sub_1004A5994(v19);

      if (!--a3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v4 = *(v2 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 22) | (*(v2 + 10) << 8);
  v6 = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6 + capacity;
  if (__CFADD__(v6, capacity))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *(v2 + 4))
  {
    v7 = *(v2 + 4);
  }

  v8 = v7 - v6;
  if (v7 < v6)
  {
    goto LABEL_16;
  }

  v9 = *v2;
  v10 = ByteBuffer._Storage.allocateStorage(capacity:)(capacity);
  v11 = *(v9 + 56);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_beginAccess();
  v11(v12, *(v9 + 24) + v6, v8);

  *v3 = v10;
  v13 = *(v3 + 2);
  v14 = v13 >= v4;
  v15 = v13 - v4;
  if (!v14)
  {
    goto LABEL_17;
  }

  *(v3 + 2) = v15;
  v16 = *(v3 + 3);
  v14 = v16 >= v4;
  v17 = v16 - v4;
  if (v14)
  {
    *(v3 + 3) = v17;
    swift_beginAccess();
    *(v3 + 4) = *(v10 + 16);
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    return;
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(Swift::UInt32 extraCapacity, Swift::Bool resetIndices)
{
  v3 = *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8));
  v4 = __CFADD__(v3, extraCapacity);
  v5 = v3 + extraCapacity;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, resetIndices);
  }
}

Swift::Void __swiftcall ByteBuffer._ensureAvailableCapacity(_:at:)(Swift::UInt32 _, Swift::UInt32 at)
{
  v3 = *(v2 + 10);
  v4 = *(v2 + 22);
  v5 = v4 | (v3 << 8);
  v6 = v5 + at;
  if (__CFADD__(v5, at))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6 + _;
  if (__CFADD__(v6, _))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v2 + 4);
  if (v8 >= v7)
  {
    return;
  }

  v11 = *v2;
  v12 = swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 < v7)
  {
    v12 = at + _;
    if (!__CFADD__(at, _))
    {
      if (v5)
      {
        v14 = v8 - v5;
        if (v8 >= v5)
        {
          v15 = v2;
          v16 = ByteBuffer._Storage.allocateStorage(capacity:)(v12);
          v17 = *(v11 + 56);
          swift_beginAccess();
          v18 = *(v16 + 24);
          swift_beginAccess();
          v17(v18, *(v11 + 24) + v5, v14);

          v2 = v15;
          *v15 = v16;
          v11 = v16;
LABEL_12:
          swift_beginAccess();
          LOWORD(v3) = 0;
          LOBYTE(v4) = 0;
          v13 = *(v11 + 16);
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_11:
      ByteBuffer._Storage.reallocStorage(capacity:)(v12);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  *(v2 + 4) = v13;
  *(v2 + 10) = v3;
  *(v2 + 22) = v4;
}

void ByteBuffer._setBytes(_:at:)(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + v4;
  if (__CFADD__(a3, v4))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v3 + 16);
    v10 = v5 >= v9;
    v11 = v5 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (!HIDWORD(v4))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(v4, v6);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a2, v6);
    return;
  }

LABEL_15:
  __break(1u);
}

char *ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(const void *a1, uint64_t a2, unsigned int a3)
{
  v7 = *v3;
  v8 = *(v3 + 4);
  v9 = *(v3 + 10);
  v10 = *(v3 + 22);
  swift_beginAccess();
  result = sub_1003B7140(a3, *(v7 + 24) + (v10 | (v9 << 8)), *(v7 + 24) + (v10 | (v9 << 8)) + v8 - (v10 | (v9 << 8)));
  if (v12)
  {
    v13 = a1 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    return memmove(&result[v12], a1, a2 - a1);
  }

  return result;
}

unint64_t sub_1003B7140(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1002881FC(0, v6, a2, a3);
  if (!v4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_12:
    if (v5 >= v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (result < v4)
  {
    v4 = v5;
    if (a2)
    {
      return v4;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void ByteBuffer._setSlowPath<A>(bytes:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v31 = &v29 - v10;
  if (sub_10000C9C0(&qword_1005D2F28, &qword_1004DC8D8) == a3)
  {
    v19 = *a1;
    v20 = a1[1];
    v21 = a1[2];

    sub_1003B4FC4(v19, v20, v21, a2);
  }

  else
  {
    v11 = sub_1004A5AE4();
    v12 = a2 + v11;
    if (!__CFADD__(a2, v11))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v5 + 16);
        v14 = v12 >= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v16, v17 & 1);
      }

      v30 = v9;
      sub_10019118C(v11, v5, a2);
      v18 = sub_1004A6384();
      swift_getAssociatedConformanceWitness();
      sub_1004A6414();
      if (v34 == 1)
      {
LABEL_18:
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        return;
      }

      v22 = a2;
      v23 = a2;
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (HIDWORD(v24))
        {
          goto LABEL_21;
        }

        v25 = v33;
        ByteBuffer._ensureAvailableCapacity(_:at:)(v18 + 1, v22);
        v26 = *v5;
        v27 = *(v5 + 20);
        v28 = *(v5 + 22);
        swift_beginAccess();
        *(*(v26 + 24) + (v28 | (v27 << 8)) + v23 + v18) = v25;
        sub_1004A6414();
        ++v18;
        if (v34 == 1)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }
}

void ByteBuffer._setBytes<A>(_:at:)(uint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  sub_1004A5AF4();
  if (v8)
  {
    ByteBuffer._setSlowPath<A>(bytes:at:)(a1, a2, a3, a4);
  }
}

Swift::Void __swiftcall ByteBuffer.reserveCapacity(minimumWritableBytes:)(Swift::Int minimumWritableBytes)
{
  v2 = *(v1 + 12);
  v3 = v2 + minimumWritableBytes;
  if (__OFADD__(v2, minimumWritableBytes))
  {
    __break(1u);
  }

  else if (v3 > *(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, 0);
    }

    else
    {
      v4 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v3, v4);
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebaseIfNeeded()()
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = variable initialization expression of Engine.isProcessingUpdates();
    v1 = variable initialization expression of Engine.isProcessingUpdates() & 1;

    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v0, v1);
  }
}

uint64_t ByteBuffer.withUnsafeMutableWritableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  v7 = sub_1003B7140(*(v1 + 3), *(v3 + 24) + (v6 | (v5 << 8)), *(v3 + 24) + (v6 | (v5 << 8)) + v4 - (v6 | (v5 << 8)));
  if (v9)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9 + v7;
  }

  else
  {
    v11 = 0;
  }

  return a1(v11, v10);
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(minimumWritableBytes:_:)(Swift::Int a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 >= 1)
  {
    ByteBuffer.reserveCapacity(minimumWritableBytes:)(a1);
  }

  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v6 = *v2;
  v7 = *(v4 + 4);
  v8 = *(v4 + 10);
  v9 = *(v4 + 22);
  swift_beginAccess();
  v10 = v9 | (v8 << 8);
  v11 = (v7 - v10);
  v12 = *(v4 + 3);
  v13 = sub_1003B7140(v12, *(v6 + 24) + v10, *(v6 + 24) + v10 + v11);
  if (v15)
  {
    v16 = v15 + v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15 + v13;
  }

  else
  {
    v17 = 0;
  }

  result = a2(v17, v16);
  if (!v3)
  {
    if (__CFADD__(v12, result))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 3) = v12 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.writeWithUnsafeMutableBytes(_:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1;
  ByteBuffer._copyStorageAndRebaseIfNeeded()();
  v5 = *v1;
  v6 = *(v3 + 4);
  v7 = *(v3 + 10);
  v8 = *(v3 + 22);
  swift_beginAccess();
  v9 = v8 | (v7 << 8);
  v10 = (v6 - v9);
  v11 = *(v3 + 3);
  v12 = sub_1003B7140(v11, *(v5 + 24) + v9, *(v5 + 24) + v9 + v10);
  if (v14)
  {
    v15 = v14 + v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14 + v12;
  }

  else
  {
    v16 = 0;
  }

  result = a1(v16, v15);
  if (!v2)
  {
    if (__CFADD__(v11, result))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 3) = v11 + result;
    }
  }

  return result;
}

uint64_t ByteBuffer.withVeryUnsafeBytes<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8));
}

uint64_t ByteBuffer.withUnsafeReadableBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5));
  return a1(v9 + a4, v9 + HIDWORD(a4), a3);
}

uint64_t ByteBuffer.withVeryUnsafeBytesWithStorageManagement<A>(_:)(uint64_t (*a1)(unint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  v8 = (a5 >> 24) & 0xFFFF00 | BYTE6(a5);
  return a1(*(a3 + 24) + v8, *(a3 + 24) + v8 + (a5 - v8), a3);
}

uint64_t ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(uint64_t result, Swift::UInt32 a2, uint64_t a3)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {

    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(a2, 1);
    return a3;
  }

  return result;
}

Swift::Bool __swiftcall ByteBuffer.discardReadBytes()()
{
  v1 = *(v0 + 2);
  if (!v1)
  {
    return v1 != 0;
  }

  v2 = *(v0 + 3);
  if (v1 == v2)
  {
    v0[1] = 0;
    return v1 != 0;
  }

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(0, 1);
    return v1 != 0;
  }

  v3 = *v0;
  result = swift_beginAccess();
  v5 = *(v0 + 22) | (*(v0 + 10) << 8);
  if (__CFADD__(v5, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = v2 >= v1;
    v8 = v2 - v1;
    v9 = !v7;
    result = memmove((v6 + v5), (v6 + v5 + v1), v8);
    *(v0 + 2) = 0;
    if ((v9 & 1) == 0)
    {
      *(v0 + 3) = v8;
      return v1 != 0;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.clear()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v4 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v3 + 16));

    *v1 = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v1 + 4) = *(v3 + 16);
  *(v1 + 10) = 0;
  *(v1 + 22) = 0;
  v1[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::UInt32 minimumCapacity)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    if (*(v5 + 16) < minimumCapacity)
    {
      ByteBuffer._Storage.reallocStorage(capacity:)(minimumCapacity);
    }
  }

  else
  {
    v6 = ByteBuffer._Storage.allocateStorage(capacity:)(minimumCapacity);

    *v2 = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v2 + 4) = *(v5 + 16);
  *(v2 + 10) = 0;
  *(v2 + 22) = 0;
  v2[1] = 0;
}

Swift::Void __swiftcall ByteBuffer.clear(minimumCapacity:)(Swift::Int minimumCapacity)
{
  if (HIDWORD(minimumCapacity))
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = minimumCapacity;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      swift_beginAccess();
      if (*(v5 + 16) < v3)
      {
        ByteBuffer._Storage.reallocStorage(capacity:)(v3);
      }
    }

    else
    {
      v6 = ByteBuffer._Storage.allocateStorage(capacity:)(v3);

      *v2 = v6;
      v5 = v6;
    }

    swift_beginAccess();
    *(v2 + 4) = *(v5 + 16);
    *(v2 + 10) = 0;
    *(v2 + 22) = 0;
    v2[1] = 0;
  }
}

uint64_t ByteBuffer.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6724(136);
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001004B0530;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v5);

  v6._countAndFlagsBits = 0x726574697277202CLL;
  v6._object = 0xEF203A7865646E49;
  sub_1004A5994(v6);
  v7._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v7);

  v8._object = 0x80000001004B0550;
  v8._countAndFlagsBits = 0xD000000000000011;
  sub_1004A5994(v8);
  v9._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v9);

  v10._countAndFlagsBits = 0x696361706163202CLL;
  v10._object = 0xEC000000203A7974;
  sub_1004A5994(v10);
  v11._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x80000001004B0570;
  sub_1004A5994(v12);
  swift_beginAccess();
  v13._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 0x3A6563696C73202CLL;
  v14._object = 0xE900000000000020;
  sub_1004A5994(v14);
  v15._countAndFlagsBits = _ByteBufferSlice.description.getter();
  sub_1004A5994(v15);

  v16._countAndFlagsBits = 0x6761726F7473202CLL;
  v16._object = 0xEB00000000203A65;
  sub_1004A5994(v16);
  swift_beginAccess();
  sub_1004A6934();
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  sub_1004A5994(v17);
  v18._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v18);

  v19._countAndFlagsBits = 0x2029736574796220;
  v19._object = 0xE90000000000007DLL;
  sub_1004A5994(v19);
  return 0;
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  sub_1004A6724(30);
  v7 = ByteBuffer.description.getter(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);

  v10._object = 0x80000001004B0590;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1004A5994(v10);
  if ((v6 - a2) >= 0x400uLL)
  {
    v8 = 1024;
  }

  else
  {
    v8 = (v6 - a2);
  }

  sub_1003B6B2C(a3 & 0xFFFFFFFFFFFFFFLL, a2, v8);
  sub_1004A5994(v11);

  return v7;
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) >= v4)
  {
    *(v1 + 12) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(to:)(Swift::Int to)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = to;
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ByteBuffer.copyBytes(at:to:length:)(Swift::Int at, Swift::Int to, Swift::Int length)
{
  if (length < 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = length;
  if (!length)
  {
    return v4;
  }

  if (*(v3 + 2) > at)
  {
LABEL_6:
    v6 = 1;
LABEL_8:
    sub_1003B87E8();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    return v4;
  }

  if (__OFADD__(at, length))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v3 + 3);
  if (at + length > v5)
  {
    goto LABEL_6;
  }

  v9 = at;
  at = swift_isUniquelyReferenced_nonNull_native();
  if (at)
  {
LABEL_15:
    if (!HIDWORD(v4))
    {
      v11 = to;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v4, to);
      ByteBuffer._copyStorageAndRebaseIfNeeded()();
      v12 = *v3;
      v13 = *(v3 + 4);
      v14 = *(v3 + 10);
      v15 = *(v3 + 22);
      swift_beginAccess();
      v16 = v15 | (v14 << 8);
      v17 = *(v12 + 24) + v16;
      v18 = sub_1003B7140(v11, v17, v17 + (v13 - v16));
      if (v19)
      {
        memmove((v19 + v18), (v17 + v9), v4);
      }

      return v4;
    }

    goto LABEL_19;
  }

  if (!__OFADD__(to, v4))
  {
    if (v5 <= to + v4)
    {
      LODWORD(v5) = to + v4;
    }

    v10 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v10 & 1);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return at;
}

Swift::Int QuotaRoot.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  swift_beginAccess();
  sub_1004A6EA4();
  return sub_1004A6F14();
}

Swift::Int sub_1003B8664(uint64_t a1)
{
  sub_1004A6E94();
  swift_beginAccess();
  sub_1004A6EA4();
  return sub_1004A6F14();
}

uint64_t ByteBuffer.modifyIfUniquelyOwned<A>(_:)@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a1(v3);
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v9, 1, a2);
}

void sub_1003B8798(const void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a1)
  {
    v5 = a1 + a2;
  }

  else
  {
    v5 = 0;
  }

  ByteBuffer._setBytes(_:at:)(a1, v5, *(v3 + 24));
  *a3 = v6;
}

unint64_t sub_1003B87E8()
{
  result = qword_1005DBE30;
  if (!qword_1005DBE30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBuffer.CopyBytesError, &type metadata for ByteBuffer.CopyBytesError, v0, v1);
    atomic_store(result, &qword_1005DBE30);
  }

  return result;
}

unint64_t sub_1003B8840()
{
  result = qword_1005DBE38;
  if (!qword_1005DBE38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBuffer.CopyBytesError, &type metadata for ByteBuffer.CopyBytesError, v0, v1);
    atomic_store(result, &qword_1005DBE38);
  }

  return result;
}

unint64_t sub_1003B8898()
{
  result = qword_1005DBE40;
  if (!qword_1005DBE40)
  {
    result = swift_getWitnessTable("Yr\b", &type metadata for ByteBuffer, v0, v1);
    atomic_store(result, &qword_1005DBE40);
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for _ByteBufferSlice(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ByteBufferSlice(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ByteBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
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

  *(result + 7) = v3;
  return result;
}

__n128 sub_1003B8970(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1003B8984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 23))
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

uint64_t sub_1003B89CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 23) = 1;
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

    *(result + 23) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B8A6C()
{
  result = qword_1005DBEF8;
  if (!qword_1005DBEF8)
  {
    result = swift_getWitnessTable(byte_1004FFCB4, &type metadata for ByteBuffer.CopyBytesError.BaseError, v0, v1);
    atomic_store(result, &qword_1005DBEF8);
  }

  return result;
}

uint64_t ByteBuffer.setInteger<A>(_:at:endianness:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v11 = sub_1004A6974();
  }

  else
  {
    v11 = sub_1004A6994();
  }

  __chkstk_darwin(v11);
  v15 = a2;
  v14 = 803;
  sub_1003B93AC(v9, sub_1003B9364, &v16[-4], a5, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v12);
  (*(v7 + 8))(v9, a5);
  return v16[2];
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.setInteger<A>(_:at:endianness:as:)(a1, *(v4 + 12), a2 & 1, a4, a4);
  v6 = *(v4 + 12);
  v7 = __CFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v8;
  }

  return result;
}

Swift::UInt32 __swiftcall UInt32.nextPowerOf2ClampedToMax()()
{
  if (!v0)
  {
    return 1;
  }

  v1 = (v0 - 1) | ((v0 - 1) >> 1) | (((v0 - 1) | ((v0 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | HIWORD(v2);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(__n128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return sub_1004A6974();
  }

  else
  {
    return sub_1004A6994();
  }
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1004A6374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *(v3 + 8);
  ByteBuffer.getInteger<A>(at:endianness:as:)(v10, v10 | (*(v3 + 12) << 32), *(v3 + 16) | (*(v3 + 20) << 32) | (*(v3 + 22) << 48), a2, &v17 - v8);
  v11 = *(a2 - 1);
  if ((*(v11 + 48))(v9, 1, a2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v12 = 1;
    return (*(v11 + 56))(a3, v12, 1, a2);
  }

  result = (*(v11 + 32))(a3, v9, a2);
  v14 = *(v11 + 64);
  v15 = __CFADD__(v10, v14);
  v16 = v10 + v14;
  if (!v15)
  {
    v12 = 0;
    *(v3 + 8) = v16;
    return (*(v11 + 56))(a3, v12, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, void *a4@<X6>, uint64_t a5@<X8>)
{
  v7 = *(a4 - 1);
  v8 = *(v7 + 64);
  if (a1 < a2 || v8 < 0 || (HIDWORD(a2) - a2) - v8 < a1 - a2)
  {
    v9 = *(v7 + 56);

    return v9(a5, 1, 1, a4);
  }

  else
  {
    v40 = v5;
    v41 = v6;
    if (a4 == &type metadata for UInt8)
    {
      v39 = v7;
      __chkstk_darwin(a1);
      v35 = &type metadata for UInt8;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v30 = v29;
      ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B94E8, v34, v31, v32, v28 & 0xFFFFFFFFFFFFFFLL);
      return (*(v39 + 56))(v30, 0, 1, &type metadata for UInt8);
    }

    else
    {
      __chkstk_darwin(HIDWORD(a3));
      v33[2] = v11;
      v33[3] = v12;
      v34[0] = v13;
      v34[1] = v14;
      v35 = v15;
      v36 = __PAIR64__(v17, v16);
      LODWORD(v37) = v18;
      WORD2(v37) = v19;
      BYTE6(v37) = v20;
      HIBYTE(v37) = v21 & 1;
      v22 = v16;
      v23 = v15;
      v24 = v18;
      sub_1004A6374();
      return ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1003B94A0, v33, v23, v22, v24 & 0xFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t sub_1003B90D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v19 = a4;
  v20 = a5;
  v17 = a2;
  v18 = a3;
  v21 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = *(a7 - 8);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_1004A6DE4();
  sub_1004A6D04();
  v23 = a1;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  sub_1003B93AC(v13, sub_1003B9FA4, v22, a7, &type metadata for Never, (&type metadata for () + 1), &protocol witness table for Never, v14);
  v15 = v21;
  if (v20)
  {
    sub_1004A6974();
  }

  else
  {
    sub_1004A6994();
  }

  (*(v10 + 8))(v13, a7);
  return (*(v10 + 56))(v15, 0, 1, a7);
}

uint64_t sub_1003B93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void FixedWidthInteger.nextPowerOf2()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v36 = *(v7 + 24);
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = *(a1 - 8);
  __chkstk_darwin(v12);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v34 = &v30 - v15;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = sub_1004A64B4();
  v38 = a3;
  if ((v19 & 1) == 0)
  {
    v20 = v11;
    v21 = sub_1004A64B4();
    v22 = sub_1004A64A4();
    if (v21)
    {
      if (v22 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_1004A6DE4();
        sub_1004A6D04();
        v23 = sub_1004A5644();
        v11 = v20;
        (*(v20 + 8))(v18, a1);
        if ((v23 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }
    }

    else if (v22 < 64)
    {
      v11 = v20;
      if (!sub_1004A6494())
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v39 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v29 = sub_1004A5724();
    v11 = v20;
    (*(v20 + 8))(v18, a1);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    sub_1004A6D04();
    return;
  }

  if (sub_1004A64A4() >= 64)
  {
    v39 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v24 = sub_1004A5724();
    (*(v11 + 8))(v18, a1);
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_3:
  if (!sub_1004A6494())
  {
    goto LABEL_16;
  }

LABEL_10:
  v30 = v7;
  swift_getAssociatedConformanceWitness();
  v32 = v4;
  sub_1004A6DE4();
  sub_1004A6D04();
  v31 = sub_1004A6964();
  sub_1004A6DE4();
  v25 = v33;
  sub_1004A6D04();
  v26 = v34;
  sub_1004A69C4();
  v27 = *(v11 + 8);
  v27(v25, a1);
  v28 = sub_1004A6984();
  v27(v26, a1);
  if (__OFSUB__(v31, v28))
  {
    __break(1u);
  }

  else
  {
    v39 = v31 - v28;
    sub_1001C08B0();
    sub_1004A6484();
    v27(v18, a1);
  }
}

void FixedWidthInteger.previousPowerOf2()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v16[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = *(a1 - 8);
  __chkstk_darwin(v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004A64B4())
  {
    if (sub_1004A64A4() >= 64)
    {
LABEL_13:
      v17 = 0;
      sub_1001C08B0();
      sub_1004A6474();
      v15 = sub_1004A5724();
      (*(v5 + 8))(v8, a1);
      if (v15)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = sub_1004A64B4();
    v10 = sub_1004A64A4();
    if (v9)
    {
      if (v10 > 64)
      {
        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v11 = sub_1004A5644();
      (*(v5 + 8))(v8, a1);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v10 >= 64)
    {
      goto LABEL_13;
    }
  }

  if (!sub_1004A6494())
  {
LABEL_14:
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    sub_1004A6D04();
    return;
  }

LABEL_10:
  swift_getAssociatedConformanceWitness();
  sub_1004A6DE4();
  sub_1004A6D04();
  v12 = sub_1004A6964();
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1004A6984();
    if (!__OFSUB__(v13, v14))
    {
      v17 = v13 - v14;
      sub_1001C08B0();
      sub_1004A6484();
      (*(v5 + 8))(v8, a1);
      return;
    }
  }

  __break(1u);
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_1005DB9D8 != -1)
  {
    swift_once();
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_1005DB9D8 != -1)
  {
    swift_once();
  }

  return static Endianness.host;
}

unint64_t sub_1003B9F40()
{
  result = qword_1005DBF00;
  if (!qword_1005DBF00)
  {
    result = swift_getWitnessTable("yp\b", &type metadata for Endianness, v0, v1);
    atomic_store(result, &qword_1005DBF00);
  }

  return result;
}

void *sub_1003B9FA4(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t ByteBuffer.readableBytesView.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BA02C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 >= a4 && (HIDWORD(a4) - a4) - 2 >= a1 - a4)
  {
    swift_beginAccess();
    v6 = 0;
    v5 = *(*(a3 + 24) + ((a5 >> 24) & 0xFFFF00 | BYTE6(a5)) + a1);
    v11 = bswap32(v5) >> 16;
    if ((a2 & 1) == 0)
    {
      LOWORD(v5) = v11;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 16);
}

uint64_t QuotaRoot.storage.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0 || (a3 - (BYTE6(a3) | (a3 >> 24) & 0xFFFF00)) < a5)
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 20) = WORD2(a3);
    *(a6 + 22) = BYTE6(a3);
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
  }

  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1003BA25C(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  swift_beginAccess();
  v7 = a1[3];
  v8 = a1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else if (v8 != v7)
  {
    v9 = (*(v4 + 24) + (v6 | (v5 << 8)) + v7);
    v10 = ~v7 + v8;
    do
    {
      v11 = *v9++;
    }

    while (v11 != a2 && v10-- != 0);
  }
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 20);
  v9 = *(v3 + 22);
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  return ByteBuffer.withVeryUnsafeBytes<A>(_:)(sub_1003BD190, v11, v5, v6, v7 | (v8 << 32) | (v9 << 48));
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = *(v1 + 2);
  if (result < v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result - v4 < (*(v1 + 3) - v4))
  {
    v5 = *v1;
    v6 = *(v1 + 10);
    v7 = *(v1 + 22);
    swift_beginAccess();
    return *(*(v5 + 24) + (v7 | (v6 << 8)) + v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

char *ByteBufferView.subscript.setter(char a1, uint64_t a2)
{
  if (*(v2 + 24) > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = a2;
  if (*(v2 + 32) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v11 = a1;
  v4 = a2 + 1;
  if (a2 == -1)
  {
    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v2 + 16);
    v6 = v4 >= v5;
    v7 = v4 - v5;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v8, v9 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v3);
  return ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v11, &v12, v3);
}

uint64_t (*ByteBufferView.subscript.modify(uint64_t (**a1)(), uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 3) = a2;
  *(result + 4) = v2;
  if (v2[3] > a2 || v2[4] <= a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v2 + 2);
  if (a2 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 - v7 < (*(v2 + 3) - v7))
  {
    v8 = *v2;
    v9 = *(v2 + 10);
    v10 = *(v2 + 22);
    swift_beginAccess();
    *(v6 + 40) = *(*(v8 + 24) + (v10 | (v9 << 8)) + a2);
    return sub_1003BA5D4;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1003BA5D4(uint64_t a1)
{
  v1 = *a1;
  ByteBufferView.subscript.setter(*(*a1 + 40), *(*a1 + 24));

  free(v1);
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0 || (v6 = *(v3 + 16), v7 = *(v3 + 20), v8 = *(v3 + 22), v6 - (v8 | (v7 << 8)) < a2))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v11 = *v3;
    result = sub_1003BD79C(v3, v10);
    *a3 = v11;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 22) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = a2;
  }

  return result;
}

uint64_t ByteBufferView.subscript.setter(uint64_t *a1, Swift::Int a2, Swift::Int at)
{
  sub_1003BA6F0(a2, at, a1);

  return sub_1003A52D0(a1);
}

char *sub_1003BA6F0(Swift::Int a1, Swift::Int at, uint64_t *a3)
{
  v4 = *(v3 + 24);
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_51;
  }

  v5 = *(v3 + 32);
  if (v5 < at)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v8 = a3[3];
  v7 = a3[4];
  v9 = v7 - v8;
  v10 = __OFSUB__(v7, v8);
  v11 = at - a1;
  if (__OFSUB__(at, a1))
  {
    goto LABEL_52;
  }

  if (v9 == v11)
  {
    v12 = *a3;
    v13 = *(a3 + 10);
    v14 = *(a3 + 22);
    swift_beginAccess();
    if (!v10)
    {
      v15 = a1 + v9;
      if (!__CFADD__(a1, v9))
      {
        v16 = *(v12 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v3 + 16);
          v18 = v15 >= v17;
          v19 = v15 - v17;
          if (v18)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v20, v21 & 1);
        }

        if (v9 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
          return ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v14 | (v13 << 8)) + v8), v16 + (v14 | (v13 << 8)) + v8 + v9, a1);
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v9 >= v11)
  {
    if (!__OFADD__(a1, v9))
    {
      v38 = *(v3 + 12);
      v35 = __OFSUB__(v38, at);
      v39 = v38 - at;
      if (!v35)
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v39);
        if (v41)
        {
LABEL_74:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_75;
        }

        v42 = *a3;
        v58 = *(a3 + 10);
        v43 = *(a3 + 22);
        swift_beginAccess();
        if (!v10)
        {
          atb = v43;
          v44 = a1 + v9;
          if (!__CFADD__(a1, v9))
          {
            v45 = *(v42 + 24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = *(v3 + 16);
              v18 = v44 >= v46;
              v47 = v44 - v46;
              if (v18)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              v49 = variable initialization expression of Engine.isProcessingUpdates();
              ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v48, v49 & 1);
            }

            if (v9 <= 0xFFFFFFFFLL)
            {
              ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
              result = ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v45 + (atb | (v58 << 8)) + v8), v45 + (atb | (v58 << 8)) + v8 + v9, a1);
              v50 = v9 - v11;
              if (!__OFSUB__(v9, v11))
              {
                v51 = *(v3 + 12);
                v18 = __CFADD__(v51, v50);
                v52 = v51 + v50;
                if (!v18)
                {
                  if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v52)
                  {
                    *(v3 + 12) = v52;
                    v35 = __OFADD__(v5, v50);
                    v53 = v5 + v50;
                    if (!v35)
                    {
                      if (v53 >= v4)
                      {
                        *(v3 + 24) = v4;
                        *(v3 + 32) = v53;
                        return result;
                      }

                      goto LABEL_73;
                    }

LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
                    goto LABEL_74;
                  }

LABEL_71:
                  __break(1u);
                  goto LABEL_72;
                }

                goto LABEL_69;
              }

              goto LABEL_67;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v23 = *a3;
  v24 = *(a3 + 10);
  v57 = *(a3 + 22);
  swift_beginAccess();
  if (v10)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v54 = v24;
  v25 = a1 + v9;
  if (__CFADD__(a1, v9))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v26 = *(v23 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = *(v3 + 16);
    v18 = v25 >= v27;
    v28 = v25 - v27;
    if (v18)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v29, v30 & 1);
  }

  if (v9 > 0xFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v26 + (v57 | (v54 << 8)) + v8), v26 + (v57 | (v54 << 8)) + v8 + v9, a1);
  if (__OFADD__(a1, v9))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v31 = *(v3 + 12);
  if (__OFSUB__(v31, at))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v31 - at);
  if (!v32)
  {
    v33 = v11 - v9;
    if (!__OFSUB__(v11, v9))
    {
      v34 = *(v3 + 12);
      v35 = __OFSUB__(v34, v33);
      v36 = v34 - v33;
      if (!v35)
      {
        if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v36)
        {
          *(v3 + 12) = v36;
          result = sub_1003BC2C4(v33, v4, v5);
          *(v3 + 24) = result;
          *(v3 + 32) = v37;
          return result;
        }

        goto LABEL_70;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_75:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1003BAAB8(Swift::Int a1, Swift::Int at)
{
  v3 = *(v2 + 24);
  if (v3 > a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v2 + 32);
  if (v4 < at)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = at - a1;
  if (__OFSUB__(at, a1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 != 1)
  {
    if (v6 <= 1)
    {
      if (!__OFADD__(a1, 1))
      {
        v13 = *(v2 + 12);
        v14 = __OFSUB__(v13, at);
        v15 = v13 - at;
        if (!v14)
        {
          ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v15);
          if (v16)
          {
LABEL_37:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          result = sub_1003B5C9C();
          v17 = 1 - v6;
          if (!__OFSUB__(1, v6))
          {
            v18 = *(v2 + 12);
            v19 = __CFADD__(v18, v17);
            v20 = v18 + v17;
            if (!v19)
            {
              if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v20)
              {
                *(v2 + 12) = v20;
                v14 = __OFADD__(v4, v17);
                v21 = v4 + v17;
                if (!v14)
                {
                  if (v21 >= v3)
                  {
                    *(v2 + 24) = v3;
                    *(v2 + 32) = v21;
                    return result;
                  }

                  goto LABEL_35;
                }

LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    sub_1003B5C9C();
    if (!__OFADD__(a1, 1))
    {
      v9 = *(v2 + 12);
      if (!__OFSUB__(v9, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v9 - at);
        if (v10)
        {
LABEL_36:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_37;
        }

        v11 = *(v2 + 12) - (v6 - 1);
        if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v11)
        {
          *(v2 + 12) = v11;
          result = sub_1003BC2C4(v6 - 1, v3, v4);
          *(v2 + 24) = result;
          *(v2 + 32) = v12;
          return result;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return sub_1003B5C9C();
}

uint64_t sub_1003BACC4(Swift::Int to, Swift::Int at)
{
  v3 = *(v2 + 24);
  if (v3 > to)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v2 + 32);
  if (v5 < at)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = at - to;
  if (__OFSUB__(at, to))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v13 = *(v2 + 12);
      if (!__OFSUB__(v13, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, to, v13 - at);
        if (v14)
        {
LABEL_33:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        result = sub_1003B5464(to);
        v15 = -v7;
        if (!__OFSUB__(0, v7))
        {
          v16 = *(v2 + 12);
          v17 = __CFADD__(v16, v15);
          v18 = v16 - v7;
          if (!v17)
          {
            if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v18)
            {
              *(v2 + 12) = v18;
              v19 = __OFADD__(v5, v15);
              v20 = v5 - v7;
              if (!v19)
              {
                if (v20 >= v3)
                {
                  *(v2 + 24) = v3;
                  *(v2 + 32) = v20;
                  return result;
                }

                goto LABEL_31;
              }

LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1003B5464(to);
    v8 = *(v2 + 12);
    if (!__OFSUB__(v8, at))
    {
      ByteBuffer.copyBytes(at:to:length:)(at, to, v8 - at);
      if (v9)
      {
LABEL_32:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v2 + 12) - v7;
      if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v10)
      {
        *(v2 + 12) = v10;
        result = sub_1003BC2C4(v7, v3, v5);
        *(v2 + 24) = result;
        *(v2 + 32) = v12;
        return result;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return sub_1003B5464(to);
}

uint64_t ByteBufferView.replaceSubrange<A>(_:with:)(Swift::Int a1, Swift::Int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);
  if (v6 > a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v5 + 32);
  if (v8 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = sub_1004A5E84();
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 != v14)
  {
    if (sub_1004A5E84() >= v14)
    {
      v26 = sub_1004A5E84();
      if (!__OFADD__(a1, v26))
      {
        v27 = *(v5 + 12);
        if (!__OFSUB__(v27, a2))
        {
          ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v26, v27 - a2);
          if (v28)
          {
LABEL_41:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4, *(a5 + 8));
          result = sub_1004A5E84();
          v29 = result - v14;
          if (!__OFSUB__(result, v14))
          {
            v30 = *(v5 + 12);
            v31 = __CFADD__(v30, v29);
            v32 = v30 + v29;
            if (!v31)
            {
              if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v32)
              {
                *(v5 + 12) = v32;
                v21 = __OFADD__(v8, v29);
                v33 = v8 + v29;
                if (!v21)
                {
                  if (v33 >= v6)
                  {
                    *(v5 + 24) = v6;
                    *(v5 + 32) = v33;
                    return result;
                  }

                  goto LABEL_39;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4, *(a5 + 8));
    v17 = sub_1004A5E84();
    if (!__OFADD__(a1, v17))
    {
      v18 = *(v5 + 12);
      if (!__OFSUB__(v18, a2))
      {
        ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v17, v18 - a2);
        if (v19)
        {
LABEL_40:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_41;
        }

        v20 = sub_1004A5E84();
        v21 = __OFSUB__(v14, v20);
        v22 = v14 - v20;
        if (!v21)
        {
          v23 = *(v5 + 12);
          v21 = __OFSUB__(v23, v22);
          v24 = v23 - v22;
          if (!v21)
          {
            if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v24)
            {
              *(v5 + 12) = v24;
              result = sub_1003BC2C4(v22, v6, v8);
              *(v5 + 24) = result;
              *(v5 + 32) = v25;
              return result;
            }

            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_28:
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
    goto LABEL_37;
  }

  v15 = *(a5 + 8);

  return ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4, v15);
}

uint64_t (*ByteBufferView.subscript.modify(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  *(result + 26) = a3;
  *(result + 27) = v3;
  *(result + 25) = a2;
  if (a2 < 0 || (v8 = *(v3 + 16), v9 = *(v3 + 20), v10 = *(v3 + 22), v8 - (v10 | (v9 << 8)) < a3))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v3 + 8);
    *(result + 10) = *v3;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = a2;
    *(result + 14) = a3;

    return sub_1003BB220;
  }

  return result;
}

void sub_1003BB220(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 200);
    v5 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v5;
    *(v2 + 32) = *(v2 + 112);
    sub_1003BD79C(v2, v2 + 160);
    sub_1003BA6F0(v4, v3, v2);
    sub_1003A52D0(v2);
    v6 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v6;
    *(v2 + 152) = *(v2 + 112);
    v7 = v2 + 120;
  }

  else
  {
    v8 = *(v2 + 208);
    v9 = *(v2 + 200);
    v10 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v10;
    *(v2 + 72) = *(v2 + 112);
    sub_1003BA6F0(v9, v8, (v2 + 40));
    v7 = v2 + 40;
  }

  sub_1003A52D0(v7);

  free(v2);
}

void sub_1003BB2E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  swift_beginAccess();
  v7 = a1[3];
  v8 = a1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else
  {
    sub_10049DE0C(*(v4 + 24) + (v6 | (v5 << 8)) + v7, v8 - v7, a2);
  }
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  result = ByteBufferView.withUnsafeBytes<A>(_:)(sub_1003BD7D4, v8, a3);
  if (!v4)
  {
    return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v8 = v1[3];
  v9 = v1[4];
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else if (v11)
  {
    v12 = 0;
    while (*(*(v3 + 24) + v8 + (v4 << 8) + v5 + v12) != a1)
    {
      if ((v11 & ~(v11 >> 63)) == v12)
      {
        __break(1u);
        goto LABEL_12;
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v6 = v12 + v8;
    if (__OFADD__(v12, v8))
    {
      goto LABEL_13;
    }

    v7 = 0;
  }

  else
  {
LABEL_7:
    v6 = 0;
    v7 = 1;
  }

  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v9 = v1[3];
  v8 = v1[4];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v3 + 24) + (v5 | (v4 << 8)) + v9;
  v6 = sub_1003BB5DC(a1, v12, v12 + v11);
  if ((v7 & 1) == 0)
  {
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 &= 1u;
LABEL_7:
  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

uint64_t sub_1003BB570@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!result)
  {
LABEL_9:
    v5 = 0;
LABEL_10:
    v8 = 1;
LABEL_11:
    *a5 = v5;
    *(a5 + 8) = v8;
    return result;
  }

  v5 = a2 - result;
  if (a2 == result)
  {
    goto LABEL_10;
  }

  v6 = a2 - result;
  while (1)
  {
    v7 = __OFSUB__(v6--, 1);
    if (v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v6 < 0 || v6 >= v5)
    {
      goto LABEL_15;
    }

    if (*(result + v6) == a3)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a4 + 24);
  v7 = __OFADD__(v6, v9);
  v5 = v6 + v9;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003BB5DC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

Swift::Bool_optional __swiftcall ByteBufferView._customContainsEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  result.value = swift_beginAccess();
  v7 = v1[3];
  v8 = v1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else if (v8 == v7)
  {
    return 0;
  }

  else
  {
    v9 = (*(v3 + 24) + (v5 | (v4 << 8)) + v7);
    v10 = ~v7 + v8;
    do
    {
      v11 = *v9++;
      result.value = v11 == a1;
    }

    while (v11 != a1 && v10-- != 0);
  }

  return result;
}

void ByteBufferView._copyContents(initializing:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = v5 - v4;
  v7 = __OFSUB__(v5, v4);
  if (v6 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *v3;
  v11 = *(v3 + 8);
  v18 = *(v3 + 16);
  v12 = *(v3 + 20);
  v13 = *(v3 + 22);
  swift_beginAccess();
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 0;
  v15 = v13 | (v12 << 8);
  if (a2 && v6)
  {
    memcpy(a1, (*(v10 + 24) + v15 + v4), v5 - v4);
    v14 = v5 - v4;
  }

  if (v5 <= (v18 - v15) && v14 == v6)
  {
    sub_1003BD79C(v3, v19);
    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v18;
    *(a3 + 20) = v12;
    *(a3 + 22) = v13;
    *(a3 + 24) = v5;
    *(a3 + 32) = v5;
    *(a3 + 40) = v5;
    *(a3 + 48) = v6;
    return;
  }

LABEL_17:
  __break(1u);
}

void *sub_1003BB7EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1003BB804(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_1003BB81C@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_1003BB834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1003BD808(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1003BB86C(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::UInt32 (__swiftcall *sub_1003BB89C(_BYTE *a1, Swift::UInt32 (__swiftcall **a2)(IMAP2Persistence::CredentialsRequestID)))(IMAP2Persistence::CredentialsRequestID)
{
  result = *a2;
  if (*a2 >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1003BD708(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *a1 = result;
      return UInt32.init(_:);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1003BB918@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = *(v2 + 16), v6 = *(v2 + 20), v7 = *(v2 + 22), v4 > v5 - (v7 | (v6 << 8))))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    *(a2 + 8) = *(v2 + 8);
    *(a2 + 16) = v5;
    *(a2 + 20) = v6;
    *(a2 + 22) = v7;
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
  }

  return result;
}

void sub_1003BB968(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
  }
}

uint64_t sub_1003BB9C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(_OWORD *, void, _OWORD *)@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  v9 = *(v3 + 32);
  result = a2(v8, *a1, v8);
  *a3 = result;
  *(a3 + 8) = v7 & 1;
  *(a3 + 9) = 0;
  return result;
}

void *sub_1003BBA28@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1003BBA40(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1003BBA58@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_1003BBA78(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v6 = *(v1 + 32);
  sub_1003BA25C(v5, *a1);
  return v3 & 1;
}

void *sub_1003BBAC0()
{
  v1 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v1;
  v2 = *(v0 + 32);
  v9 = v2;
  v3 = v2 - *(&v1 + 1);
  if (v2 == *(&v1 + 1))
  {
    sub_1003A52D0(v8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = sub_10015BEAC(v2 - *(&v1 + 1), 0);
    ByteBufferView._copyContents(initializing:)(v5 + 4, v3, v7);
    v6 = v7[6];
    sub_1003A52D0(v8);

    result = v5;
    if (v6 != v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003BBB68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v5;
  v23 = *(v3 + 32);
  ByteBufferView._copyContents(initializing:)(a2, a3, v15);
  v6 = v15[0];
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v14 = v19;
  v11 = v20;
  v10 = v21;
  v12 = v15[1];
  sub_1003A52D0(v22);
  *a1 = v6;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  *(a1 + 22) = v9;
  *(a1 + 24) = v14;
  *(a1 + 40) = v11;
  return v10;
}

char *(*sub_1003BBC68(uint64_t a1, char *(**a2)(uint64_t a1)))(uint64_t a1)
{
  result = *a2;
  *a1 = v2;
  *(a1 + 8) = result;
  if (result >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1003BD708(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *(a1 + 16) = result;
      return sub_1003BBCE8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BBD10(uint64_t a1, Swift::Int *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  sub_1003BA6F0(*a2, a2[1], v4);
  return sub_1003A52D0(v4);
}

uint64_t (*sub_1003BBD50(uint64_t (**a1)(), uint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  v6 = *a2;
  v7 = a2[1];
  *(result + 25) = v2;
  *(result + 26) = v6;
  *(result + 27) = v7;
  if (v6 < 0 || (v8 = *(v2 + 16), v9 = *(v2 + 20), v10 = *(v2 + 22), v7 > v8 - (v10 | (v9 << 8))))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + 8);
    *(result + 10) = *v2;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = v6;
    *(result + 14) = v7;

    return sub_1003BBE18;
  }

  return result;
}

void sub_1003BBE18(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v5;
    *(v2 + 32) = *(v2 + 112);
    sub_1003BD79C(v2, v2 + 160);
    sub_1003BA6F0(v3, v4, v2);
    sub_1003A52D0(v2);
    v6 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v6;
    *(v2 + 152) = *(v2 + 112);
    v7 = v2 + 120;
  }

  else
  {
    v8 = *(v2 + 208);
    v9 = *(v2 + 216);
    v10 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v10;
    *(v2 + 72) = *(v2 + 112);
    sub_1003BA6F0(v8, v9, (v2 + 40));
    v7 = v2 + 40;
  }

  sub_1003A52D0(v7);

  free(v2);
}

void sub_1003BBEDC(uint64_t *a1@<X8>, uint64_t (*a2)(char *)@<X0>)
{
  sub_1003BD1DC(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

void sub_1003BBF14(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = v2[3];
    v4 = v2[4];
    if (v5 > a1 || v4 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = *(v2 + 2);
      if (a1 >= v7)
      {
        v8 = (*(v2 + 3) - v7);
        if (a1 - v7 < v8)
        {
          v10 = *v2;
          v11 = *(v2 + 10);
          v12 = *(v2 + 22);
          swift_beginAccess();
          if (v5 <= a2 && v4 > a2)
          {
            if (a2 >= v7)
            {
              if (a2 - v7 < v8)
              {
                v13 = *(v10 + 24) + (v12 | (v11 << 8));
                v14 = *(v13 + a1);
                ByteBufferView.subscript.setter(*(v13 + a2), a1);
                ByteBufferView.subscript.setter(v14, a2);
                return;
              }

LABEL_19:
              __break(1u);
              return;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

double ByteBufferView.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1003BD9F8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

Swift::Void __swiftcall ByteBufferView.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = *(v1 + 32) - *(v1 + 24);
  v3 = __OFSUB__(a1, v2);
  v4 = a1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 1)
  {
    return;
  }

  v5 = *(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8));
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (v6 > v5)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v7 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v7);
    }
  }
}

Swift::Void __swiftcall ByteBufferView.append(_:)(Swift::UInt8 a1)
{
  v2 = *(v1 + 32);
  v10 = a1;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = *(v1 + 16);
    v5 = v3 >= v4;
    v6 = v3 - v4;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v7, v8 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v10, &v11, v2);
  v9 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_12;
  }

  if (v9 < *(v1 + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  *(v1 + 32) = v9;
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < v9)
  {
    goto LABEL_14;
  }

  *(v1 + 12) = v9;
}

uint64_t ByteBufferView.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  result = ByteBuffer.setBytes<A>(_:at:)(a1, v4, a2, a3);
  v6 = v4 + result;
  if (__OFADD__(v4, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 < *(v3 + 24))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v3 + 32) = v6;
  if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v6)
  {
    *(v3 + 12) = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1003BC2C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    return a2;
  }

  v5 = a3 - result;
  if (__OFADD__(a3, v4))
  {
    goto LABEL_11;
  }

  if (v5 >= a2 && v5 <= a3)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1003BC31C(Swift::Int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  ByteBufferView.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void *sub_1003BC3A8@<X0>(int a1@<W0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1003BD9F8(&v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(&v14 + 1);
  v7 = v15;
  result = sub_1003B52E0(a2, a1, v15);
  v9 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(&v11 + 1) = v8;
  v12 = v7 + result;
  if (v11 - (BYTE6(v11) | (WORD2(v11) << 8)) >= v9)
  {
    HIDWORD(v10) = v7 + result;
LABEL_7:
    *a3 = v10;
    *(a3 + 16) = v11;
    *(a3 + 32) = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BC498(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ByteBufferView.append<A>(contentsOf:)(a1, a2, a3);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t sub_1003BC52C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v4 == v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *result;
  if (*result < v4 || v6 >= v5)
  {
    goto LABEL_10;
  }

  result = sub_1003BD708(*result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
  if ((result & 0x100) == 0)
  {
    v8 = result;
    result = sub_1003BACC4(v6, v6 + 1);
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BC5C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003BC5F0();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1003BC5F0()
{
  v1 = v0[4];
  v2 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v0[3];
  if (v2 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= v1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 == v1)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 2);
  if (v2 < v4 || v2 - v4 >= (*(v0 + 3) - v4))
  {
    goto LABEL_18;
  }

  v6 = *v0;
  v7 = *(v0 + 10);
  v8 = *(v0 + 22);
  swift_beginAccess();
  v9 = *(*(v6 + 24) + (v8 | (v7 << 8)) + v2);
  v22 = v0[4];
  v10 = *(v0 + 1);
  v20 = *v0;
  v21 = v10;
  v11 = *(&v10 + 1);
  v12 = v22;
  v23[0] = v20;
  v23[1] = v10;
  v24 = v22;
  sub_1003BD79C(&v20, v19);
  result = sub_1003A52D0(v23);
  v14 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 < v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v21;
  v16 = WORD2(v21);
  v17 = BYTE6(v21);
  if (v14 <= v21 - (BYTE6(v21) | (WORD2(v21) << 8)))
  {
    v18 = *(&v20 + 1);
    *v0 = v20;
    v0[1] = v18;
    *(v0 + 4) = v15;
    *(v0 + 10) = v16;
    *(v0 + 22) = v17;
    v0[3] = v11;
    v0[4] = v14;
    return v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1003BC748(uint64_t result)
{
  v2 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 1)
  {
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0 && v6 < v2)
  {
    do
    {
      __break(1u);
LABEL_7:
      ;
    }

    while (v6 <= 0 && v2 < v6);
  }

  v8 = v3 - result;
  if (__OFADD__(v3, v2))
  {
    goto LABEL_18;
  }

  v9 = v1[1];
  v16 = *v1;
  v17 = v9;
  v18 = *(v1 + 4);
  v10 = *(&v9 + 1);
  v19[0] = v16;
  v19[1] = v9;
  v20 = v18;
  sub_1003BD79C(&v16, v15);
  result = sub_1003A52D0(v19);
  if (v8 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v17;
  v12 = WORD2(v17);
  v13 = BYTE6(v17);
  if (v8 <= v17 - (BYTE6(v17) | (WORD2(v17) << 8)))
  {
    v14 = *(&v16 + 1);
    *v1 = v16;
    *(v1 + 1) = v14;
    *(v1 + 4) = v11;
    *(v1 + 10) = v12;
    *(v1 + 22) = v13;
    *(v1 + 3) = v10;
    *(v1 + 4) = v8;
    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1003BC870()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  if (v2 == v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v0 + 2);
  if (v2 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 - v3 >= (*(v0 + 3) - v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  v15 = *(v0 + 4);
  v4 = v0[1];
  v13 = *v0;
  v14 = v4;
  v5 = *(&v4 + 1) + 1;
  if (__OFADD__(*(&v4 + 1), 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v15;
  v7 = v0[1];
  v16[0] = *v0;
  v16[1] = v7;
  v17 = *(v0 + 4);
  sub_1003BD79C(&v13, &v12);
  sub_1003A52D0(v16);
  if (v6 < v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v14;
  v9 = WORD2(v14);
  v10 = BYTE6(v14);
  if (v6 <= v14 - (BYTE6(v14) | (WORD2(v14) << 8)))
  {
    v11 = *(&v13 + 1);
    *v0 = v13;
    *(v0 + 1) = v11;
    *(v0 + 4) = v8;
    *(v0 + 10) = v9;
    *(v0 + 22) = v10;
    *(v0 + 3) = v5;
    *(v0 + 4) = v6;
    return;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_1003BC9B8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v1 + 3);
      v3 = *(v1 + 4);
      v4 = __OFSUB__(v3, v2);
      v5 = v3 - v2;
      if (!v4)
      {
        if (v5 < result)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v6 = v2 + result;
        if (!__OFADD__(v2, result))
        {
          v7 = v1[1];
          v14 = *v1;
          v15 = v7;
          v16 = *(v1 + 4);
          v8 = v16;
          v17[0] = v14;
          v17[1] = v7;
          v18 = v16;
          sub_1003BD79C(&v14, v13);
          result = sub_1003A52D0(v17);
          if (v8 >= v6)
          {
            if ((v6 & 0x8000000000000000) == 0)
            {
              v9 = v15;
              v10 = WORD2(v15);
              v11 = BYTE6(v15);
              if (v8 <= v15 - (BYTE6(v15) | (WORD2(v15) << 8)))
              {
                v12 = *(&v14 + 1);
                *v1 = v14;
                *(v1 + 1) = v12;
                *(v1 + 4) = v9;
                *(v1 + 10) = v10;
                *(v1 + 22) = v11;
                *(v1 + 3) = v6;
                *(v1 + 4) = v8;
                return result;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void *sub_1003BCA98(char a1)
{
  if (a1)
  {
    result = *(v1 + 24);
    v3 = *(v1 + 32);
    if (v3 < result)
    {
      __break(1u);
    }

    else
    {

      return sub_1003BACC4(result, v3);
    }
  }

  else
  {
    v4 = *(v1 + 16);
    v6[0] = *v1;
    v6[1] = v4;
    v7 = *(v1 + 32);
    sub_1003A52D0(v6);
    result = sub_1003BD9F8(v8);
    v5 = v8[1];
    *v1 = v8[0];
    *(v1 + 16) = v5;
    *(v1 + 32) = v9;
  }

  return result;
}

void sub_1003BCB18(uint64_t (*a1)(char *))
{
  sub_1003BD364(a1);
  if (!v2)
  {
    v4 = *(v1 + 32);
    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      sub_1003BACC4(v3, v4);
    }
  }
}

uint64_t ByteBuffer.viewBytes(at:length:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v6 = 0;
  if (a2 < 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a4 > result)
  {
LABEL_10:
    *a6 = v6;
    a6[1] = v7;
    a6[2] = v8;
    a6[3] = v9;
    a6[4] = v10;
    return result;
  }

  if ((HIDWORD(a4) - a2) < result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a5 - (BYTE6(a5) | (a5 >> 24) & 0xFFFF00) >= v10)
  {
    v8 = a5 & 0xFFFFFFFFFFFFFFLL;
    v11 = result;
    v12 = a6;

    a6 = v12;
    v6 = a3;
    v7 = a4;
    v9 = v11;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t ByteBuffer.init(_:)(uint64_t a1)
{
  result = ByteBuffer.getSlice(at:length:)(*(a1 + 24), *(a1 + 32) - *(a1 + 24), *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v3 = result;
    sub_1003A52D0(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ByteBufferView.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v10)
  {
    return 0;
  }

  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v13 = result;
    v14 = v11;
    v15 = v12;
    result = ByteBuffer.getSlice(at:length:)(v8, v5, *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48));
    if (result)
    {
      v18 = sub_10020FBD0(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL, result, v16, v17 & 0xFFFFFFFFFFFFFFLL);

      return v18;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BCDD0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v9)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *(a2 + 22);
  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v17 = result;
    v18 = v15;
    v19 = v16;
    result = ByteBuffer.getSlice(at:length:)(v7, v5, v10, v11, v12 | (v13 << 32) | (v14 << 48));
    if (result)
    {
      v22 = sub_10020FBD0(v17, v18, v19 & 0xFFFFFFFFFFFFFFLL, result, v20, v21 & 0xFFFFFFFFFFFFFFLL);

      return v22;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.hash(into:)()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      swift_beginAccess();
      sub_1004A6EA4();
    }
  }

  __break(1u);
  return result;
}

Swift::Int ByteBufferView.hashValue.getter()
{
  sub_1004A6E94();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      swift_beginAccess();
      sub_1004A6EA4();

      return sub_1004A6F14();
    }
  }

  __break(1u);
  return result;
}

void *sub_1003BD068(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = sub_1004A6E94();
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(v8, v7 - v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
    if (result)
    {
      swift_beginAccess();
      sub_1004A6EA4();

      return sub_1004A6F14();
    }
  }

  __break(1u);
  return result;
}

double ByteBufferView.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003BDAB0(a1, v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1003BD190(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 40);
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      return (*(v1 + 24))(result + v4, result + v4 + v6);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003BD1DC(uint64_t (*a1)(char *))
{
  v3 = v1[3];
  v16 = v1[4];
  if (v3 < v16)
  {
    v4 = v1;
    while (1)
    {
LABEL_3:
      v5 = v4[4];
      if (v3 < v4[3] || v3 >= v5)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v4 + 2);
      if (v3 < v7)
      {
        goto LABEL_22;
      }

      v8 = (*(v4 + 3) - v7);
      if (v3 - v7 >= v8)
      {
        goto LABEL_23;
      }

      v9 = *v4;
      v10 = *(v4 + 10);
      v11 = *(v4 + 22);
      swift_beginAccess();
      v12 = v11 | (v10 << 8);
      v18 = *(*(v9 + 24) + v12 + v3);
      v13 = a1(&v18);
      if (v2)
      {
        return;
      }

      if (v13)
      {
        break;
      }

      if (++v3 >= v16)
      {
        return;
      }
    }

    v14 = v16;
    while (!__OFSUB__(v14--, 1))
    {
      if (v3 >= v14)
      {
        return;
      }

      if (v16 > v5)
      {
        goto LABEL_25;
      }

      if (v14 - v7 >= v8)
      {
        goto LABEL_26;
      }

      v18 = *(*(v9 + 24) + v12 + v14);
      if ((a1(&v18) & 1) == 0)
      {
        sub_1003BBF14(v3++, v14);
        v16 = v14;
        if (v3 < v14)
        {
          goto LABEL_3;
        }

        return;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1003BD364(uint64_t (*a1)(char *))
{
  v2 = v1;
  v3 = *v1;
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v2 + 10);
  v7 = *(v2 + 22);
  v9 = v2[3];
  v8 = v2[4];
  swift_beginAccess();
  if (v9 != v8)
  {
    v10 = v5 + (v4 - v5);
    v51 = v9 - v8;
    v46 = v6;
    v47 = v8;
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    if (v9 > v10)
    {
      v10 = v9;
    }

    v12 = v9 - v10;
    v13 = v9 - v11;
    v45 = v7;
    v14 = v9 + (v6 << 8) + v7;
    v15 = 1;
    while (1)
    {
      if (v13 + v15 == 1)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v9 < v5)
      {
        goto LABEL_49;
      }

      if (v12 + v15 == 1)
      {
        goto LABEL_50;
      }

      v53[0] = *(*(v3 + 24) + v14 + v15 - 1);
      v16 = a1(v53);
      if (v48)
      {
        return;
      }

      if (v16)
      {
        break;
      }

      ++v15;
      if (v51 + v15 == 1)
      {
        return;
      }
    }

    v44 = v9 + v15;
    v17 = v9 + v15 - 1;
    if (!(v51 + v15))
    {
      return;
    }

    while (v44 >= v9 && v9 + v15 < v47)
    {
      v18 = *(v2 + 2);
      if (v9 + v15 < v18)
      {
        goto LABEL_52;
      }

      v19 = (*(v2 + 3) - v18);
      if (v9 + v15 - v18 >= v19)
      {
        goto LABEL_53;
      }

      v49 = v9 + v15;
      *at = v17;
      swift_beginAccess();
      v20 = v45 | (v46 << 8);
      v55 = *(*(v3 + 24) + v20 + v9 + v15);
      if (a1(&v55))
      {
        v17 = *at;
      }

      else
      {
        v21 = *at;
        if (v49 != *at)
        {
          if (*at < v9 || *at >= v47)
          {
            goto LABEL_54;
          }

          if (*at < v18)
          {
            goto LABEL_55;
          }

          if (*at - v18 >= v19)
          {
            goto LABEL_56;
          }

          v22 = at[0] + 1;
          if (at[0] == -1)
          {
            goto LABEL_57;
          }

          v23 = *(v3 + 24) + v20;
          v54 = *(v23 + *at);
          v24 = *(v23 + v9 + v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = *(v2 + 4);
            v26 = v22 >= v25;
            v27 = v22 - v25;
            if (v26)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v29 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v28, v29 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(1u, at[0]);
          v30 = *v2;
          v31 = *(v2 + 4);
          v32 = *(v2 + 10);
          v33 = *(v2 + 22);
          swift_beginAccess();
          v34 = sub_1003B7140(at[0], *(v30 + 24) + (v33 | (v32 << 8)), *(v30 + 24) + (v33 | (v32 << 8)) + v31 - (v33 | (v32 << 8)));
          if (v35)
          {
            *(v35 + v34) = v24;
          }

          v36 = v9 + v15 + 1;
          if (v9 + v15 == -1)
          {
            goto LABEL_58;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v36 >= v31)
            {
              v37 = v36 - v31;
            }

            else
            {
              v37 = 0;
            }

            v38 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v37, v38 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v9 + v15);
          v3 = *v2;
          v39 = *(v2 + 4);
          v40 = *(v2 + 10);
          v41 = *(v2 + 22);
          swift_beginAccess();
          v45 = v41;
          v46 = v40;
          v42 = sub_1003B7140(v49, *(v3 + 24) + (v41 | (v40 << 8)), *(v3 + 24) + (v41 | (v40 << 8)) + v39 - (v41 | (v40 << 8)));
          if (v43)
          {
            *(v43 + v42) = v54;
          }

          v21 = *at;
        }

        v17 = v21 + 1;
      }

      ++v15;
      if (!(v51 + v15))
      {
        return;
      }
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
  }
}

uint64_t sub_1003BD708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 < a3 || (HIDWORD(a3) - a3) <= a1 - a3)
  {
    return 256;
  }

  swift_beginAccess();
  return *(*(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4)) + a1);
}

uint64_t sub_1003BD7D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 24))(a1, v3);
}

uint64_t sub_1003BD808(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_1003BD85C(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 10);
  v8 = *(a1 + 22);
  swift_beginAccess();
  v10 = a1[3];
  v9 = a1[4];
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else if (v12)
  {
    v13 = 0;
    v14 = *(v6 + 24) + v10 + (v7 << 8) + v8;
    while (*(v14 + v13) != a2)
    {
      if ((v12 & ~(v12 >> 63)) == v13)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v12 == ++v13)
      {
        return;
      }
    }

    if (__OFADD__(v13, *(a3 + 24)))
    {
      goto LABEL_12;
    }
  }
}

void sub_1003BD944(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 10);
  v8 = *(a1 + 22);
  swift_beginAccess();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v6 + 24) + (v8 | (v7 << 8)) + v9;
    sub_1003BB570(v13, v13 + v12, a2, a3, &v14);
  }
}

uint64_t sub_1003BD9F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005DB9D0 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v2 = qword_1005DE390;
  v3 = HIDWORD(qword_1005DE390);
  if (HIDWORD(qword_1005DE390) < qword_1005DE390)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = dword_1005DE398;
  v5 = word_1005DE39C;
  v6 = byte_1005DE39E;
  if (dword_1005DE398 - (byte_1005DE39E | (word_1005DE39C << 8)) < HIDWORD(qword_1005DE390))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a1 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 22) = v6;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

void sub_1003BDAB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003BD9F8(&v9);
  v5 = *(&v10 + 1);
  v4 = v11;
  sub_1002F15F8(a1, v11);
  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(&v10 + 1) = v5;
  v11 = v4 + v6;
  if (v10 - (BYTE6(v10) | (WORD2(v10) << 8)) >= v7)
  {
    HIDWORD(v9) = v4 + v6;
    *(a2 + 32) = v11;
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1003BDB5C()
{
  result = qword_1005DBF08;
  if (!qword_1005DBF08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF08);
  }

  return result;
}

unint64_t sub_1003BDBE4()
{
  result = qword_1005DBF20;
  if (!qword_1005DBF20)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_1005DBF20);
  }

  return result;
}

unint64_t sub_1003BDC3C()
{
  result = qword_1005DBF28;
  if (!qword_1005DBF28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF28);
  }

  return result;
}

unint64_t sub_1003BDC94()
{
  result = qword_1005DBF30;
  if (!qword_1005DBF30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF30);
  }

  return result;
}

unint64_t sub_1003BDD24()
{
  result = qword_1005DBF40;
  if (!qword_1005DBF40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF40);
  }

  return result;
}

uint64_t sub_1003BDDB8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000DEFC(&qword_1005DBF18, &qword_100508410);
    v6[0] = &protocol witness table for Int;
    v6[1] = sub_1003BDBE4();
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003BDE34()
{
  result = qword_1005DBF50;
  if (!qword_1005DBF50)
  {
    v3 = sub_10000DEFC(&qword_1005DBF58, &qword_1004FFEF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for IndexingIterator<A>, v3, v0, v1);
    atomic_store(result, &qword_1005DBF50);
  }

  return result;
}

unint64_t sub_1003BDE9C()
{
  result = qword_1005DBF60;
  if (!qword_1005DBF60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF60);
  }

  return result;
}

unint64_t sub_1003BDEF4()
{
  result = qword_1005DBF68;
  if (!qword_1005DBF68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF68);
  }

  return result;
}

unint64_t sub_1003BDF4C()
{
  result = qword_1005DBF70;
  if (!qword_1005DBF70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteBufferView, &type metadata for ByteBufferView, v0, v1);
    atomic_store(result, &qword_1005DBF70);
  }

  return result;
}

uint64_t static ByteRange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

void ByteRange.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  sub_1004A6EB4(a2);
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(a3);
  }
}

Swift::Int ByteRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  if (a3)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(a2);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003BE0D4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

void sub_1003BE154()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }
}

Swift::Int sub_1003BE1B0(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v3);
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  return sub_1004A6F14();
}

unint64_t sub_1003BE230()
{
  result = qword_1005DBF78;
  if (!qword_1005DBF78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ByteRange, &type metadata for ByteRange, v0, v1);
    atomic_store(result, &qword_1005DBF78);
  }

  return result;
}

uint64_t sub_1003BE284(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1003BE2D8()
{
  v1 = v0;
  v11._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  sub_1004A5994(v12);
  v13._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  sub_1004A5994(v14);
  v2 = *(v0 + 20);
  v3 = sub_1002F178C(0x3CuLL, 0xE100000000000000, v0 + 8, v2);
  if (v4)
  {
    v5._countAndFlagsBits = 60;
    v5._object = 0xE100000000000000;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
    return v6;
  }

  return result;
}

uint64_t sub_1003BE414(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1004A6CE4();
  v8 = v7;
  v9 = *(v3 + 20);
  v10 = sub_1002F178C(v6, v7, v4 + 8, *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v3 + 20);
  v16 = (v15 + v13);
  if (__CFADD__(v15, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 20) = v16;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v24._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v24);

    v18 = sub_1002F178C(0x2EuLL, 0xE100000000000000, v3 + 8, v16);
    if (v19)
    {
      v20._countAndFlagsBits = 46;
      v20._object = 0xE100000000000000;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v16);
    }

    v17 = v18;

    v21 = *(v4 + 20);
    v22 = __CFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_14;
    }

    *(v4 + 20) = v23;
  }

  result = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}