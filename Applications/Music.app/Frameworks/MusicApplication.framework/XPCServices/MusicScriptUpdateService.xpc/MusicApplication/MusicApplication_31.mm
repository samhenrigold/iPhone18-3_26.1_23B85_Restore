uint64_t sub_10030E448(uint64_t a1)
{
  v2 = sub_100315034();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E484(uint64_t a1)
{
  v2 = sub_100315034();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10030E4D0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1004BD9C4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10030E558(uint64_t a1)
{
  v2 = sub_100315184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E594(uint64_t a1)
{
  v2 = sub_100315184();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E5D0(uint64_t a1)
{
  v2 = sub_100314FE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E60C(uint64_t a1)
{
  v2 = sub_100314FE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030E648(uint64_t a1)
{
  v2 = sub_1003150DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030E684(uint64_t a1)
{
  v2 = sub_1003150DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_100003ABC(&qword_10060C420, &qword_1004DEEB8);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin();
  v81 = &v51 - v3;
  v4 = sub_100003ABC(&qword_10060C428, &qword_1004DEEC0);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin();
  v78 = &v51 - v5;
  v6 = sub_100003ABC(&qword_10060C430, &qword_1004DEEC8);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v75 = &v51 - v7;
  v8 = sub_100003ABC(&qword_10060C438, &qword_1004DEED0);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin();
  v72 = &v51 - v9;
  v10 = sub_100003ABC(&qword_10060C440, &qword_1004DEED8);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin();
  v69 = &v51 - v11;
  v68 = sub_100003ABC(&qword_10060C448, &qword_1004DEEE0);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v64 = &v51 - v12;
  v63 = sub_100003ABC(&qword_10060C450, &qword_1004DEEE8);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v51 - v13;
  v66 = sub_100003ABC(&qword_10060C458, &unk_1004DEEF0);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v51 - v14;
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v59 = &v51 - v15;
  v58 = sub_100003ABC(&qword_10060C460, &qword_1004DEF00);
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v51 - v16;
  v55 = sub_100003ABC(&qword_10060C468, &qword_1004DEF08);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  v53 = sub_100003ABC(&qword_10060C470, &qword_1004DEF10);
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v20 = &v51 - v19;
  v21 = sub_100003ABC(&qword_10060C478, &qword_1004DEF18);
  v51 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v51 - v22;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100003ABC(&qword_10060C480, &qword_1004DEF20);
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  __chkstk_darwin();
  v29 = &v51 - v28;
  sub_100009178(a1, a1[3]);
  sub_100314EE4();
  v85 = v29;
  sub_1004BDC44();
  sub_100314E7C(v84, v25, type metadata accessor for ArtworkImage.Placeholder);
  v30 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v31 = (*(*(v30 - 8) + 48))(v25, 11, v30);
  if (v31 <= 5)
  {
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v90 = 2;
        sub_10031522C();
        v37 = v85;
        v36 = v86;
        sub_1004BD824();
        v41 = *(v54 + 8);
        v42 = v18;
        v43 = &v87;
      }

      else if (v31 == 4)
      {
        v91 = 3;
        sub_1003151D8();
        v40 = v56;
        v37 = v85;
        v36 = v86;
        sub_1004BD824();
        v41 = *(v57 + 8);
        v42 = v40;
        v43 = v92;
      }

      else
      {
        v92[17] = 5;
        sub_100315130();
        v50 = v60;
        v37 = v85;
        v36 = v86;
        sub_1004BD824();
        v41 = *(v61 + 8);
        v42 = v50;
        v43 = &v93;
      }
    }

    else
    {
      if (!v31)
      {
        v44 = v59;
        sub_100025B04(v25, v59, &qword_10060A7B8, &qword_1004DBB60);
        v92[16] = 4;
        sub_100315184();
        v45 = v62;
        v47 = v85;
        v46 = v86;
        sub_1004BD824();
        sub_1004BB914();
        sub_100315328(&qword_10060C4D0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v48 = v66;
        sub_1004BD844();
        (*(v65 + 8))(v45, v48);
        sub_100007214(v44, &qword_10060A7B8, &qword_1004DBB60);
        return (*(v87 + 8))(v47, v46);
      }

      if (v31 == 1)
      {
        v88 = 0;
        sub_1003152D4();
        v32 = v85;
        v33 = v86;
        sub_1004BD824();
        (*(v51 + 8))(v23, v21);
        return (*(v87 + 8))(v32, v33);
      }

      v89 = 1;
      sub_100315280();
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v41 = *(v52 + 8);
      v42 = v20;
      v43 = &v85;
    }

    goto LABEL_23;
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      v92[21] = 9;
      sub_100314FE0();
      v35 = v75;
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v39 = v76;
      v38 = v77;
    }

    else if (v31 == 10)
    {
      v92[22] = 10;
      sub_100314F8C();
      v35 = v78;
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v39 = v79;
      v38 = v80;
    }

    else
    {
      v92[23] = 11;
      sub_100314F38();
      v35 = v81;
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v39 = v82;
      v38 = v83;
    }

    goto LABEL_25;
  }

  if (v31 != 6)
  {
    if (v31 == 7)
    {
      v92[19] = 7;
      sub_100315088();
      v35 = v69;
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v39 = v70;
      v38 = v71;
    }

    else
    {
      v92[20] = 8;
      sub_100315034();
      v35 = v72;
      v37 = v85;
      v36 = v86;
      sub_1004BD824();
      v39 = v73;
      v38 = v74;
    }

LABEL_25:
    v41 = *(v39 + 8);
    v42 = v35;
    goto LABEL_26;
  }

  v92[18] = 6;
  sub_1003150DC();
  v49 = v64;
  v37 = v85;
  v36 = v86;
  sub_1004BD824();
  v41 = *(v67 + 8);
  v42 = v49;
  v43 = &v94;
LABEL_23:
  v38 = *(v43 - 32);
LABEL_26:
  v41(v42, v38);
  return (*(v87 + 8))(v37, v36);
}

void ArtworkImage.Placeholder.hash(into:)(uint64_t a1)
{
  v2 = sub_1004BB914();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100314E7C(v1, v11, type metadata accessor for ArtworkImage.Placeholder);
  v12 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v13 = (*(*(v12 - 8) + 48))(v11, 11, v12);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        v14 = 9;
      }

      else if (v13 == 10)
      {
        v14 = 10;
      }

      else
      {
        v14 = 11;
      }
    }

    else if (v13 == 6)
    {
      v14 = 6;
    }

    else if (v13 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 2;
    }

    else if (v13 == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v14 = v13 != 1;
LABEL_23:
    sub_1004BDBB4(v14);
    return;
  }

  sub_100025B04(v11, v9, &qword_10060A7B8, &qword_1004DBB60);
  sub_1004BDBB4(4uLL);
  sub_10000F778(v9, v7, &qword_10060A7B8, &qword_1004DBB60);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    sub_1004BDBC4(1u);
    sub_100315328(&qword_10060C4F8, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    sub_1004BBCE4();
    (*(v3 + 8))(v5, v2);
  }

  sub_100007214(v9, &qword_10060A7B8, &qword_1004DBB60);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_1004BDBA4();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_1004BDBF4();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_100003ABC(&qword_10060C500, &qword_1004DEF28);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v99 = &v67 - v4;
  v5 = sub_100003ABC(&qword_10060C508, &qword_1004DEF30);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin();
  v100 = &v67 - v6;
  v87 = sub_100003ABC(&qword_10060C510, &qword_1004DEF38);
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v103 = &v67 - v7;
  v85 = sub_100003ABC(&qword_10060C518, &qword_1004DEF40);
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v98 = &v67 - v8;
  v83 = sub_100003ABC(&qword_10060C520, &qword_1004DEF48);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v97 = &v67 - v9;
  v81 = sub_100003ABC(&qword_10060C528, &qword_1004DEF50);
  v79 = *(v81 - 8);
  __chkstk_darwin();
  v96 = &v67 - v10;
  v77 = sub_100003ABC(&qword_10060C530, &qword_1004DEF58);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v94 = &v67 - v11;
  v80 = sub_100003ABC(&qword_10060C538, &qword_1004DEF60);
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v95 = &v67 - v12;
  v74 = sub_100003ABC(&qword_10060C540, &qword_1004DEF68);
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v102 = &v67 - v13;
  v73 = sub_100003ABC(&qword_10060C548, &qword_1004DEF70);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v93 = &v67 - v14;
  v71 = sub_100003ABC(&qword_10060C550, &qword_1004DEF78);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v92 = &v67 - v15;
  v69 = sub_100003ABC(&qword_10060C558, &qword_1004DEF80);
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v67 - v16;
  v18 = sub_100003ABC(&qword_10060C560, &qword_1004DEF88);
  v104 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = a1[3];
  v106 = a1;
  sub_100009178(a1, v26);
  sub_100314EE4();
  v27 = v105;
  sub_1004BDC34();
  if (!v27)
  {
    v67 = v23;
    v29 = v102;
    v28 = v103;
    v105 = v25;
    v30 = sub_1004BD814();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 12)
      {
        if (*(v30 + 32) > 5u)
        {
          v40 = v104;
          if (*(v30 + 32) > 8u)
          {
            v32 = v101;
            if (v31 == 9)
            {
              v116 = 9;
              sub_100314FE0();
              sub_1004BD784();
              (*(v86 + 8))(v28, v87);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v53 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v53 - 8) + 56))(v105, 9, 11, v53);
            }

            else if (v31 == 10)
            {
              v117 = 10;
              sub_100314F8C();
              v47 = v100;
              sub_1004BD784();
              (*(v88 + 8))(v47, v89);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v48 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v48 - 8) + 56))(v105, 10, 11, v48);
            }

            else
            {
              v59 = v101;
              v118 = 11;
              sub_100314F38();
              v60 = v99;
              sub_1004BD784();
              (*(v90 + 8))(v60, v91);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v65 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v65 - 8) + 56))(v105, 11, 11, v65);
              v32 = v59;
            }
          }

          else
          {
            v32 = v101;
            if (v31 == 6)
            {
              v113 = 6;
              sub_1003150DC();
              v49 = v96;
              sub_1004BD784();
              (*(v79 + 8))(v49, v81);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v50 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v50 - 8) + 56))(v105, 6, 11, v50);
            }

            else if (v31 == 7)
            {
              v114 = 7;
              sub_100315088();
              v41 = v97;
              sub_1004BD784();
              (*(v82 + 8))(v41, v83);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v42 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v42 - 8) + 56))(v105, 7, 11, v42);
            }

            else
            {
              v115 = 8;
              sub_100315034();
              v56 = v98;
              sub_1004BD784();
              (*(v84 + 8))(v56, v85);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v57 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v57 - 8) + 56))(v105, 8, 11, v57);
            }
          }

          goto LABEL_29;
        }

        if (*(v30 + 32) <= 2u)
        {
          v32 = v101;
          if (*(v30 + 32))
          {
            if (v31 == 1)
            {
              v108 = 1;
              sub_100315280();
              v33 = v92;
              sub_1004BD784();
              v34 = v104;
              (*(v70 + 8))(v33, v71);
              (*(v34 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v35 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v35 - 8) + 56))(v105, 2, 11, v35);
            }

            else
            {
              v109 = 2;
              sub_10031522C();
              v54 = v93;
              sub_1004BD784();
              v55 = v104;
              (*(v72 + 8))(v54, v73);
              (*(v55 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v63 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
              v36 = v105;
              (*(*(v63 - 8) + 56))(v105, 3, 11, v63);
            }
          }

          else
          {
            v107 = 0;
            sub_1003152D4();
            sub_1004BD784();
            (*(v68 + 8))(v17, v69);
            (*(v104 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v62 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
            v36 = v105;
            (*(*(v62 - 8) + 56))(v105, 1, 11, v62);
          }

          goto LABEL_29;
        }

        if (v31 == 3)
        {
          v110 = 3;
          sub_1003151D8();
          sub_1004BD784();
          v51 = v104;
          (*(v75 + 8))(v29, v74);
          (*(v51 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v52 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
          v36 = v105;
          (*(*(v52 - 8) + 56))(v105, 4, 11, v52);
        }

        else
        {
          v43 = v104;
          if (v31 == 4)
          {
            v111 = 4;
            sub_100315184();
            v44 = v95;
            sub_1004BD784();
            sub_1004BB914();
            sub_100315328(&qword_10060C570, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
            v45 = v67;
            v46 = v80;
            sub_1004BD7B4();
            (*(v78 + 8))(v44, v46);
            (*(v43 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v66 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
            (*(*(v66 - 8) + 56))(v45, 0, 11, v66);
            v36 = v105;
            sub_100315370(v45, v105, type metadata accessor for ArtworkImage.Placeholder);
            v32 = v101;
LABEL_29:
            sub_100315370(v36, v32, type metadata accessor for ArtworkImage.Placeholder);
            return sub_100004C6C(v106);
          }

          v112 = 5;
          sub_100315130();
          v58 = v94;
          sub_1004BD784();
          (*(v76 + 8))(v58, v77);
          (*(v43 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v64 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
          v36 = v105;
          (*(*(v64 - 8) + 56))(v105, 5, 11, v64);
        }

        v32 = v101;
        goto LABEL_29;
      }
    }

    v37 = sub_1004BD4B4();
    swift_allocError();
    v39 = v38;
    sub_100003ABC(&qword_10060C568, &qword_1004DEF90);
    *v39 = v21;
    sub_1004BD794();
    sub_1004BD4A4();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v104 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_100004C6C(v106);
}

uint64_t sub_100310BFC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100310C64()
{
  sub_1004BDBA4();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_1004BDBF4();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004B7644();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v44 - v11;
  v13 = *(v8 + 16);
  v13(&v44 - v11, v1, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v48 = a1;
  if (v14 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    v18 = 7;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.composer(_:))
  {
    v20 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    (*(*(v20 - 8) + 56))(v48, 11, 11, v20);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    goto LABEL_3;
  }

  if (v14 == enum case for GenericMusicItem.genre(_:))
  {
    v22 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    (*(*(v22 - 8) + 56))(v48, 10, 11, v22);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v24 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    (*(*(v24 - 8) + 56))(v48, 5, 11, v24);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v12, v7);
    (*(v4 + 32))(v6, v12, v3);
    v25 = v48;
    sub_1004BB934();
    (*(v4 + 8))(v6, v3);
    v26 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    return (*(*(v26 - 8) + 56))(v25, 0, 11, v26);
  }

  if (v14 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v27 = enum case for Playlist.Variant.folder(_:);
    v28 = sub_1004BB914();
    v29 = *(v28 - 8);
    v30 = v48;
    (*(v29 + 104))(v48, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    (*(*(v31 - 8) + 56))(v30, 0, 11, v31);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v14 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v33 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    (*(*(v33 - 8) + 56))(v48, 8, 11, v33);
    return (*(v8 + 8))(v12, v7);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v12, v7);
    v32 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    return (*(*(v32 - 8) + 56))(v48, 9, 11, v32);
  }

  if (v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v12, v7);
    v23 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    return (*(*(v23 - 8) + 56))(v48, 6, 11, v23);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1;
LABEL_3:
    v18 = 1;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_100609C18 != -1)
  {
    swift_once();
  }

  v34 = sub_1004B80B4();
  sub_100007084(v34, static Logger.artwork);
  (v13)(v47, v1, v7);
  v35 = sub_1004B8094();
  v46 = sub_1004BC994();
  if (os_log_type_enabled(v35, v46))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v36 = 136315394;
    *(v36 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v49);
    *(v36 + 12) = 2080;
    sub_100315328(&qword_10060AA20, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v37 = v47;
    v38 = sub_1004BD934();
    v40 = v39;
    v41 = *(v8 + 8);
    v41(v37, v7);
    v42 = sub_1002C4260(v38, v40, &v49);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v35, v46, "Unhandled case for %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v8 + 8);
    v41(v47, v7);
  }

  v43 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  (*(*(v43 - 8) + 56))(v48, 1, 11, v43);
  return (v41)(v12, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v2 = &v33[-v1];
  v3 = sub_1004B7BB4();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004B7644();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin();
  v12 = &v33[-v11];
  v13 = *(v7 + 16);
  v13(&v33[-v11], v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  v20 = v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.editorialItem(_:) || v14 == enum case for GenericMusicItem.genre(_:);
  if (v20 || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.playlistFolder(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v7 + 96))(v12, v6);
    v22 = v35;
    (*(v35 + 32))(v5, v12, v3);
    sub_1002BEA2C(v2);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v2, 1, v23) == 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_100007214(v2, &qword_10060EF20, &qword_1004D9F00);
    }

    else if (sub_1004BB654() < 1 || sub_1004BB664() < 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_100314E1C(v2, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_1004BB654();
      sub_1004BB664();
      (*(v22 + 8))(v5, v3);
      return sub_100314E1C(v2, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_100609C18 != -1)
  {
    swift_once();
  }

  v24 = sub_1004B80B4();
  sub_100007084(v24, static Logger.artwork);
  (v13)(v9, v0, v6);
  v25 = sub_1004B8094();
  v26 = sub_1004BC994();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v36);
    *(v27 + 12) = 2080;
    sub_100315328(&qword_10060AA20, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v34 = v26;
    v28 = sub_1004BD934();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = sub_1002C4260(v28, v30, &v36);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v34, "Unhandled case for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
  }

  return (v31)(v12, v6);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_1004BB914();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_1004BBE24();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_1004BB584();
    v14 = [v13 token];
    sub_1004BD284();
    swift_unknownObjectRelease();
    sub_100009130(0, &qword_10060C578, MPStoreArtworkRequestToken_ptr);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_1004BB634();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_100315370(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004BB634();
  v6 = __chkstk_darwin();
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_1004BBE64();
  v11 = v10;
  if (v9 == sub_1004BBE64() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_1004BD9C4();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_1004BB5B4();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_1004BBE64();
  v18 = v17;
  if (v16 == sub_1004BBE64() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_1004BD9C4();

  if (v21)
  {
LABEL_19:
    sub_1004BB5D4();
    goto LABEL_17;
  }

  v22 = sub_1004BBE64();
  v24 = v23;
  if (v22 == sub_1004BBE64() && v24 == v25)
  {

LABEL_21:
    sub_1004BB5E4();
    goto LABEL_17;
  }

  v28 = sub_1004BD9C4();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_1004BBE64();
  v31 = v30;
  if (v29 == sub_1004BBE64() && v31 == v32)
  {

LABEL_26:
    sub_1004BB614();
    goto LABEL_17;
  }

  v33 = sub_1004BD9C4();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_1004BBE64();
  v36 = v35;
  if (v34 == sub_1004BBE64() && v36 == v37)
  {

LABEL_31:
    sub_1004BB604();
    goto LABEL_17;
  }

  v38 = sub_1004BD9C4();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_1004BBE64();
  v41 = v40;
  if (v39 == sub_1004BBE64() && v41 == v42)
  {

LABEL_36:
    sub_1004BB624();
    goto LABEL_17;
  }

  v43 = sub_1004BD9C4();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_1004BBE64();
  v46 = v45;
  if (v44 == sub_1004BBE64() && v46 == v47)
  {

LABEL_41:
    sub_1004BB5C4();
    goto LABEL_17;
  }

  v48 = sub_1004BD9C4();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_1004BBE64();
  v51 = v50;
  if (v49 == sub_1004BBE64() && v51 == v52)
  {

LABEL_46:
    sub_1004BB5F4();
    goto LABEL_17;
  }

  v53 = sub_1004BD9C4();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_1004BBE64();
  v56 = v55;
  if (v54 == sub_1004BBE64() && v56 == v57)
  {

LABEL_51:
    sub_1004BB5A4();
    goto LABEL_17;
  }

  v58 = sub_1004BD9C4();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_100312950()
{
  v0 = sub_1004BB634();
  sub_100007108(v0, static Artwork.CropStyle.fallback);
  sub_100007084(v0, static Artwork.CropStyle.fallback);
  return sub_1004BB5B4();
}

uint64_t sub_1003129D4()
{
  v0 = sub_1004BB594();
  sub_100007108(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_100007084(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100009130(0, &qword_10060A758, MPArtworkCatalog_ptr);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_1004BB584();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1004BB6C4();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_100312B88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.artwork);
  sub_100007084(v2, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

uint64_t sub_100312C44@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100007084(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100312CE8()
{
  v0 = sub_100003ABC(&qword_10060C400, &unk_1004DEE90);
  sub_100007108(v0, qword_10060C3E0);
  v1 = sub_100007084(v0, qword_10060C3E0);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_100312D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609C20 != -1)
  {
    swift_once();
  }

  v2 = sub_100003ABC(&qword_10060C400, &unk_1004DEE90);
  v3 = sub_100007084(v2, qword_10060C3E0);
  return sub_10000F778(v3, a1, &qword_10060C400, &unk_1004DEE90);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_100314DA8();
  sub_1004B9194();
  return sub_100312F30;
}

void sub_100312F30(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_10000F778((*a1)[3], (*a1)[2], &qword_10060C400, &unk_1004DEE90);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_10000F778(v3[2], v3[1], &qword_10060C400, &unk_1004DEE90);
    sub_1004B91A4();
    sub_100007214(v6, &qword_10060C400, &unk_1004DEE90);
  }

  else
  {
    sub_1004B91A4();
  }

  sub_100007214(v4, &qword_10060C400, &unk_1004DEE90);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_100313040(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  sub_100003ABC(&qword_10060C418, &qword_1004DEEB0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_1004BA7E4();
  v19 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060C400, &unk_1004DEE90);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a2, v9, &qword_10060C400, &unk_1004DEE90);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100007214(v9, &qword_10060C400, &unk_1004DEE90);
  }

  sub_100315370(v9, v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_10000F778(v13, &v21, &qword_10060E040, &unk_1004E1710);
  if (v22)
  {
    sub_100013414(&v21, v23);
    v15 = v20;
    sub_100007214(v20, &qword_10060E040, &unk_1004E1710);
    sub_100013414(v23, v15);
  }

  else
  {
    sub_100007214(&v21, &qword_10060E040, &unk_1004E1710);
    v15 = v20;
  }

  v16 = v19;
  sub_10000F778((v13 + 40), &v21, &qword_10060E040, &unk_1004E1710);
  if (v22)
  {
    sub_100013414(&v21, v23);
    sub_100007214(v15 + 40, &qword_10060E040, &unk_1004E1710);
    sub_100013414(v23, v15 + 40);
  }

  else
  {
    sub_100007214(&v21, &qword_10060E040, &unk_1004E1710);
  }

  sub_10000F778(&v13[*(v10 + 24)], v4, &qword_10060C418, &qword_1004DEEB0);
  sub_100314E1C(v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v16 + 48))(v4, 1, v5) == 1)
  {
    return sub_100007214(v4, &qword_10060C418, &qword_1004DEEB0);
  }

  v17 = *(v16 + 32);
  v17(v7, v4, v5);
  v18 = *(v10 + 24);
  sub_100007214(v15 + v18, &qword_10060C418, &qword_1004DEEB0);
  v17((v15 + v18), v7, v5);
  return (*(v16 + 56))(v15 + v18, 0, 1, v5);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_100003ABC(&qword_10060C580, &qword_1004DEF98) + 36));
  v6 = *(sub_100003ABC(&qword_10060C588, &qword_1004DEFA0) + 28);
  sub_100313588(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_100003ABC(&qword_10060C590, &qword_1004DEFA8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_100313588@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_100003ABC(&qword_10060C418, &qword_1004DEEB0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_100003ABC(&qword_10060C400, &unk_1004DEE90);
  __chkstk_darwin();
  v7 = &v15 - v6;
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_100308C90(v7);
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = sub_1004BA7E4();
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v11 = *(*(v10 - 8) + 56);
    v11(v5, 1, 1, v10);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v16 = v2;
    v12 = *(v8 + 24);
    v11(&a1[v12], 1, 1, v10);
    sub_100047A5C(v19, a1, &qword_10060E040, &unk_1004E1710);
    sub_100047A5C(v17, (a1 + 40), &qword_10060E040, &unk_1004E1710);
    v13 = &a1[v12];
    v2 = v16;
    sub_100047A5C(v5, v13, &qword_10060C418, &qword_1004DEEB0);
    if (v9(v7, 1, v8) != 1)
    {
      sub_100007214(v7, &qword_10060C400, &unk_1004DEE90);
    }
  }

  else
  {
    sub_100315370(v7, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v4 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F778(a1, v6, &qword_10060C400, &unk_1004DEE90);
  v10 = *(v7 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68, &qword_1004D9EC0);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100025B04(v6, v12 + v11, &qword_10060C400, &unk_1004DEE90);
  *v9 = sub_1003153FC;
  v9[1] = v12;
  sub_1004BA124();
  return sub_100314E1C(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v9);
  v12 = *(v8 + 20);
  *(v11 + v12) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68, &qword_1004D9EC0);
  swift_storeEnumTagMultiPayload();
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100025B04(v7, v14 + v13, &qword_10060C400, &unk_1004DEE90);
  *v11 = sub_100318370;
  v11[1] = v14;
  sub_1004BA124();
  return sub_100314E1C(v11, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  *(v8 + v10) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68, &qword_1004D9EC0);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;

  sub_1004BA124();
  return sub_100314E1C(v8, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_1004B87D4() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v9 = &v37[-1] - v8;
  sub_100003ABC(&unk_10060DF20, &qword_1004E15B0);
  __chkstk_darwin();
  v11 = &v37[-1] - v10;
  v13 = *(v12 + 56);
  sub_10000F778(a1, &v37[-1] - v10, &qword_10060EF20, &qword_1004D9F00);
  sub_10000F778(a2, &v11[v13], &qword_10060EF20, &qword_1004D9F00);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10000F778(v11, v9, &qword_10060EF20, &qword_1004D9F00);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_100315370(&v11[v13], v7, type metadata accessor for ArtworkImage.ViewModel);
      v15 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v7);
      sub_100314E1C(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_100314E1C(v9, type metadata accessor for ArtworkImage.ViewModel);
      sub_100007214(v11, &qword_10060EF20, &qword_1004D9F00);
      if (!v15)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100314E1C(v9, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_100007214(v11, &unk_10060DF20, &qword_1004E15B0);
    return 0;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v11, &qword_10060EF20, &qword_1004D9F00);
LABEL_8:
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v16[5], a2 + v16[5]))
  {
    v17 = v16[6];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = *(a2 + v17 + 8);
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    v22 = (a1 + v16[7]);
    v23 = *(v22 + 26);
    v24 = v22[1];
    v36 = *v22;
    v37[0] = v24;
    *(v37 + 10) = v23;
    v25 = (a2 + v16[7]);
    *&v39[10] = *(v25 + 26);
    v26 = v25[1];
    v38 = *v25;
    *v39 = v26;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v36, &v38))
    {
      v27 = v16[8];
      v28 = a1 + v27;
      v29 = *(a1 + v27);
      v30 = *(a1 + v27 + 16);
      v31 = a2 + v27;
      v32 = *(a2 + v27);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v30)
      {
        if (v30 == 1)
        {
          if (v34 != 1 || v29 != v32)
          {
            return 0;
          }
        }

        else if (v34 != 2 || v33 | *&v32)
        {
          return 0;
        }
      }

      else if (v34 || v29 != v32 || *(v28 + 8) != v33)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB914();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060A7B8, &qword_1004DBB60);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = sub_100003ABC(&qword_10060CB40, &qword_1004DFD88);
  __chkstk_darwin();
  v11 = &v28 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060CB48, &unk_1004DFD90);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_100314E7C(a1, &v28 - v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_100314E7C(a2, &v15[v17], type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 11, v18);
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19(&v15[v17], 11, v18) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 4)
      {
        if (v19(&v15[v17], 11, v18) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v19(&v15[v17], 11, v18) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100314E1C(v15, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_100314E7C(v15, v13, type metadata accessor for ArtworkImage.Placeholder);
    if (v19(&v15[v17], 11, v18))
    {
      sub_100007214(v13, &qword_10060A7B8, &qword_1004DBB60);
      goto LABEL_36;
    }

    v22 = *(v9 + 48);
    sub_100025B04(v13, v11, &qword_10060A7B8, &qword_1004DBB60);
    sub_100025B04(&v15[v17], &v11[v22], &qword_10060A7B8, &qword_1004DBB60);
    v24 = v28;
    v23 = v29;
    v25 = *(v28 + 48);
    if (v25(v11, 1, v29) == 1)
    {
      if (v25(&v11[v22], 1, v23) == 1)
      {
        sub_100007214(v11, &qword_10060A7B8, &qword_1004DBB60);
        goto LABEL_35;
      }
    }

    else
    {
      sub_10000F778(v11, v8, &qword_10060A7B8, &qword_1004DBB60);
      if (v25(&v11[v22], 1, v23) != 1)
      {
        (*(v24 + 32))(v6, &v11[v22], v23);
        sub_100315328(&qword_10060CB50, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v26 = sub_1004BBD84();
        v27 = *(v24 + 8);
        v27(v6, v23);
        v27(v8, v23);
        sub_100007214(v11, &qword_10060A7B8, &qword_1004DBB60);
        if (v26)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_100314E1C(v15, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v24 + 8))(v8, v23);
    }

    sub_100007214(v11, &qword_10060CB40, &qword_1004DFD88);
    goto LABEL_44;
  }

  if (v20 <= 8)
  {
    if (v20 == 6)
    {
      if (v19(&v15[v17], 11, v18) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v20 == 7)
    {
      if (v19(&v15[v17], 11, v18) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v19(&v15[v17], 11, v18) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 9)
  {
    if (v19(&v15[v17], 11, v18) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 10)
  {
    if (v19(&v15[v17], 11, v18) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v19(&v15[v17], 11, v18) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_100007214(v15, &qword_10060CB48, &unk_1004DFD90);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB634();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100003ABC(&qword_10060CB58, &unk_1004DFDA0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if ((sub_1004BB6B4() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v13 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v14 = *(v10 + 48);
  sub_10000F778(a1 + v13, v12, &qword_10060DD10, &qword_1004DEE10);
  sub_10000F778(a2 + v13, &v12[v14], &qword_10060DD10, &qword_1004DEE10);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_100007214(v12, &qword_10060DD10, &qword_1004DEE10);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10000F778(v12, v9, &qword_10060DD10, &qword_1004DEE10);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    sub_100007214(v12, &qword_10060CB58, &unk_1004DFDA0);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  sub_100315328(&qword_10060CB60, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
  v18 = sub_1004BBD84();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_100007214(v12, &qword_10060DD10, &qword_1004DEE10);
  return (v18 & 1) != 0;
}

uint64_t sub_100314CDC()
{

  return swift_deallocObject();
}

double sub_100314D14@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_100314DA8()
{
  result = qword_10060C3F8;
  if (!qword_10060C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C3F8);
  }

  return result;
}

uint64_t sub_100314E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100314E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100314EE4()
{
  result = qword_10060C488;
  if (!qword_10060C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C488);
  }

  return result;
}

unint64_t sub_100314F38()
{
  result = qword_10060C490;
  if (!qword_10060C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C490);
  }

  return result;
}

unint64_t sub_100314F8C()
{
  result = qword_10060C498;
  if (!qword_10060C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C498);
  }

  return result;
}

unint64_t sub_100314FE0()
{
  result = qword_10060C4A0;
  if (!qword_10060C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4A0);
  }

  return result;
}

unint64_t sub_100315034()
{
  result = qword_10060C4A8;
  if (!qword_10060C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4A8);
  }

  return result;
}

unint64_t sub_100315088()
{
  result = qword_10060C4B0;
  if (!qword_10060C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4B0);
  }

  return result;
}

unint64_t sub_1003150DC()
{
  result = qword_10060C4B8;
  if (!qword_10060C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4B8);
  }

  return result;
}

unint64_t sub_100315130()
{
  result = qword_10060C4C0;
  if (!qword_10060C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4C0);
  }

  return result;
}

unint64_t sub_100315184()
{
  result = qword_10060C4C8;
  if (!qword_10060C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4C8);
  }

  return result;
}

unint64_t sub_1003151D8()
{
  result = qword_10060C4D8;
  if (!qword_10060C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4D8);
  }

  return result;
}

unint64_t sub_10031522C()
{
  result = qword_10060C4E0;
  if (!qword_10060C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4E0);
  }

  return result;
}

unint64_t sub_100315280()
{
  result = qword_10060C4E8;
  if (!qword_10060C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4E8);
  }

  return result;
}

unint64_t sub_1003152D4()
{
  result = qword_10060C4F0;
  if (!qword_10060C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C4F0);
  }

  return result;
}

uint64_t sub_100315328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100315370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100315400()
{
  v1 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_100004C6C((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_100004C6C(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004BA7E4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1003155A4(uint64_t a1)
{
  v3 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100313040(a1, v4);
}

uint64_t sub_1003156B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BB6C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1003157C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1003158CC(uint64_t a1)
{
  sub_1004BB6C4();
  if (v1 <= 0x3F)
  {
    sub_100315CC8(319, &unk_10060C608, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100315994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100315ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100315BE4(uint64_t a1)
{
  sub_100315CC8(319, &qword_10060C6A0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      sub_100315D2C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100315CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100315D2C()
{
  if (!qword_10060C6A8)
  {
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060C6A8);
    }
  }
}

uint64_t sub_100315D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100315DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100315E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100315ED0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100315F60(uint64_t a1)
{
  sub_100315FB8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100315FB8()
{
  if (!qword_10060C768)
  {
    sub_100315CC8(0, &unk_10060C770, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_10060C768);
    }
  }
}

uint64_t sub_100316044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C798, &qword_1004DF1F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100316194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C798, &qword_1004DF1F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1003162D0(uint64_t a1)
{
  _s3__C6CGSizeVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_100316668(319, &qword_10060C810, &qword_10060C400, &unk_1004DEE90, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100315CC8(319, &unk_10060C818, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1003163FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100003ABC(&qword_10060C418, &qword_1004DEEB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1003164D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C418, &qword_1004DEEB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100316588(uint64_t a1)
{
  sub_100316668(319, &qword_10060C8C0, &qword_10060C8C8, &unk_1004DF210, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100315CC8(319, &unk_10060C8D0, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100316668(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1003166E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060C798, &qword_1004DF1F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003167B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C798, &qword_1004DF1F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100316860(uint64_t a1)
{
  sub_100316910();
  if (v1 <= 0x3F)
  {
    sub_100316668(319, &qword_10060C810, &qword_10060C400, &unk_1004DEE90, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100316910()
{
  result = qword_10060DBE0;
  if (!qword_10060DBE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10060DBE0);
  }

  return result;
}

uint64_t sub_100316960()
{
  sub_100003B68(&qword_10060C998, &qword_1004DF240);
  sub_1003169C4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1003169C4()
{
  result = qword_10060DD40;
  if (!qword_10060DD40)
  {
    sub_100003B68(&qword_10060C998, &qword_1004DF240);
    sub_100316A7C();
    sub_1000206D4(&unk_10060DD80, &qword_10060C9C0, &qword_1004E1270, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DD40);
  }

  return result;
}

unint64_t sub_100316A7C()
{
  result = qword_10060C9A0;
  if (!qword_10060C9A0)
  {
    sub_100003B68(&unk_10060DD50, &qword_1004DF248);
    sub_100316B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9A0);
  }

  return result;
}

unint64_t sub_100316B08()
{
  result = qword_10060C9A8;
  if (!qword_10060C9A8)
  {
    sub_100003B68(&unk_10060DD60, &unk_1004E1260);
    sub_100315328(&qword_10060C9B0, type metadata accessor for ArtworkImage.Placeholder.View, &protocol conformance descriptor for ArtworkImage.Placeholder.View);
    sub_1000206D4(&unk_10060DD70, &qword_10060C9B8, &unk_1004DF250, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9A8);
  }

  return result;
}

unint64_t sub_100316C80()
{
  result = qword_10060EF50;
  if (!qword_10060EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF50);
  }

  return result;
}

unint64_t sub_100316CDC()
{
  result = qword_10060C9C8;
  if (!qword_10060C9C8)
  {
    sub_100003B68(&qword_10060C408, &qword_1004DEEA0);
    sub_100316D94();
    sub_1000206D4(&qword_10060C9F0, &qword_10060C410, &qword_1004DEEA8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9C8);
  }

  return result;
}

unint64_t sub_100316D94()
{
  result = qword_10060C9D0;
  if (!qword_10060C9D0)
  {
    sub_100003B68(&qword_10060C9D8, &qword_1004DF260);
    sub_1000206D4(&qword_10060C9E0, &qword_10060C9E8, &qword_1004DF268, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9D0);
  }

  return result;
}

unint64_t sub_100316E50()
{
  result = qword_10060C9F8;
  if (!qword_10060C9F8)
  {
    sub_100003B68(&qword_10060C580, &qword_1004DEF98);
    sub_1000206D4(&qword_10060CA00, &qword_10060C590, &qword_1004DEFA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000206D4(&qword_10060CA08, &qword_10060C588, &qword_1004DEFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060C9F8);
  }

  return result;
}

uint64_t sub_100316F34(uint64_t *a1)
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_1004B8D64();
  sub_100315328(&unk_10060E000, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003171F4()
{
  result = qword_10060CA10;
  if (!qword_10060CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA10);
  }

  return result;
}

unint64_t sub_10031724C()
{
  result = qword_10060CA18;
  if (!qword_10060CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA18);
  }

  return result;
}

unint64_t sub_1003172A4()
{
  result = qword_10060CA20;
  if (!qword_10060CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA20);
  }

  return result;
}

unint64_t sub_1003172FC()
{
  result = qword_10060CA28;
  if (!qword_10060CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA28);
  }

  return result;
}

unint64_t sub_100317354()
{
  result = qword_10060CA30;
  if (!qword_10060CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA30);
  }

  return result;
}

unint64_t sub_1003173AC()
{
  result = qword_10060CA38;
  if (!qword_10060CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA38);
  }

  return result;
}

unint64_t sub_100317404()
{
  result = qword_10060CA40;
  if (!qword_10060CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA40);
  }

  return result;
}

unint64_t sub_10031745C()
{
  result = qword_10060CA48;
  if (!qword_10060CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA48);
  }

  return result;
}

unint64_t sub_1003174B4()
{
  result = qword_10060CA50;
  if (!qword_10060CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA50);
  }

  return result;
}

unint64_t sub_10031750C()
{
  result = qword_10060CA58;
  if (!qword_10060CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA58);
  }

  return result;
}

unint64_t sub_100317564()
{
  result = qword_10060CA60;
  if (!qword_10060CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA60);
  }

  return result;
}

unint64_t sub_1003175BC()
{
  result = qword_10060CA68;
  if (!qword_10060CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA68);
  }

  return result;
}

unint64_t sub_100317614()
{
  result = qword_10060CA70;
  if (!qword_10060CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA70);
  }

  return result;
}

unint64_t sub_10031766C()
{
  result = qword_10060CA78;
  if (!qword_10060CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA78);
  }

  return result;
}

unint64_t sub_1003176C4()
{
  result = qword_10060CA80;
  if (!qword_10060CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA80);
  }

  return result;
}

unint64_t sub_10031771C()
{
  result = qword_10060CA88;
  if (!qword_10060CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA88);
  }

  return result;
}

unint64_t sub_100317774()
{
  result = qword_10060CA90;
  if (!qword_10060CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA90);
  }

  return result;
}

unint64_t sub_1003177CC()
{
  result = qword_10060CA98;
  if (!qword_10060CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CA98);
  }

  return result;
}

unint64_t sub_100317824()
{
  result = qword_10060CAA0;
  if (!qword_10060CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAA0);
  }

  return result;
}

unint64_t sub_10031787C()
{
  result = qword_10060CAA8;
  if (!qword_10060CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAA8);
  }

  return result;
}

unint64_t sub_1003178D4()
{
  result = qword_10060CAB0;
  if (!qword_10060CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAB0);
  }

  return result;
}

unint64_t sub_10031792C()
{
  result = qword_10060CAB8;
  if (!qword_10060CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAB8);
  }

  return result;
}

unint64_t sub_100317984()
{
  result = qword_10060CAC0;
  if (!qword_10060CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAC0);
  }

  return result;
}

unint64_t sub_1003179DC()
{
  result = qword_10060CAC8;
  if (!qword_10060CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAC8);
  }

  return result;
}

unint64_t sub_100317A34()
{
  result = qword_10060CAD0;
  if (!qword_10060CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAD0);
  }

  return result;
}

unint64_t sub_100317A8C()
{
  result = qword_10060CAD8;
  if (!qword_10060CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAD8);
  }

  return result;
}

unint64_t sub_100317AE4()
{
  result = qword_10060CAE0;
  if (!qword_10060CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAE0);
  }

  return result;
}

unint64_t sub_100317B3C()
{
  result = qword_10060CAE8;
  if (!qword_10060CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CAE8);
  }

  return result;
}

uint64_t sub_100317B90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_1004BD9C4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_1004BD9C4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_1004BD9C4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1004BD9C4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_100317F5C()
{
  result = qword_10060CB08;
  if (!qword_10060CB08)
  {
    sub_100003B68(&qword_10060CB00, &qword_1004DFD58);
    sub_100318014();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB08);
  }

  return result;
}

unint64_t sub_100318014()
{
  result = qword_10060CB10;
  if (!qword_10060CB10)
  {
    sub_100003B68(&qword_10060CB18, &qword_1004DFD60);
    sub_1000206D4(&qword_10060CB20, &qword_10060CB28, &qword_1004DFD68, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB10);
  }

  return result;
}

uint64_t sub_1003180CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CAF8, &qword_1004DFD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031813C()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_1004BB914();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_1003182B8@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_10030C02C(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10031AF7C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1003183C0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1004B8654();
  return sub_1002B1470;
}

uint64_t sub_100318448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CAB8();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003184AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CAB8();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100318510(uint64_t a1)
{
  v2 = sub_10031CAB8();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v11[3] = sub_1004B8C04();
  v11[4] = &protocol witness table for TintShapeStyle;
  sub_1000133B0(v11);
  sub_1004B8BF4();
  v10 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v10, v1, v6);
  v8 = v7;
  sub_10031B990(&v10);
  return v8;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2, __n128 a3)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_10001342C((a1 + 1), v58);
      sub_100009178(v58, v58[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v24 = sub_1004BBE24();
      v25 = [objc_opt_self() systemImageNamed:v24];

      if (v25)
      {
        v26 = [v25 imageWithConfiguration:*a1];

        v27 = [v26 imageWithRenderingMode:2];
        sub_1004BA314();
        v28 = sub_1004B9D94();
        v30 = v29;
        v32 = v31;
        v33 = sub_1004B9CB4();
        v35 = v34;
        v37 = v36;
        sub_10002FA24(v28, v30, v32 & 1);

        v38 = sub_1004B9C84();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        sub_10002FA24(v33, v35, v37 & 1);

        v45 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
        v46 = *v45;
        v47 = v45[1];

        Text.accessibilityLabel(_:)(v46, v47, v38, v40, v42 & 1, v44);

        sub_10002FA24(v38, v40, v42 & 1);

        sub_100004C6C(v58);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        sub_1004BA344();
        v3 = sub_1004B9D94();
        v5 = v4;
        v7 = v6;
        v8 = sub_1004B9CB4();
        v10 = v9;
        v12 = v11;
        sub_10002FA24(v3, v5, v7 & 1);

        LODWORD(v58[0]) = sub_1004B9654();
        v13 = sub_1004B9C84();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        sub_10002FA24(v8, v10, v12 & 1);

        v20 = AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();
        v21 = *v20;
        v22 = v20[1];

        Text.accessibilityLabel(_:)(v21, v22, v13, v15, v17 & 1, v19);

        sub_10002FA24(v13, v15, v17 & 1);
      }

      else
      {
        v49 = String.nonBreakingSpace.unsafeMutableAddressor();
        v51 = *v49;
        v50 = v49[1];
        v56 = v51;
        v57 = v50;

        v52 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v54 = *v52;
        v53 = v52[1];

        v59._countAndFlagsBits = v54;
        v59._object = v53;
        sub_1004BC024(v59);

        v55 = v56;
        LODWORD(v56) = sub_1004B9654();
        Text.playableForegroundStyle<A>(_:isPlayable:)(&v56, a2 & 1, v55, v57, 0, _swiftEmptyArrayStorage, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = sub_1004B8C04();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_1000133B0(a1 + 1);
  result = sub_1004B8BF4();
  *a1 = v5;
  return result;
}

uint64_t sub_100318BD0()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_100318C4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10031BB64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100318C74(uint64_t a1)
{
  v2 = sub_10031B9C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318CB0(uint64_t a1)
{
  v2 = sub_10031B9C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318CEC(uint64_t a1)
{
  v2 = sub_10031BB10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318D28(uint64_t a1)
{
  v2 = sub_10031BB10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100318D80(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1004BD9C4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100318E10(uint64_t a1)
{
  v2 = sub_10031BABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318E4C(uint64_t a1)
{
  v2 = sub_10031BABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318E88(uint64_t a1)
{
  v2 = sub_10031BA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318EC4(uint64_t a1)
{
  v2 = sub_10031BA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100318F00(uint64_t a1)
{
  v2 = sub_10031BA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100318F3C(uint64_t a1)
{
  v2 = sub_10031BA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_100003ABC(&qword_10060CB68, &qword_1004DFDB0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v22 - v4;
  v5 = sub_100003ABC(&qword_10060CB70, &qword_1004DFDB8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin();
  v24 = &v22 - v6;
  v25 = sub_100003ABC(&qword_10060CB78, &qword_1004DFDC0);
  v23 = *(v25 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = sub_100003ABC(&qword_10060CB80, &qword_1004DFDC8);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = sub_100003ABC(&qword_10060CB88, &qword_1004DFDD0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v22 - v14;
  sub_100009178(a1, a1[3]);
  sub_10031B9C0();
  v16 = v31;
  sub_1004BDC44();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_10031BB10();
      sub_1004BD824();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_10031BA68();
      v17 = v24;
      sub_1004BD824();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_10031BA14();
      v17 = v28;
      sub_1004BD824();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_10031BABC();
  sub_1004BD824();
  v21 = v25;
  sub_1004BD864();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100319424@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10031BCCC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = sub_1004B80B4();
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BB564();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin();
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBA84();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BB384();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin();
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BAD04();
  isa = v12[-1].isa;
  v69 = v12;
  __chkstk_darwin();
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060CBB8, &qword_1004DFDD8);
  __chkstk_darwin();
  v15 = &v55 - v14;
  v16 = sub_1004BB434();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B7644();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v56 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin();
  v25 = &v55 - v24;
  v26 = *(v21 + 16);
  v57 = v3;
  v27 = v3;
  v28 = v26;
  (v26)(&v55 - v24, v27, v20, v23);
  v29 = (*(v21 + 88))(v25, v20);
  if (v29 != enum case for GenericMusicItem.album(_:))
  {
    if (v29 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v21 + 96))(v25, v20);
      v33 = v70;
      v32 = v71;
      (*(v70 + 32))(v7, v25, v71);
      sub_1004BB4F4();
      v34 = sub_1004B7744();
      (*(*(v34 - 8) + 56))(v15, 0, 1, v34);
      v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v15);
      (*(v33 + 8))(v7, v32);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.composer(_:) || v29 == enum case for GenericMusicItem.creditArtist(_:) || v29 == enum case for GenericMusicItem.curator(_:) || v29 == enum case for GenericMusicItem.editorialItem(_:) || v29 == enum case for GenericMusicItem.genre(_:) || v29 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v21 + 96))(v25, v20);
      v35 = v67;
      v36 = isa;
      v37 = v69;
      (*(isa + 4))(v67, v25, v69);
      sub_1004BACA4();
LABEL_15:
      v38 = sub_1004B7744();
      (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
      v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v15);
      (*(v36 + 1))(v35, v37);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v21 + 96))(v25, v20);
      v35 = v64;
      v36 = v65;
      v37 = v66;
      v65[4](v64, v25, v66);
      sub_1004BB874();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.playlistFolder(_:) || v29 == enum case for GenericMusicItem.radioShow(_:) || v29 == enum case for GenericMusicItem.recordLabel(_:) || v29 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.song(_:))
    {
      (*(v21 + 96))(v25, v20);
      v35 = v61;
      v36 = v62;
      v37 = v63;
      v62[4](v61, v25, v63);
      sub_1004BB274();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.station(_:) || v29 == enum case for GenericMusicItem.tvEpisode(_:) || v29 == enum case for GenericMusicItem.tvSeason(_:) || v29 == enum case for GenericMusicItem.tvShow(_:) || v29 == enum case for GenericMusicItem.uploadedAudio(_:) || v29 == enum case for GenericMusicItem.uploadedVideo(_:) || v29 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v21 + 8))(v25, v20);
    }

    else
    {
      v39 = Logger.badging.unsafeMutableAddressor();
      v41 = v58;
      v40 = v59;
      v42 = v60;
      (*(v58 + 16))(v59, v39, v60);
      v43 = v56;
      v28(v56, v57, v20);
      v44 = sub_1004B8094();
      v45 = sub_1004BC994();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v70) = v45;
        v47 = v46;
        v71 = swift_slowAlloc();
        v72 = v71;
        *v47 = 136315394;
        *(v47 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v72);
        *(v47 + 12) = 2080;
        sub_10031CB0C(&qword_10060AA20, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v48 = sub_1004BD934();
        v50 = v49;
        v51 = *(v21 + 8);
        v69 = v44;
        v51(v43, v20);
        v52 = sub_1002C4260(v48, v50, &v72);

        *(v47 + 14) = v52;
        v53 = v69;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unhandled case for favorite badge with item: %s, %s", v47, 0x16u);
        swift_arrayDestroy();

        (*(v41 + 8))(v59, v60);
      }

      else
      {

        v51 = *(v21 + 8);
        v51(v43, v20);
        (*(v41 + 8))(v40, v42);
      }

      v51(v25, v20);
    }

    return 2;
  }

  (*(v21 + 96))(v25, v20);
  (*(v17 + 32))(v19, v25, v16);
  sub_1004BB3A4();
  v30 = sub_1004B7744();
  (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
  v31 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v15);
  (*(v17 + 8))(v19, v16);
  return v31;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1, uint64_t a2)
{
  LODWORD(v97) = a1;
  v69 = sub_1004B80B4();
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v67 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1004B7C94();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7A34();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin();
  v93 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1004B7C34();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060CBC0, &qword_1004DFDE0);
  __chkstk_darwin();
  v96 = &v63 - v7;
  v8 = sub_1004B7CF4();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin();
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1004B7BB4();
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004B7B64();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BBA84();
  v89 = *(v12 - 8);
  v90 = v12;
  __chkstk_darwin();
  v88 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BB744();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v82 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB384();
  v86 = *(v16 - 8);
  v87 = v16;
  __chkstk_darwin();
  v85 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BAD04();
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin();
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060CBC8, &qword_1004DFDE8);
  __chkstk_darwin();
  v22 = &v63 - v21;
  v23 = sub_1004BB434();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1004B7644();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v63 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin();
  v32 = &v63 - v31;
  v33 = *(v28 + 16);
  v33(&v63 - v31, v98, v27, v30);
  v34 = (*(v28 + 88))(v32, v27);
  if (v34 != enum case for GenericMusicItem.album(_:))
  {
    v36 = v97;
    if (v34 == enum case for GenericMusicItem.artist(_:) || v34 == enum case for GenericMusicItem.composer(_:) || v34 == enum case for GenericMusicItem.creditArtist(_:) || v34 == enum case for GenericMusicItem.curator(_:) || v34 == enum case for GenericMusicItem.editorialItem(_:) || v34 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v34 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v28 + 96))(v32, v27);
      v37 = v93;
      v38 = v94;
      v39 = v95;
      (*(v94 + 32))(v93, v32, v95);
      v40 = v96;
      sub_1004B79F4();
LABEL_11:
      v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v40, v36 & 1);
      (*(v38 + 8))(v37, v39);
      return v35;
    }

    if (v34 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v28 + 96))(v32, v27);
      v42 = v91;
      v41 = v92;
      (*(v91 + 32))(v20, v32, v92);
      sub_1004BACC4();
      v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v22, v36 & 1);
      (*(v42 + 8))(v20, v41);
      return v35;
    }

    if (v34 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v28 + 96))(v32, v27);
      v43 = v88;
      v44 = v89;
      v45 = v90;
      (*(v89 + 32))(v88, v32, v90);
      sub_1004BB864();
LABEL_16:
      v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v22, v36 & 1);
      (*(v44 + 8))(v43, v45);
      return v35;
    }

    if (v34 == enum case for GenericMusicItem.playlistFolder(_:) || v34 == enum case for GenericMusicItem.radioShow(_:) || v34 == enum case for GenericMusicItem.recordLabel(_:) || v34 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v34 == enum case for GenericMusicItem.song(_:))
    {
      (*(v28 + 96))(v32, v27);
      v43 = v85;
      v44 = v86;
      v45 = v87;
      (*(v86 + 32))(v85, v32, v87);
      sub_1004BB2F4();
      goto LABEL_16;
    }

    if (v34 == enum case for GenericMusicItem.station(_:))
    {
      (*(v28 + 96))(v32, v27);
      v46 = v82;
      v47 = v83;
      v48 = v84;
      (*(v83 + 32))(v82, v32, v84);
      sub_1004BB704();
LABEL_25:
      v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v22, v36 & 1);
      (*(v47 + 8))(v46, v48);
      return v35;
    }

    if (v34 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v28 + 96))(v32, v27);
      v37 = v79;
      v38 = v80;
      v39 = v81;
      (*(v80 + 32))(v79, v32, v81);
      v40 = v96;
      sub_1004B7CA4();
      goto LABEL_11;
    }

    if (v34 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v28 + 96))(v32, v27);
      v49 = v77;
      v50 = v76;
      v51 = v78;
      (*(v77 + 32))(v76, v32, v78);
      v52 = v96;
      sub_1004B7C54();
      v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v52, v36 & 1);
      (*(v49 + 8))(v50, v51);
      return v35;
    }

    if (v34 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v28 + 96))(v32, v27);
      v38 = v74;
      v37 = v73;
      v39 = v75;
      (*(v74 + 32))(v73, v32, v75);
      v40 = v96;
      sub_1004B7BF4();
      goto LABEL_11;
    }

    if (v34 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v28 + 96))(v32, v27);
      v47 = v71;
      v46 = v70;
      v48 = v72;
      (*(v71 + 32))(v70, v32, v72);
      sub_1004B7B24();
      goto LABEL_25;
    }

    if (v34 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v28 + 96))(v32, v27);
      v47 = v65;
      v46 = v64;
      v48 = v66;
      (*(v65 + 32))(v64, v32, v66);
      sub_1004B7B74();
      goto LABEL_25;
    }

    if (v34 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v28 + 8))(v32, v27);
    }

    else
    {
      v54 = Logger.badging.unsafeMutableAddressor();
      (*(v68 + 16))(v67, v54, v69);
      (v33)(v63, v98, v27);
      v55 = sub_1004B8094();
      LODWORD(v98) = sub_1004BC964();
      if (os_log_type_enabled(v55, v98))
      {
        v56 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v99 = v97;
        *v56 = 136315394;
        *(v56 + 4) = sub_1002C4260(0xD000000000000010, 0x8000000100507860, &v99);
        *(v56 + 12) = 2080;
        sub_10031CB0C(&qword_10060AA20, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v57 = v63;
        v58 = sub_1004BD934();
        v60 = v59;
        v61 = *(v28 + 8);
        v61(v57, v27);
        v62 = sub_1002C4260(v58, v60, &v99);

        *(v56 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v55, v98, "Unhandled case for explicit badge with item: %s, %s", v56, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v61 = *(v28 + 8);
        v61(v63, v27);
      }

      (*(v68 + 8))(v67, v69);
      v61(v32, v27);
    }

    return 2;
  }

  (*(v28 + 96))(v32, v27);
  (*(v24 + 32))(v26, v32, v23);
  sub_1004BB3F4();
  v35 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v22, v97 & 1);
  (*(v24 + 8))(v26, v23);
  return v35;
}

double sub_10031AF7C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1004B9C44();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_1004B9C14();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  sub_1004B9C34();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  sub_1004B9C34();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_1004B9C34();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_1004B9C24();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  sub_1004B9C34();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = sub_1004BB244();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003ABC(&qword_10060CC80, &unk_1004E0448) - 8;
  __chkstk_darwin();
  v9 = &v20[-v8];
  sub_100003ABC(&qword_10060CBC8, &qword_1004DFDE8);
  __chkstk_darwin();
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v20[-v13];
  (*(v4 + 104))(&v20[-v13], enum case for ContentRating.explicit(_:), v3, v12);
  (*(v4 + 56))(v14, 0, 1, v3);
  v15 = *(v7 + 56);
  sub_10000F778(a1, v9, &qword_10060CBC8, &qword_1004DFDE8);
  sub_10000F778(v14, &v9[v15], &qword_10060CBC8, &qword_1004DFDE8);
  v16 = *(v4 + 48);
  if (v16(v9, 1, v3) != 1)
  {
    sub_10000F778(v9, v11, &qword_10060CBC8, &qword_1004DFDE8);
    if (v16(&v9[v15], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v15], v3);
      sub_10031CB0C(&qword_10060CC88, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = sub_1004BBD84();
      sub_100007214(a1, &qword_10060CBC8, &qword_1004DFDE8);
      v19 = *(v4 + 8);
      v19(v6, v3);
      sub_100007214(v14, &qword_10060CBC8, &qword_1004DFDE8);
      v19(v11, v3);
      sub_100007214(v9, &qword_10060CBC8, &qword_1004DFDE8);
      if (v18)
      {
        return v21 & 1;
      }

      return 2;
    }

    sub_100007214(a1, &qword_10060CBC8, &qword_1004DFDE8);
    sub_100007214(v14, &qword_10060CBC8, &qword_1004DFDE8);
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_100007214(v9, &qword_10060CC80, &unk_1004E0448);
    return 2;
  }

  sub_100007214(a1, &qword_10060CBC8, &qword_1004DFDE8);
  sub_100007214(v14, &qword_10060CBC8, &qword_1004DFDE8);
  if (v16(&v9[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v9, &qword_10060CBC8, &qword_1004DFDE8);
  return v21 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  sub_100003ABC(&qword_10060CBC0, &qword_1004DFDE0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_1004B7BD4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a1, v5, &qword_10060CBC0, &qword_1004DFDE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007214(a1, &qword_10060CBC0, &qword_1004DFDE0);
    sub_100007214(v5, &qword_10060CBC0, &qword_1004DFDE0);
    return 2;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_1004B7BC4();
    sub_100007214(a1, &qword_10060CBC0, &qword_1004DFDE0);
    (*(v7 + 8))(v9, v6);
    result = 2;
    if (v11 != 2)
    {
      if (v11)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  sub_100003ABC(&qword_10060CBB8, &qword_1004DFDD8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_10000F778(a1, &v11 - v4, &qword_10060CBB8, &qword_1004DFDD8);
  v6 = sub_1004B7744();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_10000F778(v5, v3, &qword_10060CBB8, &qword_1004DFDD8);
    v8 = (*(v7 + 88))(v3, v6);
    if (v8 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v8 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v9 = 3;
        goto LABEL_4;
      }

      if (v8 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v7 + 8))(v3, v6);
      }
    }
  }

  v9 = 2;
LABEL_4:
  sub_100007214(v5, &qword_10060CBB8, &qword_1004DFDD8);
  sub_100007214(a1, &qword_10060CBB8, &qword_1004DFDD8);
  return v9;
}

unint64_t sub_10031B9C0()
{
  result = qword_10060CB90;
  if (!qword_10060CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB90);
  }

  return result;
}

unint64_t sub_10031BA14()
{
  result = qword_10060CB98;
  if (!qword_10060CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CB98);
  }

  return result;
}

unint64_t sub_10031BA68()
{
  result = qword_10060CBA0;
  if (!qword_10060CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBA0);
  }

  return result;
}

unint64_t sub_10031BABC()
{
  result = qword_10060CBA8;
  if (!qword_10060CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBA8);
  }

  return result;
}

unint64_t sub_10031BB10()
{
  result = qword_10060CBB0;
  if (!qword_10060CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBB0);
  }

  return result;
}

uint64_t sub_10031BB64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004BD9C4();

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

uint64_t sub_10031BCCC(void *a1)
{
  v39 = sub_100003ABC(&qword_10060CC58, &qword_1004E0418);
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v32 - v2;
  v38 = sub_100003ABC(&qword_10060CC60, &qword_1004E0420);
  v40 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &v32 - v3;
  v4 = sub_100003ABC(&qword_10060CC68, &qword_1004E0428);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100003ABC(&qword_10060CC70, &qword_1004E0430);
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_100003ABC(&qword_10060CC78, &unk_1004E0438);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_100009178(a1, v15);
  sub_10031B9C0();
  v16 = v44;
  sub_1004BDC34();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_1004BD814();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_100310BFC();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_1004BD4B4();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_100003ABC(&qword_10060C568, &qword_1004DEF90);
      *v26 = &type metadata for TextBadge;
      sub_1004BD794();
      sub_1004BD4A4();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_10031BA68();
        sub_1004BD784();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_10031BA14();
        sub_1004BD784();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_10031BABC();
      v29 = v34;
      sub_1004BD784();
      v30 = v36;
      v31 = sub_1004BD7D4();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_10031BB10();
      sub_1004BD784();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_100004C6C(v45);
  return v12;
}

unint64_t sub_10031C3AC()
{
  result = qword_10060CBD0;
  if (!qword_10060CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBD0);
  }

  return result;
}

unint64_t sub_10031C404()
{
  result = qword_10060CBD8;
  if (!qword_10060CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBD8);
  }

  return result;
}

unint64_t sub_10031C45C()
{
  result = qword_10060CBE0;
  if (!qword_10060CBE0)
  {
    sub_100003B68(&qword_10060CBE8, &qword_1004DFE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10031C69C()
{
  result = qword_10060CBF0;
  if (!qword_10060CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBF0);
  }

  return result;
}

unint64_t sub_10031C6F4()
{
  result = qword_10060CBF8;
  if (!qword_10060CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CBF8);
  }

  return result;
}

unint64_t sub_10031C74C()
{
  result = qword_10060CC00;
  if (!qword_10060CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC00);
  }

  return result;
}

unint64_t sub_10031C7A4()
{
  result = qword_10060CC08;
  if (!qword_10060CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC08);
  }

  return result;
}

unint64_t sub_10031C7FC()
{
  result = qword_10060CC10;
  if (!qword_10060CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC10);
  }

  return result;
}

unint64_t sub_10031C854()
{
  result = qword_10060CC18;
  if (!qword_10060CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC18);
  }

  return result;
}

unint64_t sub_10031C8AC()
{
  result = qword_10060CC20;
  if (!qword_10060CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC20);
  }

  return result;
}

unint64_t sub_10031C904()
{
  result = qword_10060CC28;
  if (!qword_10060CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC28);
  }

  return result;
}

unint64_t sub_10031C95C()
{
  result = qword_10060CC30;
  if (!qword_10060CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC30);
  }

  return result;
}

unint64_t sub_10031C9B4()
{
  result = qword_10060CC38;
  if (!qword_10060CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC38);
  }

  return result;
}

unint64_t sub_10031CA0C()
{
  result = qword_10060CC40;
  if (!qword_10060CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC40);
  }

  return result;
}

unint64_t sub_10031CA64()
{
  result = qword_10060CC48;
  if (!qword_10060CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC48);
  }

  return result;
}

unint64_t sub_10031CAB8()
{
  result = qword_10060CC50;
  if (!qword_10060CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC50);
  }

  return result;
}

uint64_t sub_10031CB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C4D40;
  if (a3)
  {
    a3 = sub_1004BBE24();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10031CD74(0, v8);
  isa = sub_1004BC284().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C4D40;
  if (a4)
  {
    a4 = sub_1004BBE24();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_10031CD74(0, v8);
  isa = sub_1004BC284().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_10031CD74(uint64_t a1, uint64_t a2)
{
  result = qword_10060CC90;
  if (!qword_10060CC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060CC90);
  }

  return result;
}

uint64_t sub_10031CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CEF4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10031CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031CEF4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10031CEBC(uint64_t a1)
{
  sub_10031CEF4();
  sub_1004B94B4();
  __break(1u);
}

unint64_t sub_10031CEF4()
{
  result = qword_10060CC98;
  if (!qword_10060CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CC98);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = *((swift_isaMask & *v4) + 0x58);
  type metadata accessor for Card.ViewController.RootViewController(0, v7, v8, a4);
  v12 = sub_10031EA14(a1, v9, v10, v11);
  *&v5[qword_10060CCA0] = v12;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for Card.ViewController(0, v7, v8, v13);
  v14 = v12;
  v15 = objc_msgSendSuper2(&v25, "initWithRootViewController:", v14);
  [v15 setModalPresentationStyle:{2, v25.receiver, v25.super_class}];
  v16 = [v15 sheetPresentationController];

  if (v16)
  {
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 _setNonLargeBackground:v17];

    sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1004C4D40;
    sub_100009130(0, &qword_10060CCA8, UISheetPresentationControllerDetent_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = v15;
    v22 = sub_1004BCD64();

    *(v18 + 32) = v22;
    isa = sub_1004BC284().super.isa;

    [v16 setDetents:isa];

    [v16 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  return v15;
}

id sub_10031D254(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10031DF44(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Card.ViewController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_10031DF44(0, 1);
  [v0 setPreferredContentSize:?];
  sub_100003ABC(qword_10060CCB0, &unk_1004E4A50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  *(v4 + 32) = sub_1004B83D4();
  *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004BCA74();
  swift_unknownObjectRelease();
}

void sub_10031D4B4(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  sub_10031DF44(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v10 = type metadata accessor for Card.ViewController(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10031D5D0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10031D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = sub_10031DB48();
    [v7 addSubview:v8];

    v9 = *(v4 + qword_10060CD38);
    v10 = *(v4 + qword_10060CD48);
    v11 = v9;
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview:v12];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10031D7B4(void *a1)
{
  v4 = a1;
  sub_10031D68C(v4, v1, v2, v3);
}

id sub_10031D7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v60.receiver = v4;
  v60.super_class = v6;
  objc_msgSendSuper2(&v60, "viewDidLayoutSubviews");
  sub_10031DD94();
  v8 = v7;
  v9 = *&v4[qword_10060CD48];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  CGRectGetWidth(v61);
  sub_10031DD94();
  sub_1004BCD14();
  sub_1004B93B4();
  v59 = v20;
  v22 = v21;

  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v62.origin.x = v25;
  v62.origin.y = v27;
  v62.size.width = v29;
  v62.size.height = v31;
  Height = CGRectGetHeight(v62);
  sub_10031DCE4(Height < v22);
  v34 = v33;
  v35 = sub_10031DB48();
  result = [v5 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  v37 = v8 + v34;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v63.origin.x = v39;
  v63.origin.y = v41;
  v63.size.width = v43;
  v63.size.height = v45;
  Width = CGRectGetWidth(v63);
  sub_1004BCD24();
  [v35 setContentSize:{Width, v22 + v47}];

  result = [*&v5[qword_10060CD48] view];
  if (result)
  {
    v48 = result;
    v49 = qword_10060CD38;
    v50 = *&v5[qword_10060CD38];
    sub_1004BCD84(0.0, v37, v59, v22);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    [v48 setFrame:{v52, v54, v56, v58}];
    return [*&v5[v49] _setPocketsEnabled:Height < v22];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10031DB00(void *a1)
{
  v4 = a1;
  sub_10031D7FC(v4, v1, v2, v3);
}

id sub_10031DB48()
{
  v1 = qword_10060CD38;
  v2 = *&v0[qword_10060CD38];
  if (v2)
  {
    v3 = *&v0[qword_10060CD38];
  }

  else
  {
    v4 = sub_10031DBAC(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10031DBAC(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10031DCE4(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_10031DD94();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10031DD94()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_10031DF44(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_10060CD48];
  sub_10031DD94();
  sub_1004BCD14();
  sub_1004B93B4();
  v24 = v23;

  sub_10031DD94();
  sub_1004BCD24();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_10031DCE4(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10031E1EC(uint64_t a1)
{
  v2 = *(a1 + qword_10060CD48);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_10031E3CC(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_10031EC50();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1004BBE24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_10031E508(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_10031E5A4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_10031E62C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  sub_1004B98E4();
  __chkstk_darwin();
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  *(v2 + qword_10060CD38) = 0;
  *(v2 + qword_10060CD40) = 0x4079E00000000000;
  v10 = *((v5 & v4) + 0x58);
  sub_1004B9414();
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_1004B93E4();
  sub_1004B98D4();
  sub_1004B93C4();
  sub_1004B93D4();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    [v13 setBackgroundColor:v15];

    *(v2 + qword_10060CD48) = v11;
    v17 = type metadata accessor for Card.ViewController.RootViewController(0, v6, v10, v16);
    v26.receiver = v2;
    v26.super_class = v17;
    v18 = v11;
    v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
    result = [v19 view];
    if (result)
    {
      v20 = result;
      v21 = [v14 clearColor];
      [v20 setBackgroundColor:v21];

      [v19 addChildViewController:*&v19[qword_10060CD48]];
      v22 = [v19 navigationItem];
      sub_100009130(0, &qword_10060ABA8, UIBarButtonItem_ptr);
      sub_100009130(0, &qword_10060AC30, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = v10;
      v24[4] = v23;
      v27.value.super.super.isa = sub_1004BCFD4();
      v27.is_nil = 0;
      isa = sub_1004BC9E4(UIBarButtonSystemItemClose, v27, v28).super.super.isa;
      [v22 setLeftBarButtonItem:isa];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031EA68()
{

  return swift_deallocObject();
}

id sub_10031EB20(void *a1)
{
  sub_10031DF44(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_10031EB74()
{
  *(v0 + qword_10060CD38) = 0;
  *(v0 + qword_10060CD40) = 0x4079E00000000000;
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_10031ED20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10031ED58()
{

  return swift_deallocObject();
}

uint64_t sub_10031ED9C(uint64_t a1)
{
  sub_1004BC3B4();
  sub_1004BA604();
  sub_1004BA594();
  return v2;
}

uint64_t sub_10031EDF8(uint64_t a1)
{
  sub_1004BC3B4();
  sub_1004BA604();
  sub_1004BA5B4();
  return v2;
}

double sub_10031EEDC(uint64_t a1)
{
  sub_100003ABC(&qword_10060CFB8, &unk_1004E0828);
  sub_1004BA594();
  return v2;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a15;
  v43[0] = a17;
  v43[1] = a18;
  sub_1004BD174();
  __chkstk_darwin();
  v29 = v43 - v28;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v30 = type metadata accessor for CarouselView(0, &v49);
  (*(*(a16 - 8) + 56))(v29, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v29);
  v31 = (a9 + v30[24]);
  v53 = 0;
  sub_1004BA414();
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceIdiom];

  v35 = 8.0;
  if (v34 == 6)
  {
    v35 = 10.0;
  }

  v36 = (a9 + v30[22]);
  *(a9 + v30[25]) = v35;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_100324DE4(a4, a9 + v30[17]);
  v38 = a9 + v30[18];
  v39 = v46;
  *v38 = v45;
  *(v38 + 1) = v39;
  *(v38 + 2) = a10;
  *(v38 + 3) = a11;
  *(a9 + v30[20]) = a12;
  *(a9 + v30[21]) = a13;
  v40 = (a9 + v30[19]);
  v41 = v48;
  *v40 = v47;
  v40[1] = v41;
  v42 = v44;
  *v36 = a14;
  v36[1] = v42;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v4 = sub_1004BD174();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  sub_1004BA414();
  return (*(v5 + 8))(a1, v4);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v94 = sub_1004B8BD4();
  v86 = *(v94 - 8);
  __chkstk_darwin();
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 - 1);
  v93 = *(v83 + 64);
  __chkstk_darwin();
  v92 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v6 = sub_1004BC3B4();
  v90 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = a1;
  v8 = a1[7];
  v111 = a1[3];
  *&v112 = v8;
  v9 = v111;
  v96 = v111;
  v10 = v8;
  v91 = v8;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v13 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = v6;
  *&v112 = AssociatedTypeWitness;
  *(&v112 + 1) = v11;
  v113 = WitnessTable;
  v114 = AssociatedConformanceWitness;
  sub_1004BA674();
  v111 = v9;
  *&v112 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = &protocol witness table for _FrameLayout;
  v108 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_1004B86F4();
  v16 = swift_getWitnessTable();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeMetadata2();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_1004B8734();
  v18 = swift_getWitnessTable();
  v111 = v17;
  *&v112 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_1004B9694();
  sub_1004B8D64();
  sub_100003B68(&qword_10060CDD8, &qword_1004E0618);
  v19 = sub_1004B8D64();
  v20 = sub_1004B98B4();
  v111 = v17;
  *&v112 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v106 = v21;
  v107 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_100324E54();
  v104 = v23;
  v105 = v24;
  v25 = swift_getWitnessTable();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v27 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v111 = v28;
  *&v112 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v111 = v28;
  *&v112 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v111 = v30;
  *&v112 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_1004B8D64();
  v89 = v13;
  v111 = v13;
  v32 = v90;
  v113 = v90;
  *&v33 = v13;
  *(&v33 + 1) = v96;
  v73 = v33;
  v34 = v82;
  v95 = *(v82 + 2);
  v112 = v95;
  type metadata accessor for PageControl(255, &v111);
  sub_1004B8D64();
  sub_1004BD174();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  v35 = sub_1004BA564();
  v77 = *(v35 - 8);
  __chkstk_darwin();
  v68 = &v67 - v36;
  v71 = v35;
  v37 = sub_1004B8D64();
  v76 = v37;
  v81 = *(v37 - 8);
  __chkstk_darwin();
  v88 = &v67 - v38;
  v69 = swift_getWitnessTable();
  v102 = v69;
  v103 = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable();
  v75 = v39;
  v74 = sub_100326730(qword_10060CDF0, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v111 = v37;
  *&v112 = v94;
  *(&v112 + 1) = v39;
  v113 = v74;
  v78 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v79 = swift_getOpaqueTypeMetadata2();
  v80 = *(v79 - 8);
  __chkstk_darwin();
  v70 = &v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v67 - v41;
  v42 = v84;
  v97 = v73;
  v98 = v95;
  v43 = v91;
  v99 = v32;
  v100 = v91;
  v101 = v84;
  sub_1004B9344();
  sub_1004BA554();
  v44 = v83;
  *&v73 = *(v83 + 16);
  v45 = v92;
  (v73)(v92, v42, v34);
  v46 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v96;
  *(v47 + 16) = v89;
  *(v47 + 24) = v48;
  *(v47 + 32) = v95;
  *(v47 + 48) = v32;
  *(v47 + 56) = v43;
  v49 = *(v44 + 32);
  v49(v47 + v46, v45, v34);
  v50 = v71;
  v51 = v68;
  sub_1004BA134();

  (*(v77 + 8))(v51, v50);
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  v52 = v85;
  sub_1004BA594();
  v53 = v92;
  (v73)(v92, v42, v34);
  v54 = swift_allocObject();
  v55 = v96;
  *(v54 + 16) = v89;
  *(v54 + 24) = v55;
  *(v54 + 32) = v95;
  v56 = v91;
  *(v54 + 48) = v90;
  *(v54 + 56) = v56;
  v49(v54 + v46, v53, v34);
  v57 = v70;
  v58 = v76;
  v59 = v94;
  v60 = v75;
  v61 = v74;
  v62 = v88;
  sub_1004BA144();

  (*(v86 + 8))(v52, v59);
  (*(v81 + 8))(v62, v58);
  v111 = v58;
  *&v112 = v59;
  *(&v112 + 1) = v60;
  v113 = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v72;
  v64 = v79;
  sub_100318364();
  v65 = *(v80 + 8);
  v65(v57, v64);
  sub_100318364();
  return (v65)(v63, v64);
}

uint64_t sub_10031FF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v207 = a1;
  v195 = a8;
  v233 = a2;
  v234 = a4;
  v197 = a4;
  v198 = a5;
  v235 = a5;
  v236 = a6;
  v146 = *(type metadata accessor for PageControl(0, &v233) - 8);
  __chkstk_darwin();
  v144 = (&v143 - v14);
  v206 = v15;
  v189 = *(sub_1004B8D64() - 8);
  __chkstk_darwin();
  v147 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v143 - v17;
  v193 = v18;
  *&v194 = COERCE_DOUBLE(sub_1004BD174());
  v190 = *(v194 - 8);
  __chkstk_darwin();
  v192 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = &v143 - v20;
  v21 = sub_1004B9734();
  v187 = *(v21 - 8);
  v188 = v21;
  __chkstk_darwin();
  v182 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B9894();
  __chkstk_darwin();
  v184 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1004B98B4();
  v185 = *(v200 - 8);
  __chkstk_darwin();
  v183 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = a2;
  v234 = a3;
  v199 = a3;
  v235 = a4;
  v236 = a5;
  v237 = a6;
  v238 = a7;
  v205 = type metadata accessor for CarouselView(0, &v233);
  v180 = *(v205 - 8);
  v181 = *(v180 + 64);
  __chkstk_darwin();
  v179 = &v143 - v25;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  __chkstk_darwin();
  v196 = &v143 - v26;
  v27 = sub_1004BC3B4();
  v208 = a6;
  v210 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v233 = a3;
  v234 = a7;
  v202 = a7;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v233 = v27;
  v234 = AssociatedTypeWitness;
  v235 = v29;
  v236 = WitnessTable;
  v237 = AssociatedConformanceWitness;
  sub_1004BA674();
  v32 = v199;
  v233 = v199;
  v234 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v232 = &protocol witness table for _FrameLayout;
  v230 = swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = sub_1004B86F4();
  v34 = swift_getWitnessTable();
  v233 = v33;
  v234 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v233 = v33;
  v234 = v34;
  v155 = swift_getOpaqueTypeConformance2();
  v35 = sub_1004B8734();
  v160 = *(v35 - 8);
  __chkstk_darwin();
  v37 = &v143 - v36;
  v38 = swift_getWitnessTable();
  v233 = v35;
  v234 = v38;
  v39 = v38;
  v148 = v38;
  v158 = swift_getOpaqueTypeMetadata2();
  v161 = *(v158 - 8);
  __chkstk_darwin();
  v151 = &v143 - v40;
  sub_1004B9694();
  v41 = sub_1004B8D64();
  v163 = *(v41 - 8);
  __chkstk_darwin();
  v201 = &v143 - v42;
  sub_100003B68(&qword_10060CDD8, &qword_1004E0618);
  v157 = v41;
  v43 = sub_1004B8D64();
  v162 = *(v43 - 8);
  __chkstk_darwin();
  v159 = &v143 - v44;
  v233 = v35;
  v234 = v39;
  v45 = swift_getOpaqueTypeConformance2();
  v150 = v45;
  v46 = sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v228 = v45;
  v229 = v46;
  v47 = swift_getWitnessTable();
  v154 = v47;
  v48 = sub_100324E54();
  v226 = v47;
  v227 = v48;
  v49 = swift_getWitnessTable();
  v50 = v43;
  v152 = v43;
  v51 = v200;
  v233 = v43;
  v234 = v200;
  v235 = v49;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v52 = v49;
  v153 = v49;
  v53 = swift_getOpaqueTypeMetadata2();
  v177 = *(v53 - 8);
  __chkstk_darwin();
  v149 = &v143 - v54;
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v55 = swift_getOpaqueTypeConformance2();
  v233 = v53;
  v234 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v174 = *(v56 - 8);
  __chkstk_darwin();
  v169 = &v143 - v57;
  v178 = v53;
  v233 = v53;
  v234 = v55;
  v171 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v56;
  v234 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v170 = *(v59 - 8);
  __chkstk_darwin();
  v164 = v58;
  v165 = &v143 - v60;
  v175 = v56;
  v233 = v56;
  v234 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v176 = v59;
  v233 = v59;
  v234 = v61;
  v167 = v61;
  v172 = *(swift_getOpaqueTypeMetadata2() - 8);
  __chkstk_darwin();
  v166 = &v143 - v62;
  v173 = v63;
  *&v64 = COERCE_DOUBLE(sub_1004B8D64());
  v203 = *(v64 - 8);
  v204 = *&v64;
  __chkstk_darwin();
  v186 = &v143 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v143 - v66;
  __chkstk_darwin();
  v209 = &v143 - v67;
  sub_1004B9914();
  v211 = v210;
  v212 = v32;
  v69 = v197;
  v68 = v198;
  v213 = v197;
  v214 = v198;
  v215 = v208;
  v216 = v202;
  v70 = v207;
  v217 = v207;
  sub_1004B8744();
  v71 = v205;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  v72 = v196;
  sub_1004BA5B4();
  sub_1004BA8B4();
  v73 = v151;
  sub_1004B9EC4();
  sub_100326564(v72);
  (*(v160 + 8))(v37, v35);
  v74 = sub_1004B9954();
  v75 = v71;
  v76 = (v70 + *(v71 + 96));
  v77 = *v76;
  v78 = v76[1];
  v233 = v77;
  v234 = v78;
  sub_100003ABC(&qword_10060CFA0, &qword_1004E0818);
  sub_1004BA424();
  v79 = v158;
  sub_1003225E4(v74, COERCE_UNSIGNED_INT64(round(v225[0])), 0, v158, v150);
  (*(v161 + 8))(v73, v79);
  _s3__C6CGSizeVMa_0(0);
  v81 = v80;
  v82 = v179;
  v83 = v180;
  v84 = v75;
  (*(v180 + 16))(v179, v70, v75);
  v85 = v83;
  v86 = (*(v83 + 80) + 64) & ~*(v83 + 80);
  v87 = swift_allocObject();
  v88 = v199;
  v87[2] = v210;
  v87[3] = v88;
  v87[4] = v69;
  v87[5] = v68;
  v89 = v149;
  v90 = v202;
  v87[6] = v208;
  v87[7] = v90;
  v91 = v87 + v86;
  v92 = v182;
  (*(v85 + 32))(v91, v82, v84);
  v142 = sub_100326730(&qword_10060CFA8, _s3__C6CGSizeVMa_0, &protocol conformance descriptor for CGSize);
  v93 = v159;
  v94 = v81;
  v95 = v157;
  v96 = v81;
  v97 = v201;
  sub_1003229E8(v94, sub_100322720, 0, sub_100326638, v87, v157, v96, v154, v142);

  (*(v163 + 8))(v97, v95);
  sub_1004B9884();
  v98 = v183;
  sub_1004B98A4();
  v99 = v152;
  v100 = v200;
  sub_1004BA004();
  (*(v185 + 8))(v98, v100);
  (*(v162 + 8))(v93, v99);
  sub_1004B9724();
  sub_100003ABC(&qword_10060CFB0, &qword_1004E0820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  LOBYTE(v98) = sub_1004B9934();
  *(inited + 32) = v98;
  v102 = sub_1004B9914();
  *(inited + 33) = v102;
  sub_1004B9924();
  sub_1004B9924();
  if (sub_1004B9924() != v98)
  {
    sub_1004B9924();
  }

  sub_1004B9924();
  if (sub_1004B9924() != v102)
  {
    sub_1004B9924();
  }

  v103 = v205;
  v104 = v169;
  v105 = v178;
  sub_1004B9F64();
  (*(v187 + 8))(v92, v188);
  (*(v177 + 8))(v89, v105);
  v106 = v165;
  v107 = v175;
  sub_1004B9FC4();
  (*(v174 + 8))(v104, v107);
  sub_10031ED9C(v103);
  sub_1004BC344();

  v109 = v166;
  v108 = v167;
  v110 = v176;
  sub_1004B9EB4();
  (*(v170 + 8))(v106, v110);
  sub_10031EEDC(v103);
  sub_1004BA754();
  v233 = v110;
  v234 = v108;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v168;
  v113 = v173;
  sub_1004BA0A4();
  (*(v172 + 8))(v109, v113);
  *&v225[4] = v111;
  *&v225[5] = &protocol witness table for _FrameLayout;
  v114 = v204;
  v200 = swift_getWitnessTable();
  sub_100318364();
  v115 = v112;
  v116 = v210;
  v201 = *(v203 + 8);
  v202 = v203 + 8;
  (v201)(v115, *&v114);
  sub_10031ED9C(v103);
  v117 = sub_1004BC344();

  if (v117 < 2)
  {
    v133 = v192;
    (*(v189 + 56))(v192, 1, 1, v193);
    *&v225[2] = swift_getWitnessTable();
    *&v225[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v118 = sub_10031EDF8(v103);
    v120 = v119;
    v122 = v121;
    sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
    v123 = v196;
    sub_1004BA5B4();
    v124 = v144;
    *v144 = v118;
    v124[1] = v120;
    v124[2] = v122;
    v233 = v116;
    v234 = v197;
    v235 = v198;
    v236 = v208;
    v125 = type metadata accessor for PageControl(0, &v233);
    sub_100324DE4(v123, v124 + *(v125 + 52));
    sub_1004BA754();
    v126 = v206;
    v127 = swift_getWitnessTable();
    v128 = v147;
    sub_1004BA0A4();
    (*(v146 + 8))(v124, v126);
    v218 = v127;
    v219 = &protocol witness table for _FrameLayout;
    v129 = v193;
    swift_getWitnessTable();
    v130 = v145;
    sub_100318364();
    v131 = v189;
    v132 = *(v189 + 8);
    v132(v128, v129);
    sub_100318364();
    v132(v130, v129);
    v133 = v192;
    (*(v131 + 32))(v192, v128, v129);
    (*(v131 + 56))(v133, 0, 1, v129);
  }

  v134 = v191;
  sub_10037A260(v133, v191);
  v135 = v190;
  v136 = *(v190 + 8);
  v137 = *&v194;
  v136(v133, v194);
  v138 = v204;
  v139 = v186;
  (*(v203 + 16))(v186, v209, COERCE_DOUBLE(*&v204));
  v233 = v139;
  (*(v135 + 16))(v133, v134, COERCE_DOUBLE(*&v137));
  v234 = v133;
  v225[0] = v138;
  v225[1] = v137;
  v223 = v200;
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _FrameLayout;
  v220 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  sub_100379EFC(&v233, 2uLL, v225);
  v136(v134, *&v137);
  v140 = v201;
  (v201)(v209, *&v138);
  v136(v133, *&v137);
  return v140(v139, *&v138);
}

uint64_t sub_1003215BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a5;
  v44 = a4;
  v47 = a1;
  v48 = a8;
  sub_1004B95E4();
  __chkstk_darwin();
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BC3B4();
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = a3;
  v57 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v13;
  v57 = AssociatedTypeWitness;
  v58 = v15;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v39 = sub_1004BA674();
  v56 = a3;
  v57 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = &protocol witness table for _FrameLayout;
  v62 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v18 = sub_1004B86F4();
  v42 = *(v18 - 8);
  __chkstk_darwin();
  v36 = v35 - v19;
  v37 = swift_getWitnessTable();
  v56 = v18;
  v57 = v37;
  v40 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v35 - v23;
  v35[2] = sub_1004B9204();
  v25 = a2;
  v56 = a2;
  v57 = a3;
  v26 = a3;
  v27 = v44;
  v28 = v46;
  v58 = v44;
  v59 = v46;
  v29 = v43;
  v60 = v43;
  v61 = a7;
  v30 = type metadata accessor for CarouselView(0, &v56);
  v35[1] = *(v47 + *(v30 + 80));
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = a7;
  v55 = v47;
  sub_100322564();
  v31 = v36;
  sub_1004B86E4();
  v32 = v37;
  sub_1004B9FD4();
  (*(v42 + 8))(v31, v18);
  v56 = v18;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100318364();
  v33 = *(v41 + 8);
  v33(v22, OpaqueTypeMetadata2);
  sub_100318364();
  return (v33)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_100321AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v50 = a8;
  v55 = a2;
  v56 = a3;
  v39 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v41 = a7;
  v12 = type metadata accessor for CarouselView(0, &v55);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v40 = v37 - v14;
  v15 = sub_1004BC3B4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v55 = a3;
  v56 = a7;
  v42 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_1004B8D64();
  v37[1] = v17;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v15;
  v56 = AssociatedTypeWitness;
  v57 = v17;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v20 = sub_1004BA674();
  v46 = *(v20 - 8);
  __chkstk_darwin();
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = v37 - v23;
  v24 = v12;
  v25 = v47;
  v54 = sub_10031ED9C(v12);
  v26 = v40;
  (*(v13 + 16))(v40, v25, v24);
  v27 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v29 = v39;
  v31 = v48;
  v30 = v49;
  *(v28 + 3) = v39;
  *(v28 + 4) = v31;
  *(v28 + 5) = v30;
  *(v28 + 6) = a6;
  v32 = v41;
  *(v28 + 7) = v41;
  (*(v13 + 32))(&v28[v27], v26, v24);
  v55 = v29;
  v56 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for _FrameLayout;
  v33 = swift_getWitnessTable();
  sub_1004BA664();
  v51 = v33;
  swift_getWitnessTable();
  v34 = v38;
  sub_100318364();
  v35 = *(v46 + 8);
  v35(v22, v20);
  sub_100318364();
  return (v35)(v34, v20);
}

uint64_t sub_100321EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v71 = a7;
  v57 = a3;
  v59 = *(a3 - 8);
  v63 = *(v59 + 64);
  __chkstk_darwin();
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v75 = v11;
  v12 = v11;
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  v17 = v16;
  v55 = v16;
  v18 = type metadata accessor for CarouselView(0, &v74);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v51 - v21;
  v67 = *(v12 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  v75 = v17;
  v68 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v54 = &v51 - v24;
  v60 = sub_1004B8D64();
  v70 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v62 = &v51 - v27;
  v28 = v18;
  v51 = v18;
  v29 = *(v18 + 76);
  v53 = a2;
  (*(a2 + v29))(a1, v26);
  v30 = v22;
  (*(v19 + 16))(v22, a2, v28);
  v31 = v59;
  v32 = v58;
  v33 = v57;
  (*(v59 + 16))(v58, a1, v57);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = (v20 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v33;
  *(v36 + 3) = v12;
  v37 = v12;
  v38 = v65;
  *(v36 + 4) = v64;
  *(v36 + 5) = v38;
  v39 = v55;
  *(v36 + 6) = v66;
  *(v36 + 7) = v39;
  v40 = v30;
  v41 = v51;
  (*(v19 + 32))(&v36[v34], v40, v51);
  (*(v31 + 32))(&v36[v35], v32, v33);
  v42 = v54;
  v43 = v52;
  sub_1004B9E64();

  (*(v67 + 8))(v43, v37);
  sub_10031EEDC(v41);
  sub_10031EEDC(v41);
  sub_1004BA754();
  v74 = v37;
  v75 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = OpaqueTypeMetadata2;
  sub_1004BA0A4();
  (*(v69 + 8))(v42, v46);
  v72 = OpaqueTypeConformance2;
  v73 = &protocol witness table for _FrameLayout;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v62;
  sub_100318364();
  v49 = *(v70 + 8);
  v49(v45, v47);
  sub_100318364();
  return (v49)(v48, v47);
}

double sub_1003224BC(uint64_t a1, char a2, _OWORD *a3)
{
  if (a2)
  {
    sub_1004BA7B4();
  }

  __chkstk_darwin();
  sub_1004B8B24();

  return result;
}

uint64_t sub_100322564()
{
  sub_1004B95E4();
  sub_100326730(&unk_10060CFC0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_1004BDC74();
}

uint64_t sub_1003225E4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1004B9694();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1004B86C4();
    *(&v10 + 1) = v12;
    *(&v11 + 1) = v13;
  }

  v15[0] = v10;
  v15[1] = v11;
  v16 = a3 & 1;
  sub_1004B9684();
  sub_1004BA124();
  return (*(v7 + 8))(v9, v6);
}

void sub_100322720(void *a1@<X8>)
{
  sub_1004B8A34();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10032274C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_1004BD174();
  v30 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin();
  v29 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v21 = type metadata accessor for CarouselView(0, &v33);
  v22 = (v20 - sub_10031EEDC(v21)) * 0.5;
  v23 = (a2 + *(v21 + 96));
  v24 = *v23;
  v25 = v23[1];
  v33 = *v23;
  v34 = v25;
  sub_100003ABC(&qword_10060CFA0, &qword_1004E0818);
  sub_1004BA424();
  if (v32 != v22)
  {
    v32 = v22;
    v33 = v24;
    v34 = v25;
    sub_1004BA434();
  }

  sub_1004BA454();
  sub_1004BA424();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v27 = v29;
  (*(v18 + 32))(v29, v17, a3);
  v28 = sub_1003224BC(v27, 0, v21);
  return (*(v18 + 8))(v27, a3, v28);
}

double sub_1003229E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_1004B96A4();
  sub_1004B96B4();
  sub_1004BA124();

  return result;
}

void sub_100322AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v34 = a5;
  v35 = a7;
  v33 = a4;
  v36 = a1;
  v10 = sub_1004BD174();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin();
  v32 = &v27 - v11;
  v31 = *(a2 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004B8BD4();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1004BD174();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v27 - v20;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = a6;
  v37[5] = v35;
  v35 = type metadata accessor for CarouselView(0, v37);
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  sub_1004BA594();
  swift_getAssociatedConformanceWitness();
  sub_1004B8BB4();
  (*(v14 + 8))(v16, v13);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v18;
    v37[0] = sub_10031ED9C(v35);
    sub_1004BC3B4();
    swift_getWitnessTable();
    v23 = v32;
    sub_1004BC7B4();
    v24 = v31;
    if ((*(v31 + 48))(v23, 1, a2) == 1)
    {
      (*(v19 + 8))(v21, v22);
      (*(v29 + 8))(v23, v30);
    }

    else
    {
      v25 = v28;
      (*(v24 + 32))(v28, v23, a2);

      v26 = sub_1003224BC(v25, 0, v35);
      (*(v24 + 8))(v25, a2, v26);
      (*(v19 + 8))(v21, v22);
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_100322F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v54 = a3;
  v11 = sub_1004BD174();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin();
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v13;
  v47 = *(a4 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1004BD174();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v22 = &v40 - v21;
  swift_getAssociatedConformanceWitness();
  sub_1004B8BB4();
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
  v24 = a8;
  v25 = v50;
  v56 = a4;
  v57 = v50;
  v43 = v20;
  v44 = v22;
  v27 = v51;
  v26 = v52;
  v58 = v51;
  v59 = v52;
  v60 = v24;
  v61 = a9;
  v41 = type metadata accessor for CarouselView(0, &v56);
  v28 = sub_10031ED9C(v41);
  v42 = &v40;
  v55 = v28;
  __chkstk_darwin();
  *(&v40 - 8) = a4;
  *(&v40 - 7) = v25;
  *(&v40 - 6) = v27;
  *(&v40 - 5) = v26;
  v29 = v44;
  *(&v40 - 4) = v24;
  *(&v40 - 3) = a9;
  *(&v40 - 2) = v29;
  sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC784();

  if (v57 == 1)
  {
    return (*(v43 + 8))(v29, AssociatedTypeWitness);
  }

  v30 = v56;
  v31 = v41;
  v32 = v54;
  sub_10031ED9C(v41);
  v33 = v53;
  v52 = v30;
  sub_1004BC3C4();

  v34 = v47;
  v35 = v45;
  (*(v47 + 16))(v45, v33, a4);
  (*(v34 + 56))(v35, 0, 1, a4);
  v37 = v48;
  v36 = v49;
  (*(v48 + 16))(v46, v35, v49);
  sub_1004BA454();
  sub_1004BA434();
  (*(v37 + 8))(v35, v36);
  v38 = (v32 + *(v31 + 88));
  v39 = v53;
  if (*v38)
  {
    (*v38)(v52, v53);
  }

  (*(v34 + 8))(v39, a4);
  return (*(v43 + 8))(v44, AssociatedTypeWitness);
}

uint64_t sub_10032349C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_1004BD424();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1004BBD84();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_1003235E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a8;
  sub_1004B8BD4();
  __chkstk_darwin();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v18 - v13;
  sub_1004BD424();
  sub_1004BA8B4();
  v18[1] = v16;
  v18[2] = v15;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = v19;
  v22[4] = a7;
  v22[5] = v20;
  type metadata accessor for CarouselView(0, v22);
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  sub_1004BA594();
  swift_getAssociatedConformanceWitness();
  sub_1004B8BC4();
  (*(v21 + 8))(v14, AssociatedTypeWitness);
  return sub_1004BA5A4();
}

void *sub_1003237E4(uint64_t a1)
{
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  __chkstk_darwin();
  v3 = v12 - v2;
  v4 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v4;
  type metadata accessor for PageControl.Coordinator(0, v12);
  v5 = sub_10031EDF8(a1);
  v7 = v6;
  v9 = v8;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  sub_1004BA5B4();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v9;
  sub_100324DE4(v3, v10 + qword_10060CE98);
  return v10;
}

void *sub_1003238FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100324DE4(a4, v8 + qword_10060CE98);
  return v8;
}

uint64_t sub_10032396C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1004B8BD4();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin();
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v56 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_1004BD174();
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v52 = &v45 - v11;
  v59 = AssociatedTypeWitness;
  v58 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v45 - v12;
  v50 = *(v9 - 8);
  __chkstk_darwin();
  v65 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_1004BD174();
  v49 = *(v62 - 8);
  __chkstk_darwin();
  v61 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v45 - v15;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  __chkstk_darwin();
  v18 = &v45 - v17;
  swift_getWitnessTable();
  sub_1004B9774();
  sub_1004B9764();
  v19 = v68;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  sub_1004BA5B4();
  v20 = qword_10060CE98;
  swift_beginAccess();
  v51 = v19;
  sub_100326304(v18, v19 + v20);
  swift_endAccess();
  v21 = [a1 numberOfPages];
  sub_10031ED9C(a3);
  v22 = sub_1004BC344();

  if (v21 != v22)
  {
    sub_10031ED9C(a3);
    v23 = sub_1004BC344();

    [a1 setNumberOfPages:v23];
  }

  v60 = a1;
  v64 = a3;
  v57 = v4;
  v68 = sub_10031ED9C(a3);
  v24 = v9;
  v25 = sub_1004BC3B4();
  swift_getWitnessTable();
  sub_1004BC154();

  v66 = v67;
  sub_1004BD694();
  sub_1004BD664();
  v45 = v25;
  sub_1004BD684();
  v26 = (v49 + 32);
  v27 = TupleTypeMetadata2;
  v28 = (v50 + 32);
  v29 = (v50 + 8);
  while (1)
  {
    v30 = v61;
    sub_1004BD674();
    (*v26)(v16, v30, v62);
    if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
    {
      break;
    }

    v31 = *v16;
    (*v28)(v65, &v16[*(v27 + 48)], v24);
    v32 = (*(*(v64 + 24) + 8))(v24);
    if (v32)
    {
      v33 = v32;
      [v60 setIndicatorImage:v32 forPage:v31];
    }

    (*v29)(v65, v24);
    v27 = TupleTypeMetadata2;
  }

  v34 = v64;
  sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  v35 = v53;
  sub_1004BA594();
  v36 = v56;
  v37 = v24;
  v38 = v59;
  swift_getAssociatedConformanceWitness();
  v39 = v52;
  sub_1004B8BB4();
  (*(v54 + 8))(v35, v55);
  v40 = v58;
  if ((*(v58 + 48))(v39, 1, v38) == 1)
  {

    return (*(v46 + 8))(v39, v47);
  }

  else
  {
    v42 = v48;
    (*(v40 + 32))(v48, v39, v38);
    v67 = sub_10031ED9C(v34);
    __chkstk_darwin();
    *(&v45 - 6) = v37;
    *(&v45 - 5) = *(v34 + 24);
    *(&v45 - 3) = v36;
    *(&v45 - 2) = v42;
    swift_getWitnessTable();
    sub_1004BC784();

    if (v69 != 1)
    {
      v43 = v68;
      v44 = v60;
      if ([v60 currentPage] != v43)
      {
        [v44 setCurrentPage:v43];
      }
    }

    return (*(v40 + 8))(v42, v38);
  }
}

uint64_t sub_1003241D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_1004BD424();
  swift_getAssociatedConformanceWitness();
  v10 = sub_1004BBD84();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

void *sub_100324320(void *a1)
{
  v2 = v1;
  v56 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v42 - v5;
  v6 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v51 = &v42 - v8;
  v9 = sub_1004B8BD4();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin();
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  __chkstk_darwin();
  v53 = &v42 - v11;
  v60 = *(v6 - 8);
  __chkstk_darwin();
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v58 = &v42 - v15;
  v59 = sub_1004BA604();
  v52 = *(v59 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v57 = &v42 - v17;
  v18 = [a1 currentPage];
  v64 = *(v2 + 16);
  v65 = *(v2 + 24);
  sub_1004BC3B4();
  sub_1004BA604();
  swift_getWitnessTable();
  result = sub_1004BA5D4();
  if (v18 >= v62 && v18 < v63)
  {
    v64 = *(v2 + 16);
    v65 = *(v2 + 24);
    v62 = v18;
    v45 = TupleTypeMetadata2;
    sub_1004BA5E4();
    v20 = qword_10060CE98;
    swift_beginAccess();
    v43 = v20;
    v21 = v2 + v20;
    v22 = v53;
    sub_1003264F4(v21, v53);
    v23 = v55;
    sub_1004BA594();
    sub_100326564(v22);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1004B8BB4();
    (*(v49 + 8))(v23, v50);
    sub_1004BA5F4();
    v24 = v61;
    (*(v61 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v25 = *(v45 + 48);
    v26 = v60;
    v27 = *(v60 + 16);
    v28 = v51;
    v27();
    v50 = v25;
    (v27)(&v28[v25], v14, v6);
    v29 = *(v24 + 48);
    if (v29(v28, 1, AssociatedTypeWitness) == 1)
    {
      v30 = *(v26 + 8);
      v30(v14, v6);
      if (v29(&v28[v50], 1, AssociatedTypeWitness) == 1)
      {
        v30(v28, v6);
LABEL_11:
        v30(v58, v6);
        return (*(v52 + 8))(v57, v59);
      }
    }

    else
    {
      v31 = v47;
      (v27)(v47, v28, v6);
      v32 = v50;
      if (v29(&v28[v50], 1, AssociatedTypeWitness) != 1)
      {
        v37 = v61;
        v38 = &v28[v32];
        v39 = v48;
        (*(v61 + 32))(v48, v38, AssociatedTypeWitness);
        v40 = sub_1004BBD84();
        v41 = *(v37 + 8);
        v41(v39, AssociatedTypeWitness);
        v30 = *(v60 + 8);
        v30(v14, v6);
        v41(v47, AssociatedTypeWitness);
        v30(v28, v6);
        if (v40)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = v53;
        sub_1003264F4(v2 + v43, v53);
        v34 = v48;
        v35 = v59;
        v36 = v57;
        sub_1004BA5F4();
        sub_1004BA594();
        sub_1004B8BC4();
        (*(v61 + 8))(v34, AssociatedTypeWitness);
        sub_1004BA5A4();
        sub_100326564(v33);
        v30(v58, v6);
        return (*(v52 + 8))(v36, v35);
      }

      v30 = *(v60 + 8);
      v30(v14, v6);
      (*(v61 + 8))(v31, AssociatedTypeWitness);
    }

    (*(v46 + 8))(v28, v45);
    goto LABEL_9;
  }

  return result;
}

double sub_100324B78(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100324320(v3);

  return result;
}

void *sub_100324BC8()
{

  sub_100326564(v0 + qword_10060CE98);
  return v0;
}

uint64_t sub_100324C1C()
{
  sub_100324BC8();

  return swift_deallocClassInstance();
}

void *sub_100324C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1003237E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100324CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100324D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100324DA4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1004B94B4();
  __break(1u);
}

uint64_t sub_100324DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100324E54()
{
  result = qword_10060CDE8;
  if (!qword_10060CDE8)
  {
    sub_100003B68(&qword_10060CDD8, &qword_1004E0618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060CDE8);
  }

  return result;
}

void sub_100324EEC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v7 = *(type metadata accessor for CarouselView(0, v9) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_100322AC4(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100324FA8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v13) - 8);
  return sub_100322F34(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_1003250C4(uint64_t a1)
{
  sub_1004BC3B4();
  sub_1004BA604();
  if (v1 <= 0x3F)
  {
    sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      sub_100325918(319, &qword_10060CE80, _s3__C6CGSizeVMa_0);
      if (v3 <= 0x3F)
      {
        sub_100316910();
        if (v4 <= 0x3F)
        {
          sub_10032596C(319);
          if (v5 <= 0x3F)
          {
            sub_1004BD174();
            sub_1004BA454();
            if (v7 <= 0x3F)
            {
              sub_1003259D0(v6);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100325234(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004B8BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_10032551C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004B8BD4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void sub_100325918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BA604();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10032596C(uint64_t a1)
{
  if (!qword_10060CE88)
  {
    sub_100003B68(&qword_10060F640, &qword_1004E3170);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_10060CE88);
    }
  }
}

void sub_1003259D0(__n128 a1)
{
  if (!qword_10060CE90)
  {
    v1 = sub_1004BA454();
    if (!v2)
    {
      atomic_store(v1, &qword_10060CE90);
    }
  }
}

void sub_100325A20(uint64_t a1)
{
  sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100325AF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  sub_1004BC3B4();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1004B8D64();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1004BA674();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004B86F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1004B8734();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1004B9694();
  sub_1004B8D64();
  sub_100003B68(&qword_10060CDD8, &qword_1004E0618);
  sub_1004B8D64();
  sub_1004B98B4();
  swift_getOpaqueTypeConformance2();
  sub_100326730(&qword_10060CDE0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_100324E54();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *(&v11 + 1) = WitnessTable;
  v12 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  *&v11 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1004B8D64();
  v10 = v1;
  v11 = *(a1 + 1);
  v12 = v2;
  type metadata accessor for PageControl(255, &v10);
  sub_1004B8D64();
  sub_1004BD174();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA564();
  v4 = sub_1004B8D64();
  v5 = sub_1004B8BD4();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = sub_100326730(qword_10060CDF0, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v10 = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  v12 = v7;
  return swift_getOpaqueTypeConformance2();
}

void sub_1003260A4(uint64_t a1)
{
  sub_1004BC3B4();
  sub_1004BA604();
  if (v1 <= 0x3F)
  {
    sub_100325918(319, &qword_10060CE78, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100326168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100326238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100326304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10032639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageControl(255, v14);
  swift_getWitnessTable();
  sub_1004B9774();
  sub_1004B9764();
  [v9 addTarget:v14[0] action:"updateCurrentPage:" forControlEvents:4096];

  v10 = objc_opt_self();
  v11 = [v10 systemFillColor];
  [v9 setPageIndicatorTintColor:v11];

  v12 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v12];

  return v9;
}

uint64_t sub_1003264F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326564(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060CDD0, &qword_1004E0610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100326638(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for CarouselView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_10032274C(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100326730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100326778()
{
  v1 = v0[2];
  v11 = v0[1];
  v12[0] = v11;
  v2 = v0[3];
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  v5 = &v4[v3[17]];

  v6 = *(sub_100003ABC(&qword_10060CDD0, &qword_1004E0610) + 32);
  v7 = sub_1004B8BD4();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  if (*&v4[v3[22]])
  {
  }

  v8 = &v4[v3[23]];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v8, 1, v11))
  {
    (*(v9 + 8))(v8, v11);
  }

  sub_1004BD174();
  sub_1004BA454();

  return swift_deallocObject();
}

uint64_t sub_1003269C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_100321EDC(a1, v12, v5, v7, v8, v9, a2);
}

uint64_t sub_100326A94()
{
  v1 = *(v0 + 2);
  v14[0] = *(v0 + 1);
  v13 = *&v14[0];
  v2 = *(v0 + 3);
  v14[1] = v1;
  v14[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v14);
  v12 = *(*(v3 - 1) + 64);
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);

  v7 = &v0[v4 + v3[17]];

  v8 = *(sub_100003ABC(&qword_10060CDD0, &qword_1004E0610) + 32);
  v9 = sub_1004B8BD4();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);

  if (*&v0[v4 + v3[22]])
  {
  }

  v10 = &v0[v4 + v3[23]];
  if (!(*(v5 + 48))(v10, 1, v13))
  {
    (*(v5 + 8))(v10, v13);
  }

  sub_1004BD174();
  sub_1004BA454();

  (*(v5 + 8))(&v0[(v4 + v12 + v6) & ~v6], v13);
  return swift_deallocObject();
}

double sub_100326D20()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = *(type metadata accessor for CarouselView(0, &v14) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(*(v1 - 8) + 80);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v11 = (((v8 + 64) & ~v8) + v9 + v10) & ~v10;
  v18 = v5;
  v19 = v6;
  v12 = type metadata accessor for CarouselView(0, &v14);
  return sub_1003224BC(v0 + v11, 1, v12);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v17 = *v5;
      v18 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v17 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v17 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v18)
          {
            return;
          }
        }

        else if ((v18 & 1) == 0 && *&a1 == v17)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v3;
        *(v21 + 24) = v6;
        v22 = v3;
        v23 = v6;

        sub_100328B64(sub_100329078, v21, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1004C4D40;
        sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
        *(v24 + 32) = sub_1004BCF84(4);
        isa = sub_1004BC284().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v3;
      v16 = v3;

      sub_100328B64(sub_1003280E0, v15, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v3;

      v20 = v3;
      sub_100328B64(sub_1003296E4, v19, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v12 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v12)
  {
    type metadata accessor for CircularProgressView.SpinAnimator(0, v10);
    v12 = swift_allocObject();
    *(v12 + 40) = 0;
    *(v12 + 16) = 0xD000000000000010;
    *(v12 + 24) = 0x80000001005086B0;
    *(v12 + 32) = v6;
    v13 = v6;
  }

  *&v3[v11] = v12;

  sub_10032884C();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v26 = objc_opt_self();

  [v26 commit];
}

BOOL static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_10032737C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_1003276DC(v24, v25);

  return v14;
}

void sub_1003276DC(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v4 = [objc_opt_self() tertiarySystemFillColor];
  v5 = [v4 CGColor];

  [v3 setStrokeColor:v5];
  v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v7 = [v2 tintColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 CGColor];

    [v6 setStrokeColor:v9];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "tintColorDidChange");
  sub_1003276DC(v1, v2);
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  sub_1004BCDD4();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100327DA0;
}

void sub_100327DA0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_100327E90;
}

double sub_100327ED4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C4D40;
  sub_100009130(0, &qword_10060CFF0, NSNumber_ptr);
  *(v8 + 32) = sub_1004BCF84(4);
  isa = sub_1004BC284().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_100328008(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_1003280A8()
{

  return swift_deallocObject();
}

void sub_1003280FC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_1003283F8(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_1003283F8(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1003280FC();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003283C4;
}

void sub_1003283C4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1003280FC();
  }
}

void sub_1003283F8(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_100009130(0, &unk_10060D1C0, UIImageView_ptr);
    v6 = v5;
    v3 = v3;
    v7 = sub_1004BCFA4();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_100009130(0, &qword_100611200, UIView_ptr);
    v11 = v2;
    v12 = sub_1004BCFA4();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_10032873C;
}

void sub_10032873C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_10032884C()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_1004BBE24();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_1004BC024(v21);
  v5 = sub_1004BBE24();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_1004BBE24();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_1004BBE24();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1002BE048(v20);
  }

  isa = sub_1004BC5A4().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_1004BC5A4().super.super.isa;
  [v7 setToValue:v12];

  v13 = v7;
  [v13 setRemovedOnCompletion:1];
  [v13 setFillMode:kCAFillModeBoth];
  [v13 setDuration:1.0];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount:v14];
  v15 = CACurrentMediaTime();
  [v13 duration];
  [v13 setBeginTime:{(v15 - fmod(v15, v16))}];

  v17 = sub_1004BBE24();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_100328B64(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = sub_1004BBE24();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_1004BD284();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1002BE048(v43);
    }

    v12 = sub_1004BBE24();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_1004BC5A4().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_1004BC5A4().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_1004BBE24();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_1004B7194().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004C51A0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100009130(0, &unk_10060D1D0, CAAnimation_ptr);
    v22 = v14;
    v23 = v18;
    v24 = sub_1004BC284().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v27 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate(0, v26);
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v29 = 0;
    *(v29 + 1) = 0;
    v40.receiver = v28;
    v40.super_class = v27;
    v30 = objc_msgSendSuper2(&v40, "init");
    [v25 setDelegate:v30];

    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v3;
    *(v31 + 32) = v11;
    *(v31 + 40) = a1;
    *(v31 + 48) = a2;
    *(v31 + 56) = a3;
    v32 = &v30[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v33 = *&v30[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v34 = *&v30[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop + 8];
    *v32 = sub_1003296C8;
    v32[1] = v31;
    v35 = v30;

    sub_10003CC4C(v33, v34);
    v37 = *(v3 + 16);
    v36 = *(v3 + 24);
    v38 = sub_1004BBE24();
    [v7 removeAnimationForKey:v38];

    *&v43[0] = v37;
    *(&v43[0] + 1) = v36;

    v44._countAndFlagsBits = 0x676E69646E65;
    v44._object = 0xE600000000000000;
    sub_1004BC024(v44);
    v39 = sub_1004BBE24();

    [v7 addAnimation:v25 forKey:v39];
  }
}

uint64_t sub_100329038()
{

  return swift_deallocObject();
}

void sub_1003290A4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);

    v18._countAndFlagsBits = 0x676E69646E65;
    v18._object = 0xE600000000000000;
    sub_1004BC024(v18);
    v13 = sub_1004BBE24();

    [v12 removeAnimationForKey:{v13, v16, v17}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v14 = COERCE_DOUBLE(a6(a5));
    if (v15)
    {
      v14 = a2;
    }

    [v12 setStrokeEnd:v14];
  }
}

id sub_1003292D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate(0, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100329324()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  sub_1004BD624();
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10032960C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}