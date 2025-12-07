uint64_t sub_10005B6BC@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v2 - 8);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v55 - v5;
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v55 - v18;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  __chkstk_darwin(v22);
  v24 = &v55 - v23;
  __chkstk_darwin(v25);
  v27 = &v55 - v26;
  __chkstk_darwin(v28);
  v61 = &v55 - v29;
  __chkstk_darwin(v30);
  v62 = &v55 - v31;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v32 = *(SearchResult + 20);
  v63 = v1;
  v33 = v1 + v32;
  sub_10000E268(v1 + v32, v13, &qword_1005CD1D0, &unk_1004CF2C0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MessageIdentifierSet.subtracting(_:)(v33 + *(MessagesVMa + 20), v24);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v33 + *(MessagesVMa + 24), v8, &qword_1005CD510, &unk_1004CF2E0);
  v60 = v15;
  v35 = *(v15 + 48);
  if (v35(v8, 1, v14) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v35(v8, 1, v14) != 1)
    {
      sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v8, v21, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.subtracting(_:)(v21, v27);
  sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v21, &unk_1005D91B0, &unk_1004CF400);
  v36 = SearchResult;
  v37 = v63;
  v38 = v59;
  sub_10000E268(v63 + *(SearchResult + 28), v59, &qword_1005CD510, &unk_1004CF2E0);
  v39 = v35(v38, 1, v14);
  v40 = v58;
  if (v39 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v41 = v35(v38, 1, v14);
    v42 = v61;
    if (v41 != 1)
    {
      sub_100025F40(v38, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v38, v58, &unk_1005D91B0, &unk_1004CF400);
    v42 = v61;
  }

  MessageIdentifierSet.subtracting(_:)(v40, v42);
  sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
  v43 = (v37 + *(v36 + 24));
  if (v43[1])
  {
    v44 = v65;
    (*(v60 + 56))(v65, 1, 1, v14);
    sub_100016D2C();
    v45 = v64;
    sub_1004A7114();
    v46 = v35(v44, 1, v14);
    v47 = v62;
    if (v46 != 1)
    {
      sub_100025F40(v44, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v70 = *v43;
    v48 = sub_100016948();
    v69 = Range<>.init<A>(_:)(&v70, &type metadata for UID, v48);
    sub_100016D2C();
    v49 = v65;
    sub_1004A7124();
    (*(v60 + 56))(v49, 0, 1, v14);
    v45 = v64;
    sub_100025FDC(v49, v64, &unk_1005D91B0, &unk_1004CF400);
    v47 = v62;
  }

  MessageIdentifierSet.subtracting(_:)(v45, v47);
  sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v47, &unk_1005D91B0, &unk_1004CF400);
    v53 = 1;
    v52 = v68;
  }

  else
  {
    v50 = v56;
    sub_100025FDC(v47, v56, &unk_1005D91B0, &unk_1004CF400);
    v51 = v50;
    v52 = v68;
    sub_100025FDC(v51, v68, &qword_1005CD1D0, &unk_1004CF2C0);
    v53 = 0;
  }

  return (*(v66 + 56))(v52, v53, 1, v67);
}

uint64_t sub_10005BE0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v63 = &v55 - v7;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v55 - v12;
  __chkstk_darwin(v13);
  v64 = &v55 - v14;
  v15 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for NewServerMessages(0);
  v68 = *(v18 - 8);
  v69 = v18;
  __chkstk_darwin(v18);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v55 - v21;
  v23 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v23 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  __chkstk_darwin(v29);
  v31 = &v55 - v30;
  if (sub_1001120C4(a1, a2))
  {
    goto LABEL_15;
  }

  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v60 = v3;
  v32 = v3 + SearchResultMessages[12];
  sub_10005CCD4(v31);
  v56 = v9;
  v57 = v8;
  v58 = *(v9 + 48);
  v33 = v58(v31, 1, v8);
  sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
  if (v33 == 1 || (SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0), sub_10000E268(v32 + *(SearchResult + 28), v22, &qword_1005CD510, &unk_1004CF2E0), v35 = 1, v36 = (*(v66 + 48))(v22, 1, v67), sub_100025F40(v22, &qword_1005CD510, &unk_1004CF2E0), v36 != 1))
  {
    v37 = SearchResultMessages[13];
    sub_10000E268(v60 + v37, v17, &qword_1005CE3B0, &unk_1004D1010);
    if ((*(v68 + 48))(v17, 1, v69) == 1)
    {
      sub_100025F40(v17, &qword_1005CE3B0, &unk_1004D1010);
      sub_10005B6BC(v28);
      v38 = v57;
      if (v58(v28, 1, v57) == 1)
      {
        v25 = v28;
LABEL_14:
        sub_100025F40(v25, &qword_1005CD518, &qword_1004CF2F0);
LABEL_15:
        v35 = 1;
        goto LABEL_16;
      }

      sub_100025FDC(v28, v64, &qword_1005CD1D0, &unk_1004CF2C0);
      v40 = v63;
      MessageIdentifierSet.suffix(_:)(47, v67, v63);
      if (MessageIdentifierSet.count.getter() < 1)
      {
        sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
        v42 = 1;
      }

      else
      {
        v41 = v62;
        sub_100025FDC(v40, v62, &unk_1005D91B0, &unk_1004CF400);
        sub_100025FDC(v41, v25, &qword_1005CD1D0, &unk_1004CF2C0);
        v42 = 0;
      }

      (*(v56 + 56))(v25, v42, 1, v38);
      if (v58(v25, 1, v38) == 1)
      {
        sub_100025F40(v64, &qword_1005CD1D0, &unk_1004CF2C0);
        goto LABEL_14;
      }

      v45 = v61;
      sub_100025FDC(v25, v61, &qword_1005CD1D0, &unk_1004CF2C0);
      v46 = v60;
      v47 = *(v60 + 40);
      LODWORD(v67) = *(v60 + 48);
      v48 = v69;
      v39 = v65;
      sub_10000E268(v45, v65 + v69[5], &qword_1005CD1D0, &unk_1004CF2C0);
      v49 = SearchResultMessages[10];
      v50 = (v46 + SearchResultMessages[9]);
      LODWORD(v62) = *v50;
      LODWORD(v58) = v50[1];
      LODWORD(v57) = v50[2];
      v51 = v50[3];
      v52 = v50[4];
      LODWORD(v66) = *(v46 + v49);
      LODWORD(v63) = *(v46 + SearchResultMessages[11]);
      v53 = v48[9];

      sub_100025F40(v45, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v64, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v39 + v53) = _swiftEmptyArrayStorage;
      *v39 = v47;
      *(v39 + 8) = v67;
      v54 = (v39 + v48[6]);
      *v54 = v62;
      v54[1] = v58;
      v54[2] = v57;
      v54[3] = v51;
      v54[4] = v52;
      *(v39 + v48[7]) = v66;
      *(v39 + v48[8]) = v63;
      sub_100025F40(v46 + v37, &qword_1005CE3B0, &unk_1004D1010);
      sub_100061830(v39, v46 + v37, type metadata accessor for NewServerMessages);
      (*(v68 + 56))(v46 + v37, 0, 1, v48);
    }

    else
    {
      v39 = v65;
      sub_100061968(v17, v65, type metadata accessor for NewServerMessages);
    }

    sub_1000FAA84(v70);
    sub_100061898(v39, type metadata accessor for NewServerMessages);
    v35 = 0;
  }

LABEL_16:
  v43 = sub_10000C9C0(&qword_1005CE828, &unk_1004D1148);
  return (*(*(v43 - 8) + 56))(v70, v35, 1, v43);
}

const mach_header_64 *sub_10005C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v59 = a3;
  v7 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v56 = *(SearchResult - 8);
  v57 = SearchResult;
  __chkstk_darwin(SearchResult);
  v55 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - v16;
  v18 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v60 = v4;
  sub_10005CCD4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v25 = &qword_1005CD518;
    v26 = &qword_1004CF2F0;
    v27 = v17;
  }

  else
  {
    sub_100025FDC(v17, v23, &qword_1005CD1D0, &unk_1004CF2C0);
    v61 = 1;
    if ((sub_10001F940(0x100000000uLL, a2, a4) & 1) == 0)
    {
      v32 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v33 = *(v32 + 48);
      v34 = *(v60 + 24);
      *v35 = *(v60 + 16);
      v35[1] = v34;
      sub_100025FDC(v23, v35 + v33, &qword_1005CD1D0, &unk_1004CF2C0);

      return &_mh_execute_header;
    }

    v25 = &qword_1005CD1D0;
    v26 = &unk_1004CF2C0;
    v27 = v23;
  }

  sub_100025F40(v27, v25, v26);
  v29 = v58;
  v28 = v59;
  if (sub_100019FEC(v58, a2, v59))
  {
    v62 = 1;
    if ((sub_10001F940(0x100000001uLL, a2, a4) & 1) == 0)
    {
      v30 = v60;
      sub_10000E268(v60 + *(SearchResultMessages + 52), v14, &qword_1005CE3B0, &unk_1004D1010);
      v31 = type metadata accessor for NewServerMessages(0);
      if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
      {
        sub_100025F40(v14, &qword_1005CE3B0, &unk_1004D1010);
      }

      else
      {
        v37 = *&v14[*(v31 + 36)];

        sub_100061898(v14, type metadata accessor for NewServerMessages);
        if (*(v37 + 16))
        {
          v38 = swift_allocObject();
          v39 = *(v30 + 24);
          *(v38 + 16) = *(v30 + 16);
          *(v38 + 24) = v39;
          *(v38 + 32) = v37;
          *(v38 + 40) = 0;
          *(v38 + 48) = 1;

          return &_mh_execute_header + 1;
        }
      }
    }
  }

  v40 = v60;
  sub_10005D774(v29, a2, v28, a4, v9);
  v41 = v57;
  if ((*(v56 + 48))(v9, 1, v57) == 1)
  {
    sub_100025F40(v9, &qword_1005CE550, &unk_1004D1260);
    return 0;
  }

  else
  {
    v42 = v55;
    sub_100061968(v9, v55, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v43 = *v42;
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    sub_10000C9C0(&qword_1005CE818, &qword_1004D1130);
    v45 = (sub_10000C9C0(&qword_1005CE820, &unk_1004D1138) - 8);
    v46 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1004CEAA0;
    v48 = v41;
    v49 = v47 + v46;
    v50 = v45[14];
    v51 = *(v40 + 48);
    *v49 = *(v40 + 40);
    *(v49 + 8) = v51;
    v52 = v54;
    sub_10000E268(v42 + *(v48 + 20), v54, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v52, v49 + v50, &unk_1005D91B0, &unk_1004CF400);
    v53 = sub_100162F48(v47);
    swift_setDeallocating();

    sub_100025F40(v49, &qword_1005CE820, &unk_1004D1138);
    swift_deallocClassInstance();
    sub_100061898(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    result = v43;
    *(v44 + 24) = v53;
  }

  return result;
}

uint64_t sub_10005CCD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v109 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v3 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v85 - v4;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v85 - v8;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v85 - v13;
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v18 = *(SearchResult - 8);
  v93 = SearchResult;
  v94 = v18;
  __chkstk_darwin(SearchResult);
  v106 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v85 - v21;
  v111 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v100 = *(v111 - 8);
  __chkstk_darwin(v111);
  v88 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v89 = &v85 - v25;
  __chkstk_darwin(v26);
  v91 = &v85 - v27;
  __chkstk_darwin(v28);
  v102 = &v85 - v29;
  __chkstk_darwin(v30);
  v95 = &v85 - v31;
  __chkstk_darwin(v32);
  v34 = &v85 - v33;
  __chkstk_darwin(v35);
  v101 = &v85 - v36;
  v92 = v2;
  v37 = *v2;
  v38 = sub_100016D2C();
  v107 = v34;
  v87 = v38;
  sub_1004A7114();
  v99 = v37;
  v39 = *(v37 + 16);
  v110 = v11;
  if (v39)
  {
    v40 = &v22[*(v93 + 20)];
    v41 = *(_s19UserInitiatedSearchV13FetchMessagesVMa(0) + 24);
    v42 = v99 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v43 = (v100 + 48);
    v44 = *(v94 + 72);
    v103 = v44;
    v104 = (v3 + 16);
    do
    {
      sub_100061830(v42, v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_10000E268(v40 + v41, v16, &qword_1005CD510, &unk_1004CF2E0);
      if ((*v43)(v16, 1, v111) == 1)
      {
        sub_100025F40(v16, &qword_1005CD510, &unk_1004CF2E0);
        v45 = v108;
        sub_10000E268(v40, v108, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v104)(v105, v45, v109);
        sub_1004A7104();
        v44 = v103;
        sub_100061898(v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v46 = v45;
        v47 = &unk_1005D91B0;
        v48 = &unk_1004CF400;
      }

      else
      {
        sub_100061898(v22, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v46 = v16;
        v47 = &qword_1005CD510;
        v48 = &unk_1004CF2E0;
      }

      sub_100025F40(v46, v47, v48);
      v42 += v44;
      --v39;
    }

    while (v39);
  }

  v49 = v101;
  sub_100025FDC(v107, v101, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1004A70C4())
  {
    sub_100025F40(v49, &unk_1005D91B0, &unk_1004CF400);
    v50 = 1;
    v51 = v97;
    v52 = v98;
    v53 = v96;
  }

  else
  {
    sub_10000E268(v49, v102, &unk_1005D91B0, &unk_1004CF400);
    v54 = v99;
    v55 = *(v99 + 16);
    v56 = v111;
    if (v55)
    {
      v57 = &v106[*(v93 + 20)];
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      v59 = v106;
      v107 = *(MessagesVMa + 24);
      v60 = v54 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v61 = (v100 + 48);
      v62 = *(v94 + 72);
      do
      {
        sub_100061830(v60, v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v66 = v110;
        sub_10000E268(v57 + v107, v110, &qword_1005CD510, &unk_1004CF2E0);
        if ((*v61)(v66, 1, v56) == 1)
        {
          sub_100061898(v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v63 = v110;
          v64 = &qword_1005CD510;
          v65 = &unk_1004CF2E0;
        }

        else
        {
          sub_100025F40(v110, &qword_1005CD510, &unk_1004CF2E0);
          v67 = v108;
          sub_10000E268(v57, v108, &qword_1005CD1D0, &unk_1004CF2C0);
          sub_1004A70F4();
          v56 = v111;
          sub_100061898(v59, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v63 = v67;
          v64 = &unk_1005D91B0;
          v65 = &unk_1004CF400;
        }

        sub_100025F40(v63, v64, v65);
        v60 += v62;
        --v55;
        v59 = v106;
      }

      while (v55);
    }

    sub_100025FDC(v102, v95, &unk_1005D91B0, &unk_1004CF400);
    v68 = type metadata accessor for FetchSearchResultMessages.Requests(0);
    v69 = v92;
    v70 = v92 + *(v68 + 24);
    if (v70[8])
    {
      v71 = v100;
      v72 = v90;
      (*(v100 + 56))(v90, 1, 1, v56);
      v73 = v88;
      sub_1004A7114();
      v74 = (*(v71 + 48))(v72, 1, v56);
      v52 = v98;
      v53 = v96;
      if (v74 != 1)
      {
        sub_100025F40(v72, &qword_1005CD510, &unk_1004CF2E0);
      }
    }

    else
    {
      v113 = *v70;
      v75 = sub_100016948();
      v112 = Range<>.init<A>(_:)(&v113, &type metadata for UID, v75);
      v76 = v90;
      sub_1004A7124();
      (*(v100 + 56))(v76, 0, 1, v56);
      v73 = v88;
      sub_100025FDC(v76, v88, &unk_1005D91B0, &unk_1004CF400);
      v52 = v98;
      v53 = v96;
    }

    v77 = v89;
    v78 = v95;
    MessageIdentifierSet.subtracting(_:)(v73, v89);
    sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
    v79 = v69 + *(v68 + 20);
    v80 = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v81 = v91;
    MessageIdentifierSet.subtracting(_:)(v79 + *(v80 + 20), v91);
    sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
    v82 = MessageIdentifierSet.count.getter();
    sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v101, &unk_1005D91B0, &unk_1004CF400);
    if (v82 < 1)
    {
      sub_100025F40(v81, &unk_1005D91B0, &unk_1004CF400);
      v50 = 1;
    }

    else
    {
      v83 = v86;
      sub_100025FDC(v81, v86, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v83, v52, &qword_1005CD1D0, &unk_1004CF2C0);
      v50 = 0;
    }

    v51 = v97;
  }

  return (*(v53 + 56))(v52, v50, 1, v51);
}

void *sub_10005D774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v20 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 1;
  if (sub_10006FE14(0x100000000uLL, a1, a2, a4) & 1) != 0 || (sub_10005826C(a1, a2, a3) & 1) != 0 || (v23 = 1, (sub_10006FE14(0x100000001uLL, a1, a2, a4)))
  {
    v13 = *(v20 + 56);

    return v13(a5, 1, 1, SearchResult);
  }

  else
  {
    result = sub_10005D9E8(&v22);
    v15 = v22;
    v16 = *(v22 + 16);
    if (v16)
    {
      v17 = 0;
      while (v17 < *(v15 + 16))
      {
        sub_100061830(v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v18 = *v12;
        v21 = 0;
        if ((sub_10001F940(v18, a2, a4) & 1) == 0)
        {

          sub_100061968(v12, a5, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v19 = 0;
          return (*(v20 + 56))(a5, v19, 1, SearchResult);
        }

        ++v17;
        result = sub_100061898(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        if (v16 == v17)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      v19 = 1;
      return (*(v20 + 56))(a5, v19, 1, SearchResult);
    }
  }

  return result;
}

uint64_t sub_10005D9E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v3 - 8);
  v5 = &v25[-v4];
  v6 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v25[-v10];
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  __chkstk_darwin(SearchResult - 8);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_100061830(v1 + *(SearchResultMessages + 48), v14, type metadata accessor for FetchSearchResultMessages.Requests);
  sub_10000E268(v1 + *(SearchResultMessages + 52), v5, &qword_1005CE3B0, &unk_1004D1010);
  v16 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_100025F40(v5, &qword_1005CE3B0, &unk_1004D1010);
    v17 = 1;
  }

  else
  {
    sub_10000E268(&v5[*(v16 + 20)], v11, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v5, type metadata accessor for NewServerMessages);
    v17 = 0;
  }

  v18 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);
  sub_10005B6BC(v8);
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v20 = (*(*(v19 - 8) + 48))(v8, 1, v19);
  v21 = sub_100025F40(v8, &qword_1005CD518, &qword_1004CF2F0);
  v22 = *v14;
  if (v20 == 1)
  {
  }

  else
  {
    __chkstk_darwin(v21);
    *&v25[-16] = v14;
    *&v25[-8] = v11;

    sub_10009E950(sub_100062CFC, &v25[-32], v22);
    v22 = v23;
  }

  *a1 = v22;
  sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
  return sub_100061898(v14, type metadata accessor for FetchSearchResultMessages.Requests);
}

void sub_10005DD90(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  if ((a1 & 0x1FFFFFFFFLL) == &_mh_execute_header)
  {
    v9 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    v10 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
    v15 = v9;
    sub_10000E268(v9 + v10, v8, &qword_1005CD510, &unk_1004CF2E0);
    v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    if (v13 == 1)
    {
      sub_100016D2C();
      sub_1004A7114();
      (*(v12 + 56))(v5, 0, 1, v11);
      sub_1000618F8(v5, v15 + v10);
    }
  }
}

uint64_t sub_10005DF64(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v10 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005D9E8(&v26);
  v25 = _swiftEmptySetSingleton;
  v13 = *(v26 + 16);
  if (v13)
  {
    v14 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    do
    {
      sub_100061830(v14, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_100088660(&v24, *v12);
      sub_100061898(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v14 += v15;
      --v13;
    }

    while (v13);

    v16 = v25;
  }

  else
  {

    v16 = _swiftEmptySetSingleton;
  }

  v17 = v2[2];
  v18 = v2[3];
  sub_1000B649C(v16, v17, v18);

  sub_10005E210(v8);
  sub_10005E608(v5);
  sub_1000B6658(v17, v18, v8, v5);
  sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2[5]);
  v19 = v23;
  *(&v23 - 2) = v2;
  *(&v23 - 1) = v19;
  return sub_10012D0D0(v20, v21, sub_100062CE8, (&v23 - 4));
}

uint64_t sub_10005E210@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v24 = &v24 - v3;
  v4 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v18 = v1 + *(SearchResultMessages + 48);
  v19 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_10000E268(v18 + v19 + *(MessagesVMa + 20), v16, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v1 + *(SearchResultMessages + 52), v6, &qword_1005CE3B0, &unk_1004D1010);
  v21 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
  {
    sub_100025F40(v6, &qword_1005CE3B0, &unk_1004D1010);
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v22 = v24;
    sub_10000E268(&v6[*(v21 + 20)], v24, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v6, type metadata accessor for NewServerMessages);
    sub_100025FDC(v22, v9, &unk_1005D91B0, &unk_1004CF400);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_100025FDC(v9, v13, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.union(_:)(v13, v25);
  sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10005E608@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v17 = *(SearchResult + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_10000E268(v15 + v17 + *(MessagesVMa + 24), v7, &qword_1005CD510, &unk_1004CF2E0);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v19(v7, 1, v8) != 1)
    {
      sub_100025F40(v7, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v7, v14, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_10000E268(v15 + *(SearchResult + 28), v4, &qword_1005CD510, &unk_1004CF2E0);
  if (v19(v4, 1, v8) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v19(v4, 1, v8) != 1)
    {
      sub_100025F40(v4, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v4, v11, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.union(_:)(v11, v22);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10005E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_10000E268(a3 + *(SearchResultMessages + 52), v10, &qword_1005CE3B0, &unk_1004D1010);
  v15 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_100025F40(v10, &qword_1005CE3B0, &unk_1004D1010);
    v16 = 1;
  }

  else
  {
    sub_10000E268(&v10[*(v15 + 20)], v13, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100061898(v10, type metadata accessor for NewServerMessages);
    v16 = 0;
  }

  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v17 - 8) + 56))(v13, v16, 1, v17);
  sub_100059B90(a1, a2 & 0x101010101FFFF01, v13, (a3 + *(SearchResultMessages + 28)), a4);
  return sub_100025F40(v13, &qword_1005CD518, &qword_1004CF2F0);
}

double sub_10005EB80()
{
  if (qword_1005CCE38 != -1)
  {
    swift_once();
  }

  return result;
}

const mach_header_64 *sub_10005EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const mach_header_64 **a5@<X8>)
{
  result = sub_10005C604(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_10005EC80@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  __chkstk_darwin(MessagesVMa - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19UserInitiatedSearchVMa(0);
  sub_100061830(a1 + *(v10 + 20), v6, _s19UserInitiatedSearchV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100061968(v6, v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v11 = *a1;
    SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    sub_100061968(v9, a2 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    *a2 = v11;
    return (*(*(SearchResult - 8) + 56))(a2, 0, 1, SearchResult);
  }

  else
  {
    sub_100061898(v6, _s19UserInitiatedSearchV5StateOMa);
    v14 = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_10005EEB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v3 - 8);
  v152 = &v143 - v4;
  v157 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v199 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v143 - v5;
  v150 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v151 = &v143 - v8;
  __chkstk_darwin(v9);
  v163 = &v143 - v10;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v179 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v144 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v143 - v15;
  __chkstk_darwin(v16);
  v159 = &v143 - v17;
  __chkstk_darwin(v18);
  v147 = &v143 - v19;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v184 = *(MessagesVMa - 8);
  __chkstk_darwin(MessagesVMa);
  v200 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = _s19UserInitiatedSearchVMa(0);
  v22 = *(v189 - 8);
  __chkstk_darwin(v189);
  v167 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C9C0(&qword_1005CE548, &unk_1004D0FE0);
  __chkstk_darwin(v24 - 8);
  v195 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v191 = &v143 - v27;
  v198 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v161 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v190 = &v143 - v30;
  v31 = sub_10000C9C0(&qword_1005CE558, &qword_1004D0FF0);
  __chkstk_darwin(v31 - 8);
  v194 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v188 = &v143 - v34;
  __chkstk_darwin(v35);
  v187 = &v143 - v36;
  v37 = sub_10000C9C0(&qword_1005CE540, &unk_1004D0FD0);
  __chkstk_darwin(v37 - 8);
  v193 = &v143 - v38;
  v39 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v39 - 8);
  v145 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v158 = &v143 - v42;
  __chkstk_darwin(v43);
  v45 = &v143 - v44;
  __chkstk_darwin(v46);
  v175 = &v143 - v47;
  __chkstk_darwin(v48);
  v174 = &v143 - v49;
  __chkstk_darwin(v50);
  v153 = &v143 - v51;
  __chkstk_darwin(v52);
  v172 = &v143 - v53;
  __chkstk_darwin(v54);
  v56 = &v143 - v55;
  __chkstk_darwin(v57);
  v59 = &v143 - v58;
  v61 = __chkstk_darwin(v60);
  v63 = &v143 - v62;
  v64 = *(v12 + 56);
  v64(&v143 - v62, 1, 1, v11, v61);
  v183 = v59;
  v65 = v59;
  v66 = v45;
  (v64)(v65, 1, 1, v11);
  v171 = v64;
  result = (v64)(v56, 1, 1, v11);
  v68 = 0;
  v69 = *a1;
  v166 = a1[1];
  v70 = a1[3];
  v169 = a1[2];
  v165 = v70;
  v71 = a1[5];
  v168 = a1[4];
  v160 = v71;
  v162 = a1[6];
  v201 = v69;
  v186 = (v22 + 56);
  v164 = v22;
  v185 = (v22 + 48);
  v72 = v196;
  v196 += 6;
  v197 = (v72 + 7);
  v73 = *(v69 + 16);
  v180 = (v184 + 56);
  v178 = (v184 + 48);
  v177 = v12 + 56;
  v182 = (v12 + 48);
  v155 = (v199 + 16);
  v192 = v56;
  v181 = v63;
  v170 = v69;
  v184 = v73;
  v176 = v66;
  v173 = MessagesVMa;
  while (1)
  {
    v76 = v191;
    if (v68 == v73)
    {
      v77 = 1;
      v199 = v73;
      v78 = v190;
      goto LABEL_10;
    }

    if ((v68 & 0x8000000000000000) != 0)
    {
      break;
    }

    v78 = v190;
    if (v68 >= *(v69 + 16))
    {
      goto LABEL_49;
    }

    sub_100061830(v69 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v68, v191, _s19UserInitiatedSearchVMa);
    v77 = 0;
    v199 = v68 + 1;
LABEL_10:
    v79 = MessagesVMa;
    v80 = 1;
    v81 = v189;
    (*v186)(v76, v77, 1, v189);
    v82 = v76;
    v83 = v195;
    sub_100025FDC(v82, v195, &qword_1005CE548, &unk_1004D0FE0);
    v84 = (*v185)(v83, 1, v81);
    v85 = v188;
    if (v84 != 1)
    {
      v86 = v167;
      sub_100061968(v195, v167, _s19UserInitiatedSearchVMa);
      v166(v86);
      sub_100061898(v86, _s19UserInitiatedSearchVMa);
      v80 = 0;
    }

    v87 = *v197;
    v88 = v80;
    v89 = v198;
    (*v197)(v85, v88, 1, v198);
    v90 = *v196;
    if ((*v196)(v85, 1, v89) == 1)
    {
      sub_100025F40(v85, &qword_1005CE558, &qword_1004D0FF0);
      v91 = 1;
    }

    else
    {
      sub_100025FDC(v85, v78, &qword_1005CE550, &unk_1004D1260);
      v92 = v165(v78);
      if ((v92 & 1) == 0)
      {
        result = sub_100025F40(v78, &qword_1005CE550, &unk_1004D1260);
        MessagesVMa = v79;
        goto LABEL_4;
      }

      sub_100025FDC(v78, v187, &qword_1005CE550, &unk_1004D1260);
      v91 = 0;
    }

    v93 = 1;
    v94 = v187;
    v95 = v198;
    v87(v187, v91, 1, v198);
    v96 = v194;
    sub_100025FDC(v94, v194, &qword_1005CE558, &qword_1004D0FF0);
    if (v90(v96, 1, v95) != 1)
    {
      v97 = v161;
      sub_100025FDC(v194, v161, &qword_1005CE550, &unk_1004D1260);
      v160(v97);
      sub_100025F40(v97, &qword_1005CE550, &unk_1004D1260);
      v93 = 0;
    }

    v98 = *v180;
    v99 = v193;
    v100 = v79;
    (*v180)(v193, v93, 1, v79);
    v101 = (*v178)(v99, 1, v79);
    v102 = v182;
    if (v101 == 1)
    {
      sub_100025F40(&v201, &qword_1005CE560, &qword_1004D0FF8);

      v122 = v153;
      sub_10000E268(v63, v153, &qword_1005CD510, &unk_1004CF2E0);
      v123 = *v102;
      if ((*v102)(v122, 1, v179) == 1)
      {
        sub_100025F40(v122, &qword_1005CD510, &unk_1004CF2E0);
        v124 = 1;
        v125 = v154;
        v126 = v183;
      }

      else
      {
        v127 = v147;
        sub_100025FDC(v122, v147, &unk_1005D91B0, &unk_1004CF400);
        v128 = v148;
        sub_10000E268(v127, v148, &unk_1005D91B0, &unk_1004CF400);
        v129 = MessageIdentifierSet.count.getter();
        sub_100025F40(v127, &unk_1005D91B0, &unk_1004CF400);
        if (v129 <= 0)
        {
          sub_100025F40(v128, &unk_1005D91B0, &unk_1004CF400);
          v133 = 1;
          v132 = v152;
        }

        else
        {
          v130 = v146;
          sub_100025FDC(v128, v146, &unk_1005D91B0, &unk_1004CF400);
          v131 = v130;
          v132 = v152;
          sub_100025FDC(v131, v152, &qword_1005CD1D0, &unk_1004CF2C0);
          v133 = 0;
        }

        v134 = v151;
        v126 = v183;
        v135 = v149;
        v136 = v150;
        (*(v149 + 56))(v132, v133, 1, v150);
        if ((*(v135 + 48))(v132, 1, v136) == 1)
        {
          v137 = &qword_1005CD518;
          v138 = &qword_1004CF2F0;
          v139 = v132;
        }

        else
        {
          sub_100025FDC(v132, v134, &qword_1005CD1D0, &unk_1004CF2C0);
          v140 = v145;
          sub_10000E268(v126, v145, &qword_1005CD510, &unk_1004CF2E0);
          if (v123(v140, 1, v179) != 1)
          {
            v141 = v140;
            v142 = v144;
            sub_100025FDC(v141, v144, &unk_1005D91B0, &unk_1004CF400);
            v125 = v154;
            sub_100025FDC(v134, v154, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_100025FDC(v142, v125 + *(v100 + 20), &unk_1005D91B0, &unk_1004CF400);
            sub_10000E268(v192, v125 + *(v100 + 24), &qword_1005CD510, &unk_1004CF2E0);
            v124 = 0;
            goto LABEL_47;
          }

          sub_100025F40(v134, &qword_1005CD1D0, &unk_1004CF2C0);
          v137 = &qword_1005CD510;
          v138 = &unk_1004CF2E0;
          v139 = v140;
        }

        sub_100025F40(v139, v137, v138);
        v124 = 1;
        v125 = v154;
      }

LABEL_47:
      sub_100025F40(v192, &qword_1005CD510, &unk_1004CF2E0);
      sub_100025F40(v126, &qword_1005CD510, &unk_1004CF2E0);
      sub_100025F40(v63, &qword_1005CD510, &unk_1004CF2E0);
      return v98(v125, v124, 1, v100);
    }

    v103 = v200;
    sub_100061968(v99, v200, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v104 = v172;
    sub_10000E268(v63, v172, &qword_1005CD510, &unk_1004CF2E0);
    v105 = *v102;
    v106 = v179;
    v107 = (*v102)(v104, 1, v179);
    sub_100025F40(v104, &qword_1005CD510, &unk_1004CF2E0);
    if (v107 == 1)
    {
      sub_100025F40(v63, &qword_1005CD510, &unk_1004CF2E0);
      v108 = v163;
      sub_10000E268(v103, v163, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v108, v63, &unk_1005D91B0, &unk_1004CF400);
      (v171)(v63, 0, 1, v106);
    }

    else if (!v105(v63, 1, v106))
    {
      v109 = v163;
      sub_10000E268(v200, v163, &qword_1005CD1D0, &unk_1004CF2C0);
      (*v155)(v156, v109, v157);
      sub_1004A7104();
      sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
    }

    v110 = v183;
    v111 = v174;
    sub_10000E268(v183, v174, &qword_1005CD510, &unk_1004CF2E0);
    v112 = v105(v111, 1, v106);
    sub_100025F40(v111, &qword_1005CD510, &unk_1004CF2E0);
    MessagesVMa = v173;
    if (v112 == 1)
    {
      sub_100025F40(v110, &qword_1005CD510, &unk_1004CF2E0);
      sub_10000E268(v200 + *(MessagesVMa + 20), v110, &unk_1005D91B0, &unk_1004CF400);
      (v171)(v110, 0, 1, v106);
      v113 = v176;
      v114 = v192;
    }

    else
    {
      v115 = v105(v110, 1, v106);
      v113 = v176;
      v114 = v192;
      if (!v115)
      {
        (*v155)(v156, v200 + *(MessagesVMa + 20), v157);
        v114 = v192;
        sub_1004A7104();
      }
    }

    v116 = v175;
    sub_10000E268(v114, v175, &qword_1005CD510, &unk_1004CF2E0);
    v117 = v105(v116, 1, v106);
    sub_100025F40(v116, &qword_1005CD510, &unk_1004CF2E0);
    v118 = *(MessagesVMa + 24);
    v63 = v181;
    if (v117 == 1)
    {
      v74 = v200;
      v75 = v158;
      sub_10000E268(v200 + v118, v158, &qword_1005CD510, &unk_1004CF2E0);
      sub_100061898(v74, _s19UserInitiatedSearchV13FetchMessagesVMa);
      result = sub_1000618F8(v75, v114);
    }

    else
    {
      v119 = v200;
      sub_10000E268(v200 + v118, v113, &qword_1005CD510, &unk_1004CF2E0);
      if (v105(v113, 1, v106) == 1)
      {
        sub_100061898(v119, _s19UserInitiatedSearchV13FetchMessagesVMa);
        result = sub_100025F40(v113, &qword_1005CD510, &unk_1004CF2E0);
      }

      else
      {
        sub_100025FDC(v113, v159, &unk_1005D91B0, &unk_1004CF400);
        if (v105(v192, 1, v106))
        {
          sub_100025F40(v159, &unk_1005D91B0, &unk_1004CF400);
          v120 = v119;
        }

        else
        {
          v121 = v159;
          (*v155)(v156, v159, v157);
          sub_1004A7104();
          sub_100025F40(v121, &unk_1005D91B0, &unk_1004CF400);
          v120 = v200;
        }

        result = sub_100061898(v120, _s19UserInitiatedSearchV13FetchMessagesVMa);
      }
    }

    v69 = v170;
LABEL_4:
    v68 = v199;
    v73 = v184;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000603E8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v21 = a3;
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  __chkstk_darwin(MessagesVMa - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  sub_100061830(a1 + *(SearchResult + 20), v14, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v16 = type metadata accessor for FetchSearchResultMessages.Requests(0);
  sub_10000E268(a2 + *(v16 + 28), v7, &qword_1005CD510, &unk_1004CF2E0);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    if (v17(v7, 1, v8) != 1)
    {
      sub_100025F40(v7, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_100025FDC(v7, v11, &unk_1005D91B0, &unk_1004CF400);
  }

  v18 = sub_100060698(v11, v21, *(a2 + *(v16 + 24)), *(a2 + *(v16 + 24) + 8));
  sub_100061898(v14, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  return v18 & 1;
}

uint64_t sub_100060698(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  v66 = a4;
  v54 = a3;
  v57 = a2;
  v64 = a1;
  v6 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v9 - 8);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v56 = *(v20 - 8);
  __chkstk_darwin(v20);
  v65 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v59 = &v54 - v23;
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  __chkstk_darwin(v27);
  v29 = &v54 - v28;
  __chkstk_darwin(v30);
  v32 = &v54 - v31;
  __chkstk_darwin(v33);
  v58 = &v54 - v34;
  __chkstk_darwin(v35);
  v62 = &v54 - v36;
  __chkstk_darwin(v37);
  v63 = &v54 - v38;
  sub_10000E268(v5, v19, &qword_1005CD1D0, &unk_1004CF2C0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v39 = *(MessagesVMa + 20);
  v61 = v5;
  MessageIdentifierSet.subtracting(_:)(v5 + v39, v29);
  sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v57, v8, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_100025F40(v8, &qword_1005CD518, &qword_1004CF2F0);
    v40 = v56;
    v57 = *(v56 + 56);
    v57(v15, 1, 1, v20);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v40 + 48))(v15, 1, v20) != 1)
    {
      sub_100025F40(v15, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    sub_10000E268(v8, v15, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v8, &qword_1005CD1D0, &unk_1004CF2C0);
    v40 = v56;
    v57 = *(v56 + 56);
    v57(v15, 0, 1, v20);
    sub_100025FDC(v15, v26, &unk_1005D91B0, &unk_1004CF400);
  }

  MessageIdentifierSet.subtracting(_:)(v26, v32);
  sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
  v41 = v60;
  sub_10000E268(v61 + *(MessagesVMa + 24), v60, &qword_1005CD510, &unk_1004CF2E0);
  v42 = *(v40 + 48);
  if (v42(v41, 1, v20) == 1)
  {
    sub_100016D2C();
    v43 = v59;
    sub_1004A7114();
    v44 = v42(v41, 1, v20);
    v45 = v62;
    if (v44 != 1)
    {
      sub_100025F40(v41, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v43 = v59;
    sub_100025FDC(v41, v59, &unk_1005D91B0, &unk_1004CF400);
    v45 = v62;
  }

  v46 = v58;
  MessageIdentifierSet.subtracting(_:)(v43, v58);
  sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.subtracting(_:)(v64, v45);
  sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
  if (v66)
  {
    v47 = v67;
    v57(v67, 1, 1, v20);
    sub_100016D2C();
    v48 = v65;
    sub_1004A7114();
    if (v42(v47, 1, v20) != 1)
    {
      sub_100025F40(v47, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v69 = v54;
    v49 = sub_100016948();
    v68 = Range<>.init<A>(_:)(&v69, &type metadata for UID, v49);
    sub_100016D2C();
    v50 = v67;
    sub_1004A7124();
    v57(v50, 0, 1, v20);
    v48 = v65;
    sub_100025FDC(v50, v65, &unk_1005D91B0, &unk_1004CF400);
  }

  v51 = v63;
  MessageIdentifierSet.subtracting(_:)(v48, v63);
  sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v52 = sub_1004A70C4();
  sub_100025F40(v51, &unk_1005D91B0, &unk_1004CF400);
  return v52 & 1;
}

uint64_t sub_100060EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10000E268(a1, &v9 - v5, &qword_1005CE550, &unk_1004D1260);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  result = (*(*(SearchResult - 8) + 48))(v6, 1, SearchResult);
  if (result != 1)
  {
    return sub_100061968(v6, a2, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060FFC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v8 = __chkstk_darwin(SearchResult - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(a1, v8);
  a2(v10);
  return sub_100061898(v10, type metadata accessor for FetchSearchResultMessages.Requests.Search);
}

BOOL sub_1000610D0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for FetchSearchResultMessages.Requests.Search(0) + 20);
  v17 = a1 + v16;
  v18 = a2 + v16;
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v20 = *(MessagesVMa + 24);
  v21 = &v17[v20];
  v22 = *(v15 + 48);
  sub_10000E268(v21, v14, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(&v18[v20], &v14[v22], &qword_1005CD510, &unk_1004CF2E0);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_100025F40(v14, &qword_1005CD510, &unk_1004CF2E0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_10000E268(v14, v10, &qword_1005CD510, &unk_1004CF2E0);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
LABEL_9:
    sub_100025F40(v14, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  sub_100025FDC(&v14[v22], v7, &unk_1005D91B0, &unk_1004CF400);
  v25 = sub_1004A7034();
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v14, &qword_1005CD510, &unk_1004CF2E0);
  return (v25 & 1) != 0;
}

BOOL sub_100061444(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((sub_100101D68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (!sub_100185614(a1 + SearchResult[5], a2 + SearchResult[5]))
  {
    return 0;
  }

  v15 = SearchResult[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v16)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = SearchResult[7];
  v21 = a1 + v20;
  v22 = *(v11 + 48);
  sub_10000E268(v21, v13, &qword_1005CD510, &unk_1004CF2E0);
  sub_10000E268(a2 + v20, &v13[v22], &qword_1005CD510, &unk_1004CF2E0);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_10000E268(v13, v10, &qword_1005CD510, &unk_1004CF2E0);
    if (v23(&v13[v22], 1, v4) != 1)
    {
      sub_100025FDC(&v13[v22], v7, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v25 = sub_1004A7034();
      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
      return (v25 & 1) != 0;
    }

    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
LABEL_14:
    sub_100025F40(v13, &qword_1005CE810, &unk_1004D1120);
    return 0;
  }

  if (v23(&v13[v22], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
  return 1;
}

uint64_t sub_1000617CC()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100061830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100061898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000618F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000619F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_10005826C(a2, a3, a4);
  if (result)
  {
    sub_100061830(a1, v14, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v23, v14, sizeof(v23));
      SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
      v17 = *(v6 + *(SearchResultMessages + 28) + 8);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v17 + 8 * v18 + 24);
      }

      else
      {
        v19 = 1;
      }

      v20 = *(SearchResultMessages + 52);
      v21 = type metadata accessor for NewServerMessages(0);
      if (!(*(*(v21 - 8) + 48))(v6 + v20, 1, v21))
      {
        sub_1000FAD60(v23, v19, a6);
      }

      return sub_100025D5C(v23);
    }

    else
    {
      return sub_100061898(v14, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_100061B9C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v8 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  __chkstk_darwin(v8);
  v10 = (&v33 - v9);
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v36 = &v33 - v12;
  v13 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v38 = 1;
  result = sub_10006FE14(0x100000000uLL, a2, a3, a4);
  if (result)
  {
    v21 = v4;
    v22 = v4 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    sub_10005CCD4(v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v23 = &qword_1005CD518;
      v24 = &qword_1004CF2F0;
      v25 = v15;
    }

    else
    {
      sub_100025FDC(v15, v19, &qword_1005CD1D0, &unk_1004CF2C0);
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xA)
      {
        v26 = swift_projectBox();
        sub_10000E268(v26, v10, &qword_1005CD4F8, &unk_1004CF790);
        v27 = *(v8 + 48);
        v28 = *(v8 + 64);
        if (*(v21 + 24) == v10[1])
        {
          v29 = sub_1000FFC98(*(v21 + 16), *v10);

          if (v29)
          {
            v30 = v36;
            sub_100025FDC(v10 + v27, v36, &unk_1005D91B0, &unk_1004CF400);
            sub_100016D2C();
            v31 = sub_1004A7034();
            sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
            sub_100025F40(v10 + v28, &qword_1005CD1D0, &unk_1004CF2C0);
            if (v31)
            {
              v32 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
              sub_100025F40(v22 + v32, &qword_1005CD510, &unk_1004CF2E0);
              sub_100025FDC(v30, v22 + v32, &unk_1005D91B0, &unk_1004CF400);
              return (*(v34 + 56))(v22 + v32, 0, 1, v35);
            }

            v23 = &unk_1005D91B0;
            v24 = &unk_1004CF400;
            v25 = v30;
            return sub_100025F40(v25, v23, v24);
          }
        }

        else
        {
        }

        sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025F40(v10 + v28, &qword_1005CD1D0, &unk_1004CF2C0);
        v23 = &unk_1005D91B0;
        v24 = &unk_1004CF400;
        v25 = v10 + v27;
      }

      else
      {
        v23 = &qword_1005CD1D0;
        v24 = &unk_1004CF2C0;
        v25 = v19;
      }
    }

    return sub_100025F40(v25, v23, v24);
  }

  return result;
}

BOOL sub_100061FF0(uint64_t a1)
{
  v2 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19UserInitiatedSearchVMa(0);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_100061830(v10, v8, _s19UserInitiatedSearchVMa);
    sub_100061968(&v8[*(v5 + 20)], v4, _s19UserInitiatedSearchV5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100061898(v4, _s19UserInitiatedSearchV5StateOMa);
    result = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

uint64_t sub_1000621B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v7 = *(*(MessagesVMa - 8) + 48);

  return v7(a1 + v5, a2, MessagesVMa);
}

uint64_t sub_100062244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v8 = *(*(MessagesVMa - 8) + 56);

  return v8(a1 + v6, a2, a2, MessagesVMa);
}

uint64_t sub_1000622C0(uint64_t a1)
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100062350(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v9 = *(MessagesVMa - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = MessagesVMa;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100062494(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v9 = *(MessagesVMa - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = MessagesVMa;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000625C4(uint64_t a1)
{
  sub_100062B58(319, &unk_1005CE660, type metadata accessor for FetchSearchResultMessages.Requests.Search, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    _s19UserInitiatedSearchV13FetchMessagesVMa(319);
    if (v2 <= 0x3F)
    {
      sub_1000626A8();
      if (v3 <= 0x3F)
      {
        sub_100035D34(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000626A8()
{
  if (!qword_1005CE428)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE428);
    }
  }
}

uint64_t sub_10006270C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (*(*(SearchResult - 8) + 84) == a2)
  {
    v9 = SearchResult;
    v10 = *(SearchResult - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_100062898(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (*(*(SearchResult - 8) + 84) == a3)
  {
    v9 = SearchResult;
    v10 = *(SearchResult - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

void sub_100062A30(uint64_t a1)
{
  sub_10002AABC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FetchSearchResultMessages.Requests(319);
      if (v3 <= 0x3F)
      {
        sub_100062B58(319, &qword_1005CE420, type metadata accessor for NewServerMessages, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100062B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100062BC0()
{
  result = qword_1005CE748;
  if (!qword_1005CE748)
  {
    result = swift_getWitnessTable(byte_1004D10A8, &type metadata for FetchSearchResultMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005CE748);
  }

  return result;
}

unint64_t sub_100062C14()
{
  result = qword_1005CE750;
  if (!qword_1005CE750)
  {
    result = swift_getWitnessTable(byte_1004D1080, &type metadata for FetchSearchResultMessages.CommandID, v0, v1);
    atomic_store(result, &qword_1005CE750);
  }

  return result;
}

unint64_t sub_100062C68(uint64_t a1)
{
  result = sub_100062C90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100062C90()
{
  result = qword_1005CE808;
  if (!qword_1005CE808)
  {
    SearchResultMessages = type metadata accessor for FetchSearchResultMessages(255);
    result = swift_getWitnessTable("m]\v", SearchResultMessages, v0, v1);
    atomic_store(result, &qword_1005CE808);
  }

  return result;
}

uint64_t sub_100062D1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062D54()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t getEnumTagSinglePayload for FetchSearchResultMessages.ActionID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FetchSearchResultMessages.ActionID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100062DF0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100062E0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_100062E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (!sub_1000FFEE8(*a1, *a2) || (sub_100113FD0(v2, v5) & 1) == 0 || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

  return sub_100114320(v4, v7);
}

uint64_t sub_100062EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v24[8] = *(a1 + 128);
  v24[9] = v2;
  v3 = *(a1 + 176);
  v24[10] = *(a1 + 160);
  v4 = *(a1 + 80);
  v24[4] = *(a1 + 64);
  v24[5] = v4;
  v5 = *(a1 + 112);
  v24[6] = *(a1 + 96);
  v24[7] = v5;
  v6 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v6;
  v7 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v7;
  v8 = *(a1 + 192);
  v9 = *(a1 + 224);
  v20[2] = *(a1 + 208);
  v20[3] = v9;
  v20[0] = v3;
  v20[1] = v8;
  v10 = *(a2 + 144);
  v25[8] = *(a2 + 128);
  v25[9] = v10;
  v11 = *(a2 + 176);
  v25[10] = *(a2 + 160);
  v12 = *(a2 + 80);
  v25[4] = *(a2 + 64);
  v25[5] = v12;
  v13 = *(a2 + 112);
  v25[6] = *(a2 + 96);
  v25[7] = v13;
  v14 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v14;
  v15 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v15;
  v16 = *(a2 + 192);
  v17 = *(a2 + 224);
  v22[2] = *(a2 + 208);
  v22[3] = v17;
  v21 = *(a1 + 240);
  v23 = *(a2 + 240);
  v22[0] = v11;
  v22[1] = v16;
  if (sub_10009D400(v24, v25))
  {
    v18 = static RemoteMailbox.__derived_struct_equals(_:_:)(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

__n128 sub_100062FBC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  *(&a1[1] + 8) = v3;
  return result;
}

uint64_t sub_100062FE0()
{
  sub_100065670(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  v2 = v1;

  return v2;
}

uint64_t sub_100063050(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0) + 20));
  result = sub_100025FDC(v4, v17, &unk_1005D91B0, &unk_1004CF400);
  *&v17[*(v15 + 28)] = v18;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_100066C38(v17, a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    a1 = (v23 + 48);
    v20 = 1;
    while (1)
    {
      sub_1000D8CF4(v10);
      if ((*a1)(v10, 1, v11) == 1)
      {
        break;
      }

      sub_100025FDC(v10, v13, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v13, a2, &qword_1005CD1D0, &unk_1004CF2C0);
      if (a3 == v20)
      {
        goto LABEL_12;
      }

      a2 += *(v23 + 72);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_100025F40(v10, &qword_1005CD518, &qword_1004CF2F0);
    a3 = v20 - 1;
LABEL_12:
    a1 = v22;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000632E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (!a2)
  {
LABEL_38:
    v10 = 0;
    a3 = 0;
    goto LABEL_41;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = 0;
  v55 = a4 + 32;
  v56 = a7;
  v11 = 1;
  v54 = result;
  v50 = a3;
  while (2)
  {
    v12 = v11;
    v13 = *(a4 + 16);
    if (v10 == v13)
    {
      a3 = v9;
      goto LABEL_41;
    }

    v52 = a2;
    v53 = v9;
    v51 = v12;
    if (v10 < v13)
    {
      v14 = (v55 + 176 * v10);
      while (1)
      {
        v15 = v14[9];
        v88 = v14[8];
        v89 = v15;
        v90 = v14[10];
        v16 = v14[5];
        v84 = v14[4];
        v85 = v16;
        v17 = v14[7];
        v86 = v14[6];
        v87 = v17;
        v18 = v14[1];
        v80 = *v14;
        v81 = v18;
        v19 = v14[3];
        v82 = v14[2];
        v83 = v19;
        if (*(a5 + 16))
        {
          v20 = v80;
          v21 = v81;
          v22 = DWORD2(v81);
          v23 = DWORD1(v85);
          v24 = BYTE8(v85);
          v7 = a4;
          v25 = sub_100063B5C(v81, DWORD2(v81));
          a4 = v7;
          if (v26)
          {
            break;
          }
        }

LABEL_30:
        ++v10;
        v37 = *(a4 + 16);
        if (v10 == v37)
        {
          a3 = v53;
          result = v54;
          a7 = v56;
          goto LABEL_41;
        }

        v14 += 11;
        if (v10 >= v37)
        {
          goto LABEL_43;
        }
      }

      v27 = *(a5 + 56) + 72 * v25;
      v75 = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      v79 = *(v27 + 64);
      v77 = v29;
      v78 = v28;
      v76 = v30;
      sub_10000E08C(&v80, &v59);
      sub_100063BD4(&v75, &v59);
      v31 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v32 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v31)
      {
        if ((v32 & ~v31) == 0)
        {
LABEL_15:
          if ((HIWORD(v75) & v31) != 0)
          {
            sub_100063C30(&v75);
            sub_10000E0E8(&v80);
LABEL_29:
            a4 = v7;
            goto LABEL_30;
          }

LABEL_17:
          v67 = v88;
          v68 = v89;
          v69 = v90;
          v63 = v84;
          v64 = v85;
          v65 = v86;
          v66 = v87;
          v59 = v80;
          v60 = v81;
          v61 = v82;
          v62 = v83;
          v72 = v77;
          v73 = v78;
          v74 = v79;
          v70 = v75;
          v71 = v76;
          if ((a6 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_10000E08C(&v80, v58);
          sub_100063BD4(&v75, v58);
          v33 = MailboxName.isInbox.getter(v21, v22);
          sub_100063C30(&v75);
          if ((v33 & 1) != 0 || v76 > 7u || ((1 << v76) & 0xDB) == 0 || (v24 & 1) == 0 && ((BYTE12(v86) & 1) != 0 || DWORD2(v86) < v23))
          {
            sub_10000E0E8(&v80);
LABEL_34:
            ++v10;
            v38 = v59;
            v39 = v60;
            v40 = v62;
            *(v52 + 32) = v61;
            *(v52 + 48) = v40;
            *v52 = v38;
            *(v52 + 16) = v39;
            v41 = v63;
            v42 = v64;
            v43 = v66;
            *(v52 + 96) = v65;
            *(v52 + 112) = v43;
            *(v52 + 64) = v41;
            *(v52 + 80) = v42;
            v44 = v67;
            v45 = v68;
            v46 = v70;
            *(v52 + 160) = v69;
            *(v52 + 176) = v46;
            *(v52 + 128) = v44;
            *(v52 + 144) = v45;
            v47 = v71;
            v48 = v72;
            v49 = v73;
            *(v52 + 240) = v74;
            *(v52 + 208) = v48;
            *(v52 + 224) = v49;
            *(v52 + 192) = v47;
            a3 = v50;
            if (v51 == v50)
            {
              goto LABEL_44;
            }

            a2 = v52 + 248;
            v9 = v51;
            v11 = v51 + 1;
            a7 = v56;
            result = v54;
            a4 = v7;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            continue;
          }

          sub_10000E0E8(&v80);
          if (*(v56 + 16))
          {
            v34 = sub_100063C84(v20, *(&v20 + 1));
            v36 = v35;

            if ((v36 & 1) != 0 && (~*(*(v56 + 56) + 2 * v34) & 0x3FFF) != 0)
            {
              goto LABEL_34;
            }

            sub_100063CF8(&v59);
          }

          else
          {
            sub_100063CF8(&v59);
          }

          goto LABEL_29;
        }
      }

      else if (!v32)
      {
        goto LABEL_17;
      }

      LOWORD(v31) = v32 | v31;
      goto LABEL_15;
    }

    break;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  a7 = v56;
  result = v54;
  a4 = v7;
LABEL_41:
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a6 & 1;
  *(result + 24) = a7;
  *(result + 32) = v10;
  return a3;
}

double sub_1000636C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v2 == v4)
  {
LABEL_2:
    sub_1000642EC(&v92);
    goto LABEL_3;
  }

  if (v2 < v4)
  {
    v13 = *(v43 + 8);
    do
    {
      v14 = (v3 + 32 + 176 * v2);
      v15 = *v14;
      v16 = v14[2];
      v82 = v14[1];
      v83 = v16;
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v86 = v14[5];
      v87 = v19;
      v84 = v17;
      v85 = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[10];
      v90 = v14[9];
      v91 = v22;
      v88 = v20;
      v89 = v21;
      v81 = v15;
      if (!*(v13 + 16))
      {
        goto LABEL_27;
      }

      v23 = v81;
      v24 = v82;
      v25 = DWORD2(v82);
      v26 = DWORD1(v86);
      v27 = BYTE8(v86);
      v28 = sub_100063B5C(v82, DWORD2(v82));
      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }

      v30 = *(v13 + 56) + 72 * v28;
      v76 = *v30;
      v32 = *(v30 + 32);
      v31 = *(v30 + 48);
      v33 = *(v30 + 64);
      v77 = *(v30 + 16);
      v78 = v32;
      v80 = v33;
      v79 = v31;
      sub_10000E08C(&v81, &v92);
      sub_100063BD4(&v76, &v92);
      v34 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v35 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v34)
      {
        if ((v35 & ~v34) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (!v35)
      {
        goto LABEL_15;
      }

      LOWORD(v34) = v35 | v34;
LABEL_13:
      if ((HIWORD(v76) & v34) == 0)
      {
LABEL_15:
        v68 = v89;
        v69 = v90;
        v70 = v91;
        v64 = v85;
        v65 = v86;
        v66 = v87;
        v67 = v88;
        v60 = v81;
        v61 = v82;
        v62 = v83;
        v63 = v84;
        v73 = v78;
        v74 = v79;
        v75 = v80;
        v71 = v76;
        v72 = v77;
        if ((*(v43 + 16) & 1) == 0)
        {
          goto LABEL_31;
        }

        sub_10000E08C(&v81, &v92);
        sub_100063BD4(&v76, &v92);
        v36 = MailboxName.isInbox.getter(v24, v25);
        sub_100063C30(&v76);
        if ((v36 & 1) != 0 || v77 > 7u || ((1 << v77) & 0xDB) == 0 || (v27 & 1) == 0 && ((BYTE12(v87) & 1) != 0 || DWORD2(v87) < v26))
        {
          goto LABEL_30;
        }

        v37 = *(v43 + 24);

        sub_10000E0E8(&v81);
        if (*(v37 + 16))
        {
          v38 = sub_100063C84(v23, *(&v23 + 1));
          v40 = v39;

          if ((v40 & 1) != 0 && (~*(*(v37 + 56) + 2 * v38) & 0x3FFF) != 0)
          {
            goto LABEL_31;
          }

          sub_100063CF8(&v60);
        }

        else
        {
          sub_100063CF8(&v60);
        }

        goto LABEL_27;
      }

      sub_100063C30(&v76);
      sub_10000E0E8(&v81);
LABEL_27:
      *(v43 + 32) = ++v2;
      v41 = *(v3 + 16);
      if (v2 == v41)
      {
        goto LABEL_2;
      }
    }

    while (v2 < v41);
  }

  __break(1u);
LABEL_30:
  sub_10000E0E8(&v81);
LABEL_31:
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  UInt32.init(_:)(&v44);
  *(v43 + 32) = v2 + 1;
  v104 = v56;
  v105 = v57;
  v106 = v58;
  v107 = v59;
  v100 = v52;
  v101 = v53;
  v102 = v54;
  v103 = v55;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  v99 = v51;
  v92 = v44;
  v93 = v45;
  v94 = v46;
  v95 = v47;
LABEL_3:
  v5 = v105;
  *(a1 + 192) = v104;
  *(a1 + 208) = v5;
  *(a1 + 224) = v106;
  *(a1 + 240) = v107;
  v6 = v101;
  *(a1 + 128) = v100;
  *(a1 + 144) = v6;
  v7 = v103;
  *(a1 + 160) = v102;
  *(a1 + 176) = v7;
  v8 = v97;
  *(a1 + 64) = v96;
  *(a1 + 80) = v8;
  v9 = v99;
  *(a1 + 96) = v98;
  *(a1 + 112) = v9;
  v10 = v93;
  *a1 = v92;
  *(a1 + 16) = v10;
  result = *&v94;
  v12 = v95;
  *(a1 + 32) = v94;
  *(a1 + 48) = v12;
  return result;
}

double sub_100063A8C@<D0>(uint64_t a1@<X8>)
{
  sub_1000636C0(v10);
  v2 = v22;
  *(a1 + 192) = v21;
  *(a1 + 208) = v2;
  *(a1 + 224) = v23;
  *(a1 + 240) = v24;
  v3 = v18;
  *(a1 + 128) = v17;
  *(a1 + 144) = v3;
  v4 = v20;
  *(a1 + 160) = v19;
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  return result;
}

unint64_t sub_100063B08()
{
  result = qword_1005CE830;
  if (!qword_1005CE830)
  {
    result = swift_getWitnessTable(byte_1004D11B0, &_s17FilteredMailboxesV8IteratorVN, v0, v1);
    atomic_store(result, &qword_1005CE830);
  }

  return result;
}

unint64_t sub_100063B5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  v4 = sub_1004A6F14();

  return sub_100064150(a1, v2, v4);
}

unint64_t sub_100063C84(uint64_t a1, Swift::UInt a2)
{
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v4 = sub_1004A6F14();

  return sub_100064224(a1, a2, v4);
}

unint64_t sub_100063D2C(uint64_t a1)
{
  v1 = a1;
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  v2 = sub_1004A6F14();
  return sub_100064318(v1, v2);
}

unint64_t sub_100063D94(uint64_t a1)
{
  v2 = sub_1004A6E84();

  return sub_100064384(a1, v2);
}

unint64_t sub_100063E04(uint64_t a1)
{
  sub_1004A6E94();
  sub_1000EB38C(v4);
  v2 = sub_1004A6F14();

  return sub_100064C54(a1, v2);
}

unint64_t sub_100063E70(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004A6E94();
  v5 = *(*a1 + 96);
  swift_beginAccess();
  sub_100066E8C(a1 + v5, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000EB38C(v9);
  sub_100066EF4(v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  v6 = sub_1004A6F14();
  return sub_100064DB4(a1, v6);
}

unint64_t sub_100063F7C(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_100092C14(v6, a1);
  sub_100092C14(v6, a2);
  v4 = sub_1004A6F14();

  return sub_100064F94(a1, a2, v4);
}

unint64_t sub_100063FFC(unsigned __int8 *a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(*a1);
  sub_1004A6EE4(*(a1 + 1));
  sub_1004A6EB4(*(a1 + 4) | (*(a1 + 4) << 32));
  sub_1004A4424();
  v2 = sub_1004A6F14();

  return sub_100065094(a1, v2);
}

uint64_t sub_1000640BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1004A6E94();
  a3(v10, a1, a2);
  v7 = sub_1004A6F14();

  return a4(a1, a2, v7);
}

unint64_t sub_100064150(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if ((v8[2] | (v8[2] << 32)) == (a2 | (a2 << 32)))
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100064224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2)
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_1000642EC(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100064318(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100064384(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000643F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_100014CEC(v17, v16);
      v35 = sub_1004A40D4();
      if (v35)
      {
        v40 = sub_1004A4104();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1004A40F4();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_1004A40D4();
        if (v37)
        {
          v60 = sub_1004A4104();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1004A40F4();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_1004A40D4();
        if (v37)
        {
          v41 = sub_1004A4104();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_1004A40F4();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_100014CEC(v17, v16);
      v32 = sub_1004A40D4();
      if (v32)
      {
        v49 = sub_1004A4104();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_1004A40F4();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_100014CEC(v17, v16);
    v29 = sub_1004A40D4();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1004A4104();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_1004A40F4();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_100014D40(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_100014CEC(v17, v16);
    v35 = sub_1004A40D4();
    if (v35)
    {
      v36 = sub_1004A4104();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1004A40F4();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_1004A40D4();
      if (v37)
      {
        v57 = sub_1004A4104();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1004A40F4();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_1004A40D4();
      if (v37)
      {
        v38 = sub_1004A4104();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_1004A40F4();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_100014D40(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_100014D40(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_100014CEC(v17, v16);
    v32 = sub_1004A40D4();
    if (v32)
    {
      v44 = sub_1004A4104();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_1004A40F4();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_100014CEC(v17, v16);
  v51 = sub_1004A40D4();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1004A4104();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_1004A40F4();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1004A40F4();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1004A40F4();
LABEL_168:
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
LABEL_177:
  __break(1u);
  return result;
}

unint64_t sub_100064C54(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100066E8C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v13 = sub_1000F2FCC(v8, a1);
      sub_100066EF4(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100064DB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = v2 + 64;
  v22 = v2;
  v12 = -1 << *(v2 + 32);
  v13 = a2 & ~v12;
  v14 = *(*a1 + 96);
  v15 = a1;
  swift_beginAccess();
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v16 = ~v12;
    do
    {
      v17 = *(*(v22 + 48) + 8 * v13);
      v18 = *(*v17 + 96);
      swift_beginAccess();
      sub_100066E8C(v17 + v18, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100066E8C(v15 + v14, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v19 = sub_1000F2FCC(v10, v7);
      sub_100066EF4(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100066EF4(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100064F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      if (sub_100083750(v10, a1))
      {
        v12 = sub_100083750(v11, a2);

        if (v12)
        {
          return v5;
        }
      }

      else
      {
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100065094(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      v8 = *(v7 + 32);
      v9 = *(v7 + 16);
      v13[0] = *v7;
      v13[1] = v9;
      v14 = v8;
      sub_100066F54(v13, v12);
      v10 = static MoveOrCopy.__derived_struct_equals(_:_:)(v13, a1);
      sub_100066FB0(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100065170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1004A6D34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100065228(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 80);
  sub_100066E8C(a1, v12, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v18 = *&v12[*(v10 + 28)];
  sub_100025FDC(v12, v16, &unk_1005D91B0, &unk_1004CF400);
  *&v16[*(v14 + 28)] = v18;
  sub_1000D8CF4(v4);
  v53 = v5;
  v54 = v6;
  v19 = *(v6 + 48);
  v51 = v6 + 48;
  v52 = v19;
  v20 = _swiftEmptyArrayStorage;
  if (v19(v4, 1, v5) != 1)
  {
    v21 = 0;
    v49 = v17;
    v50 = (v17 + 32) & ~v17;
    v27 = _swiftEmptyArrayStorage + v50;
    v28 = &qword_1005CD1D0;
    v29 = &unk_1004CF2C0;
    v30 = _swiftEmptyArrayStorage;
    v47 = v4;
    v48 = v8;
    while (1)
    {
      v32 = v28;
      v33 = v29;
      result = sub_100025FDC(v4, v8, v28, v29);
      if (v21)
      {
        v20 = v30;
        v25 = __OFSUB__(v21--, 1);
        if (v25)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v34 = v30[3];
        if (((v34 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        sub_10000C9C0(&qword_1005CE858, &unk_1004D1E20);
        v37 = *(v54 + 72);
        v38 = v50;
        v20 = swift_allocObject();
        result = j__malloc_size(v20);
        if (!v37)
        {
          goto LABEL_34;
        }

        v39 = result - v38;
        if ((result - v38) == 0x8000000000000000 && v37 == -1)
        {
          goto LABEL_35;
        }

        v41 = v39 / v37;
        v20[2] = v36;
        v20[3] = 2 * (v39 / v37);
        v42 = v20 + v38;
        v43 = v30[3] >> 1;
        v44 = v43 * v37;
        if (v30[2])
        {
          if (v20 < v30 || v42 >= v30 + v50 + v44)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30[2] = 0;
        }

        v27 = &v42[v44];
        v46 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v4 = v47;
        v8 = v48;
        v25 = __OFSUB__(v46, 1);
        v21 = v46 - 1;
        if (v25)
        {
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
          return result;
        }
      }

      sub_100025FDC(v8, v27, v32, v33);
      v27 += *(v54 + 72);
      sub_1000D8CF4(v4);
      v31 = v52(v4, 1, v53);
      v29 = v33;
      v28 = v32;
      v30 = v20;
      if (v31 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v21 = 0;
LABEL_3:
  sub_100066EF4(v16, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
  result = sub_100025F40(v4, &qword_1005CD518, &qword_1004CF2F0);
  v23 = v20[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v25 = __OFSUB__(v24, v21);
    v26 = v24 - v21;
    if (v25)
    {
      goto LABEL_36;
    }

    v20[2] = v26;
  }

  return v20;
}

void sub_100065670(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16);

  v64 = a4;

  v66 = v7;
  v62 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    v61 = 0;
LABEL_54:

    v57 = *(v62 + 3);
    if (v57 < 2)
    {
      return;
    }

    v58 = v57 >> 1;
    v29 = __OFSUB__(v58, v61);
    v59 = v58 - v61;
    if (!v29)
    {
      *(v62 + 2) = v59;
      return;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = 0;
  v65 = v6 + 32;
  v60 = &_swiftEmptyArrayStorage[4];
  v61 = 0;
  while (1)
  {
    if (v8 >= v66)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    while (1)
    {
      v9 = (v65 + 176 * v8);
      v10 = v9[9];
      v97 = v9[8];
      v98 = v10;
      v99 = v9[10];
      v11 = v9[5];
      v93 = v9[4];
      v94 = v11;
      v12 = v9[7];
      v95 = v9[6];
      v96 = v12;
      v13 = v9[1];
      v89 = *v9;
      v90 = v13;
      v14 = v9[3];
      v91 = v9[2];
      v92 = v14;
      if (*(a2 + 16))
      {
        v15 = v89;
        v16 = v90;
        v17 = DWORD2(v90);
        v18 = DWORD1(v94);
        v19 = BYTE8(v94);
        v20 = v6;
        v21 = sub_100063B5C(v90, DWORD2(v90));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

LABEL_14:
      if (v8 == v66)
      {
        goto LABEL_54;
      }

      if (v8 >= v66)
      {
        goto LABEL_58;
      }
    }

    v23 = *(a2 + 56) + 72 * v21;
    v84 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 16);
    v88 = *(v23 + 64);
    v86 = v25;
    v87 = v24;
    v85 = v26;
    sub_10000E08C(&v89, &v68);
    sub_100063BD4(&v84, &v68);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    v28 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    if (!v27)
    {
      if (!v28)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v84) & v27) != 0)
    {
      sub_100063C30(&v84);
      sub_10000E0E8(&v89);
      v6 = v20;
      goto LABEL_13;
    }

LABEL_17:
    v76 = v97;
    v77 = v98;
    v78 = v99;
    v72 = v93;
    v73 = v94;
    v74 = v95;
    v75 = v96;
    v68 = v89;
    v69 = v90;
    v70 = v91;
    v71 = v92;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v79 = v84;
    v80 = v85;
    if ((a3 & 1) == 0)
    {
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_65;
      }

      goto LABEL_39;
    }

    sub_10000E08C(&v89, v67);
    sub_100063BD4(&v84, v67);
    v30 = MailboxName.isInbox.getter(v16, v17);
    sub_100063C30(&v84);
    if ((v30 & 1) != 0 || v85 > 7u || ((1 << v85) & 0xDB) == 0 || (v19 & 1) == 0 && ((BYTE12(v95) & 1) != 0 || DWORD2(v95) < v18))
    {
      sub_10000E0E8(&v89);
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_10000E0E8(&v89);
    if (!*(v64 + 16))
    {
      sub_100063CF8(&v68);

LABEL_29:
      v6 = v20;
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_14;
    }

    v31 = sub_100063C84(v15, *(&v15 + 1));
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v64 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      sub_100063CF8(&v68);
      goto LABEL_29;
    }

    v29 = __OFADD__(v8++, 1);
    if (v29)
    {
      goto LABEL_66;
    }

LABEL_39:
    v6 = v20;
    v34 = v61;
    if (!v61)
    {
      break;
    }

LABEL_50:
    v29 = __OFSUB__(v34, 1);
    v44 = v34 - 1;
    if (v29)
    {
      goto LABEL_62;
    }

    v61 = v44;
    v45 = v68;
    v46 = v69;
    v47 = v71;
    *(v60 + 2) = v70;
    *(v60 + 3) = v47;
    *v60 = v45;
    *(v60 + 1) = v46;
    v48 = v72;
    v49 = v73;
    v50 = v75;
    *(v60 + 6) = v74;
    *(v60 + 7) = v50;
    *(v60 + 4) = v48;
    *(v60 + 5) = v49;
    v51 = v76;
    v52 = v77;
    v53 = v79;
    *(v60 + 10) = v78;
    *(v60 + 11) = v53;
    *(v60 + 8) = v51;
    *(v60 + 9) = v52;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    *(v60 + 120) = v83;
    *(v60 + 13) = v55;
    *(v60 + 14) = v56;
    *(v60 + 12) = v54;
    v60 += 248;
    if (v8 == v66)
    {
      goto LABEL_54;
    }
  }

  v35 = *(v62 + 3);
  if (((v35 >> 1) + 0x4000000000000000) >= 0)
  {
    v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    sub_10000C9C0(&qword_1005CE838, &qword_1004D1248);
    v38 = swift_allocObject();
    v39 = (j__malloc_size(v38) - 32) / 248;
    *(v38 + 2) = v37;
    *(v38 + 3) = 2 * v39;
    v40 = v38 + 32;
    v41 = *(v62 + 3) >> 1;
    v42 = 248 * v41;
    if (*(v62 + 2))
    {
      v43 = v62 + 32;
      if (v38 != v62 || v40 >= &v43[v42])
      {
        memmove(v38 + 32, v43, 248 * v41);
      }

      *(v62 + 2) = 0;
    }

    v60 = &v40[v42];

    v34 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;
    v62 = v38;
    v6 = v20;
    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void *sub_100065B64(uint64_t *a1)
{
  v100 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v100 - 8);
  __chkstk_darwin(v100);
  v93 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C9C0(&qword_1005CE548, &unk_1004D0FE0);
  __chkstk_darwin(v4 - 8);
  v104 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v74 - v7;
  v8 = sub_10000C9C0(&qword_1005CE558, &qword_1004D0FF0);
  __chkstk_darwin(v8 - 8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  __chkstk_darwin(v13);
  v81 = &v74 - v14;
  v102 = sub_10000C9C0(&qword_1005CE550, &unk_1004D1260);
  v15 = *(v102 - 8);
  __chkstk_darwin(v102);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  __chkstk_darwin(v20);
  v84 = &v74 - v21;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v22 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult);
  v86 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v22 + 80);
  v89 = _swiftEmptyArrayStorage;
  v74 = (v75 + 32) & ~v75;
  v87 = _swiftEmptyArrayStorage + v74;
  v24 = *a1;
  v92 = a1[1];
  v25 = a1[2];
  v95 = a1[3];
  v26 = a1[4];
  v77 = a1[5];
  v76 = a1[6];
  v106 = v24;
  v90 = v24;
  v27 = *(v24 + 16);
  sub_100066BC8(&v106, v105);
  v91 = v2;
  v98 = (v2 + 48);
  v99 = (v2 + 56);
  v101 = (v15 + 56);
  v28 = (v15 + 48);
  v80 = (v22 + 56);
  v83 = v22;
  v79 = (v22 + 48);
  v29 = v27;
  v94 = v25;

  v96 = v26;

  v88 = 0;
  v31 = 0;
  v97 = v27;
  while (2)
  {
    v32 = v31 >= v29;
    if (v31 == v29)
    {
LABEL_3:
      v33 = 1;
      v31 = v29;
      goto LABEL_7;
    }

    while (1)
    {
      if (v32)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      result = sub_100066E8C(v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v31, v103, _s19UserInitiatedSearchVMa);
      v34 = __OFADD__(v31++, 1);
      if (v34)
      {
        goto LABEL_45;
      }

      v33 = 0;
LABEL_7:
      v35 = v100;
      v36 = 1;
      v37 = v103;
      (*v99)(v103, v33, 1, v100);
      v38 = v37;
      v39 = v104;
      sub_100025FDC(v38, v104, &qword_1005CE548, &unk_1004D0FE0);
      if ((*v98)(v39, 1, v35) != 1)
      {
        v40 = v93;
        sub_100066C38(v104, v93, _s19UserInitiatedSearchVMa);
        v92(v40);
        sub_100066EF4(v40, _s19UserInitiatedSearchVMa);
        v36 = 0;
      }

      v41 = *v101;
      v42 = v36;
      v43 = v102;
      (*v101)(v12, v42, 1, v102);
      v44 = *v28;
      if ((*v28)(v12, 1, v43) == 1)
      {
        sub_100025F40(v12, &qword_1005CE558, &qword_1004D0FF0);
        v45 = 1;
        v46 = v81;
        goto LABEL_15;
      }

      sub_100025FDC(v12, v19, &qword_1005CE550, &unk_1004D1260);
      if (v95(v19))
      {
        break;
      }

      result = sub_100025F40(v19, &qword_1005CE550, &unk_1004D1260);
      v29 = v97;
      v32 = v31 >= v97;
      if (v31 == v97)
      {
        goto LABEL_3;
      }
    }

    v46 = v81;
    sub_100025FDC(v19, v81, &qword_1005CE550, &unk_1004D1260);
    v45 = 0;
    v29 = v97;
LABEL_15:
    v47 = v102;
    v41(v46, v45, 1, v102);
    v48 = v85;
    sub_100025FDC(v46, v85, &qword_1005CE558, &qword_1004D0FF0);
    v49 = v44(v48, 1, v47);
    v50 = 1;
    v51 = v89;
    if (v49 != 1)
    {
      v52 = v78;
      sub_100025FDC(v85, v78, &qword_1005CE550, &unk_1004D1260);
      v77(v52);
      sub_100025F40(v52, &qword_1005CE550, &unk_1004D1260);
      v50 = 0;
    }

    v53 = v84;
    v54 = SearchResult;
    (*v80)(v84, v50, 1, SearchResult);
    if ((*v79)(v53, 1, v54) != 1)
    {
      result = sub_100066C38(v53, v86, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      if (v88)
      {
        v55 = v51;
        v56 = v88 - 1;
        if (!__OFSUB__(v88, 1))
        {
LABEL_39:
          v88 = v56;
          v70 = v87;
          result = sub_100066C38(v86, v87, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v87 = (v70 + *(v83 + 72));
          v89 = v55;
          continue;
        }
      }

      else
      {
        v57 = v51[3];
        if (((v57 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v58 = v57 & 0xFFFFFFFFFFFFFFFELL;
        if (v58 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v58;
        }

        sub_10000C9C0(&qword_1005CE850, &unk_1004D1270);
        v60 = *(v83 + 72);
        v61 = v74;
        v55 = swift_allocObject();
        result = j__malloc_size(v55);
        if (!v60)
        {
          goto LABEL_48;
        }

        v62 = result - v61;
        if ((result - v61) == 0x8000000000000000 && v60 == -1)
        {
          goto LABEL_49;
        }

        v64 = v61;
        v65 = v62 / v60;
        v55[2] = v59;
        v55[3] = 2 * (v62 / v60);
        v66 = v55 + v61;
        v67 = v89[3] >> 1;
        v68 = v67 * v60;
        v29 = v97;
        if (v89[2])
        {
          if (v55 < v89 || v66 >= v89 + v64 + v68)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v55 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v89[2] = 0;
        }

        v87 = &v66[v68];
        v69 = (v65 & 0x7FFFFFFFFFFFFFFFLL) - v67;

        v34 = __OFSUB__(v69, 1);
        v56 = v69 - 1;
        if (!v34)
        {
          goto LABEL_39;
        }
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    break;
  }

  sub_100025F40(&v106, &qword_1005CE560, &qword_1004D0FF8);

  result = sub_100025F40(v53, &qword_1005CE550, &unk_1004D1260);
  v71 = v51[3];
  if (v71 < 2)
  {
    return v51;
  }

  v72 = v71 >> 1;
  v34 = __OFSUB__(v72, v88);
  v73 = v72 - v88;
  if (!v34)
  {
    v51[2] = v73;
    return v51;
  }

LABEL_50:
  __break(1u);
  return result;
}

void *sub_1000664DC(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v48 = a1[5];
  v49 = a1[3];
  v47 = a1[7];
  v41 = a1[9];
  v3 = *(v2 + 16);

  v5 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v6 = v3;
  v7 = 0;
  v8 = 0;
  v9 = v2 + 32;
  v42 = &_swiftEmptyArrayStorage[4];
  v10 = v1 + 40;
  v40 = v1 + 40;
  while (2)
  {
    v44 = v8;
    v46 = v5;
    v11 = (v10 + 16 * v7);
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v12 = v2;
      v13 = v1;
      v14 = *v11;
      v15 = *(v9 + v7++);
      v51 = *(v11 - 1);
      v52 = v14;
      v53 = v15;

      v49(&v50, &v51);

      v48(&v51, &v50);

      v16 = v51;
      v17 = v53;
      v18 = v52;
      v54 = v51;
      v56 = v53;
      v55 = v52;
      if (v47(&v54))
      {
        break;
      }

      v11 += 4;
      v1 = v13;
      v2 = v12;
      if (v7 >= v6)
      {
        v8 = v44;
        goto LABEL_27;
      }
    }

    v54 = v16;
    v55 = v18;
    v56 = (v18 | (v17 << 32)) >> 32;
    v41(&v51, &v54);

    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v44;
    if (v44)
    {
      v23 = v42;
    }

    else
    {
      v39 = v53;
      v43 = v52;
      v45 = v51;
      v24 = v5[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_10000C9C0(&qword_1005CE840, &qword_1004D1250);
      v5 = swift_allocObject();
      v27 = j__malloc_size(v5);
      v28 = v27 - 32;
      if (v27 < 32)
      {
        v28 = v27 - 17;
      }

      v29 = v28 >> 4;
      v5[2] = v26;
      v5[3] = 2 * (v28 >> 4);
      v30 = (v5 + 4);
      v31 = v46[3] >> 1;
      v32 = 16 * v31;
      if (v46[2])
      {
        v33 = (v46 + 4);
        if (v5 != v46 || v30 >= &v33[v32])
        {
          v34 = v28 >> 4;
          memmove(v5 + 4, v33, v32);
          v29 = v34;
        }

        v46[2] = 0;
      }

      v23 = &v30[v32];
      v22 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

      v19 = v45;
      v20 = v43;
      v21 = v39;
    }

    v35 = __OFSUB__(v22, 1);
    v8 = v22 - 1;
    v10 = v40;
    if (v35)
    {
      goto LABEL_33;
    }

    v1 = v13;
    *v23 = v19;
    *(v23 + 2) = v20;
    v23[12] = v21;
    v42 = v23 + 16;
    v2 = v12;
    if (v7 < v6)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v36 = v5[3];
  if (v36 < 2)
  {
    return v5;
  }

  v37 = v36 >> 1;
  v35 = __OFSUB__(v37, v8);
  v38 = v37 - v8;
  if (!v35)
  {
    v5[2] = v38;
    return v5;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100066884@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1004A40D4();
    if (v10)
    {
      v11 = sub_1004A4104();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1004A40F4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1004A40D4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004A4104();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004A40F4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_100066AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_10000C9C0(&qword_1005CE848, &qword_1004D1258);
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    result = v5;
    v8 = ((v6 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
    v9 = (v8 >> 2) + (v8 >> 63);
    v5[2] = v2;
    v5[3] = 2 * v9;
    v10 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v11 = (a1 + 32);
    v12 = *(a1 + 16);
    v13 = (a2 + 41);
    v14 = 4;
    while (v12)
    {
      v15 = &v5[v14];
      --v10;
      v16 = *v13;
      v17 = *(v13 - 1);
      v18 = *(v13 - 9);
      v19 = *v11++;
      *v15 = v19;
      v15[1] = v18;
      *(v15 + 16) = v17;
      *(v15 + 17) = v16;
      v14 += 3;
      --v12;
      v13 += 16;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v10 = 0;
  result = _swiftEmptyArrayStorage;
LABEL_7:
  v20 = result[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v22 = __OFSUB__(v21, v10);
    v23 = v21 - v10;
    if (v22)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    result[2] = v23;
  }

  return result;
}

uint64_t sub_100066BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE560, &qword_1004D0FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066CA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100066CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066D50(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100066D68(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100066DB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
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

uint64_t sub_100066DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 242) = 1;
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

    *(result + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100066E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066EF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100067008@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  __chkstk_darwin(v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_10000E268(v14, v8, &qword_1005CEA18, &qword_1004D14D0);
      if (*v8 == a1)
      {
        break;
      }

      sub_100025F40(v8, &qword_1005CEA18, &qword_1004D14D0);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    sub_100025FDC(v8, v12, &qword_1005CEA18, &qword_1004D14D0);
    sub_10006F6C4(&v12[*(v6 + 52)], a3, type metadata accessor for FindMissingMessages.CommandID);
    sub_100025F40(v12, &qword_1005CEA18, &qword_1004D14D0);
    v16 = 0;
  }

  else
  {
LABEL_5:
    v16 = 1;
  }

  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  return (*(*(Missing - 8) + 56))(a3, v16, 1, Missing);
}

BOOL sub_100067204(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_100067248(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_100067284()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004D13E0;
  *(v0 + 32) = &type metadata for DetectChangesToMessages;
  sub_100026044();

  sub_1004A6674();
  *(v0 + 80) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v0 + 128) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v0 + 176) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  *(v0 + 224) = type metadata accessor for FetchSearchResultMessages(0);

  sub_1004A6674();
  *(v0 + 272) = &type metadata for PurgeMessagesOutsideWindowOfInterest;

  sub_1004A6674();
  return v0;
}

Swift::Int sub_100067424()
{
  result = sub_100093190(&off_100598F90);
  qword_1005DDF08 = result;
  return result;
}

void sub_10006744C(uint64_t a1)
{
  v2 = v1;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  __chkstk_darwin(MissingMessages);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v67 = &v60 - v10;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = v2 + *(MissingMessages + 44);
  v18 = *(v17 + 13);
  v65 = v19;
  if (v18)
  {
    v20 = 0xE900000000000065;
    v21 = 0x74616470752D6F6ELL;
  }

  else
  {
    v22 = *(v17 + 8) | (*(v17 + 12) << 32);
    if ((v22 & 0x100000000) != 0)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      LODWORD(v74) = v22;
      sub_1004A6934();
      v21 = v71;
      v20 = v72;
    }
  }

  v66 = v21;
  sub_10006F6C4(a1, v16, type metadata accessor for MailboxTaskLogger);
  sub_10006F6C4(a1, v13, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v23 = v67;
  sub_10006F6C4(v2, v67, type metadata accessor for FindMissingMessages);
  sub_10006F6C4(v2, v8, type metadata accessor for FindMissingMessages);
  v24 = v68;
  sub_10006F6C4(v2, v68, type metadata accessor for FindMissingMessages);

  v25 = sub_1004A4A54();
  v26 = sub_1004A6034();

  if (os_log_type_enabled(v25, v26))
  {
    v62 = v26;
    v63 = v8;
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74 = v61;
    *v27 = 68160259;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v28 = v65;
    v29 = &v13[*(v65 + 20)];
    *(v27 + 10) = *v29;
    v64 = MissingMessages;
    *(v27 + 11) = 2082;
    v30 = &v16[*(v28 + 20)];
    *(v27 + 13) = sub_10015BA6C(*(v30 + 1), *(v30 + 2), &v74);
    *(v27 + 21) = 1040;
    *(v27 + 23) = 2;
    *(v27 + 27) = 512;
    LOWORD(v29) = *(v29 + 12);
    sub_10006F72C(v13, type metadata accessor for MailboxTaskLogger);
    *(v27 + 29) = v29;
    *(v27 + 31) = 2160;
    *(v27 + 33) = 0x786F626C69616DLL;
    *(v27 + 41) = 2085;
    v31 = *(v30 + 4);
    LODWORD(v30) = *(v30 + 10);

    sub_10006F72C(v16, type metadata accessor for MailboxTaskLogger);
    v71 = v31;
    LODWORD(v72) = v30;
    v32 = sub_1004A5824();
    v34 = sub_10015BA6C(v32, v33, &v74);

    *(v27 + 43) = v34;
    *(v27 + 51) = 2082;
    v35 = sub_10015BA6C(v66, v20, &v74);

    *(v27 + 53) = v35;
    v66 = v27;
    *(v27 + 61) = 2082;
    v36 = v64;
    v37 = *(v23 + *(v64 + 44));
    v38 = *(v37 + 16);
    v39 = _swiftEmptyArrayStorage;
    if (v38)
    {
      v73 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v38, 0);
      v40 = (v37 + 40);
      v39 = v73;
      v41 = v25;
      do
      {
        v43 = *(v40 - 2);
        v42 = *(v40 - 1);
        if (*v40)
        {
          v71 = 14931;
          v44 = 0xE200000000000000;
        }

        else
        {
          v71 = 978332499;
          v44 = 0xE400000000000000;
        }

        v72 = v44;
        v69 = v43;
        v70 = v42;
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v75._countAndFlagsBits = sub_1004A5804();
        sub_1004A5994(v75);

        v45 = v71;
        v46 = v72;
        v73 = v39;
        v48 = v39[2];
        v47 = v39[3];
        if (v48 >= v47 >> 1)
        {
          sub_100091A08((v47 > 1), v48 + 1, 1);
          v39 = v73;
        }

        v39[2] = v48 + 1;
        v49 = &v39[2 * v48];
        v49[4] = v45;
        v49[5] = v46;
        v40 += 12;
        --v38;
      }

      while (v38);
      v25 = v41;
      v23 = v67;
      v50 = v68;
      v36 = v64;
    }

    else
    {
      v50 = v68;
    }

    v71 = v39;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v51 = sub_1004A5614();
    v53 = v52;

    sub_10006F72C(v23, type metadata accessor for FindMissingMessages);
    v54 = sub_10015BA6C(v51, v53, &v74);

    v55 = v66;
    *(v66 + 63) = v54;
    *(v55 + 71) = 2048;
    v56 = &v63[*(v36 + 52)];
    if (v56[8])
    {
      v57 = 0;
    }

    else
    {
      v57 = *v56;
    }

    sub_10006F72C(v63, type metadata accessor for FindMissingMessages);
    *(v55 + 73) = v57;
    *(v55 + 81) = 1024;
    v58 = v50 + *(v36 + 72);
    if (*(v58 + 24))
    {
      v59 = *(v58 + 12);
    }

    else
    {
      v59 = 0;
    }

    sub_10006F72C(v50, type metadata accessor for FindMissingMessages);
    *(v55 + 83) = v59;
    _os_log_impl(&_mh_execute_header, v25, v62, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window-update %{public}s, ranges %{public}s, UID limit: %ld, grow: %u", v55, 0x57u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10006F72C(v24, type metadata accessor for FindMissingMessages);
    sub_10006F72C(v8, type metadata accessor for FindMissingMessages);
    sub_10006F72C(v13, type metadata accessor for MailboxTaskLogger);

    sub_10006F72C(v16, type metadata accessor for MailboxTaskLogger);
    sub_10006F72C(v23, type metadata accessor for FindMissingMessages);
  }
}

uint64_t sub_100067B1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v88 = a4;
  v79 = a1;
  v80 = a2;
  v86 = a5;
  v91 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v76 - v8;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v9 - 8);
  v81 = &v76 - v10;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = &v76 - v14;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v77 = *(Missing - 8);
  __chkstk_darwin(Missing);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v20 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = &v76 - v24;
  v25 = sub_10000C9C0(&qword_1005CEA20, &qword_1004D14D8);
  __chkstk_darwin(v25 - 8);
  v27 = (&v76 - v26);
  v28 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v76 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  __chkstk_darwin(v34);
  v36 = &v76 - v35;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v37 = (v6 + MissingMessages[18]);
  v38 = v37[3];
  if (v38)
  {
    sub_100074168(v79, a3, *v37, v37[1] & 0xFFFFFFFF00000101, v37[2] | ((HIDWORD(v37[2]) & 1) << 32), v38, v27);
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      sub_100025FDC(v27, v36, &qword_1005CEA28, &qword_1004D14E0);
      v39 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
      v40 = *(v39 + 48);
      sub_10000E268(v36, v33, &qword_1005CEA28, &qword_1004D14E0);
      v41 = v33[8];
      v42 = *(v28 + 48);
      v43 = v86;
      *v86 = *v33;
      *(v43 + 8) = v41;
      swift_storeEnumTagMultiPayload();
      v44 = v36;
      v45 = v76;
      sub_100025FDC(v44, v76, &qword_1005CEA28, &qword_1004D14E0);
      sub_1000738FC(v45 + *(v28 + 48), v43 + v40, type metadata accessor for ClientCommand);
      (*(*(v39 - 8) + 56))(v43, 0, 1, v39);
      return sub_10006F72C(&v33[v42], type metadata accessor for ClientCommand);
    }
  }

  else
  {
    (*(v29 + 56))(v27, 1, 1, v28);
  }

  v80 = v6;
  sub_100025F40(v27, &qword_1005CEA20, &qword_1004D14D8);
  v47 = sub_100071DFC(a3);
  sub_100016D2C();
  sub_1004A7114();
  v48 = v47[2];
  if (v48)
  {
    v49 = *(v77 + 80);
    v79 = v47;
    v50 = v47 + ((v49 + 32) & ~v49);
    v51 = *(v77 + 72);
    v88 = (v78 + 16);
    do
    {
      sub_10006F6C4(v50, v19, type metadata accessor for FindMissingMessages.CommandID);
      sub_10006F6C4(v19, v16, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10006F72C(v19, type metadata accessor for FindMissingMessages.CommandID);
        v53 = v16;
      }

      else
      {
        v52 = v89;
        sub_100025FDC(v16, v89, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v88)(v90, v52, v91);
        sub_1004A7104();
        sub_100025F40(v52, &qword_1005CD1D0, &unk_1004CF2C0);
        v53 = v19;
      }

      sub_10006F72C(v53, type metadata accessor for FindMissingMessages.CommandID);
      v50 += v51;
      --v48;
    }

    while (v48);
  }

  v54 = v86;
  v55 = v84;
  sub_100025FDC(v22, v84, &unk_1005D91B0, &unk_1004CF400);
  v57 = v80;
  v56 = v81;
  v58 = v80 + MissingMessages[11];
  v59 = *v58;
  v60 = *(v58 + 8) | (*(v58 + 12) << 32);
  v61 = *(v58 + 13);
  v62 = *(v58 + 16);
  LOBYTE(v58) = *(v58 + 20);
  v63 = MissingMessages[9];
  v94 = v61;
  v93 = v58;
  sub_100079F40(v55, v80 + v63, v59, v60 | (v61 << 40), v62 | (v58 << 32), v81);
  v65 = v82;
  v64 = v83;
  v66 = (*(v82 + 48))(v56, 1, v83);
  v67 = v85;
  if (v66 == 1)
  {
    sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v56, &qword_1005CD518, &qword_1004CF2F0);
    v68 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
    return (*(*(v68 - 8) + 56))(v54, 1, 1, v68);
  }

  else
  {
    sub_100025FDC(v56, v85, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
    v69 = swift_allocBox();
    v71 = v70;
    sub_10000E268(v67, v70, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(v65 + 56))(v71, 0, 1, v64);
    v72 = v69 | 0xA000000000000000;
    v73 = sub_10000C9C0(&qword_1005CEA30, &qword_1004D14E8);
    v74 = (v54 + *(v73 + 48));
    sub_10000E268(v67, v54, &qword_1005CD1D0, &unk_1004CF2C0);
    swift_storeEnumTagMultiPayload();
    if (*(v57 + MissingMessages[12] + 1) == 1)
    {
      sub_100025F40(v67, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
      *v74 = v72;
    }

    else
    {
      sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
      type metadata accessor for SearchReturnOption(0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1004CEAA0;
      swift_storeEnumTagMultiPayload();
      sub_100025F40(v67, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
      *v74 = v72;
      v74[1] = v75;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v73 - 8) + 56))(v54, 0, 1, v73);
  }
}

uint64_t sub_1000685AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v103 = a7;
  v106 = a5;
  v107 = a3;
  v100 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v100);
  v12 = v84 - v11;
  v13 = type metadata accessor for TaskHistory.Running(0);
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v94 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v105 = v84 - v16;
  v17 = sub_10000C9C0(&qword_1005CEA10, &qword_1004D16F0);
  __chkstk_darwin(v17 - 8);
  v99 = v84 - v18;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v97 = *(Missing - 8);
  v98 = Missing;
  __chkstk_darwin(Missing);
  v93 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = v84 - v22;
  v23 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v23);
  v25 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v26 - 8);
  v28 = v84 - v27;
  v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v101 = v84 - v31;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v32 = *(MissingMessages + 72);
  v102 = v7;
  if (*(v7 + v32 + 24))
  {
    sub_100074EA8(a1, a2, v107, a4, v106);
  }

  result = sub_1000716D0(2, a2, v107, a4, sub_10007105C);
  if ((result & 1) == 0)
  {
    return result;
  }

  v107 = a2;
  v103 = a4;
  v34 = v102;
  v35 = (v102 + *(MissingMessages + 48));
  v36 = *v35;
  if (v35[1])
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  sub_100124ED4(v37 | v36, v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v38 = &qword_1005CD510;
    v39 = &unk_1004CF2E0;
    v40 = v28;
    return sub_100025F40(v40, v38, v39);
  }

  v41 = v101;
  sub_100025FDC(v28, v101, &unk_1005D91B0, &unk_1004CF400);
  sub_10006F6C4(a1, v25, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_10006F72C(v25, type metadata accessor for UntaggedResponse);
    v52 = MissingMessages;
    goto LABEL_14;
  }

  v42 = *v25;
  v43 = *(v25 + 2);
  v44 = *(v25 + 3);
  v45 = v25[32];
  v46 = *(v25 + 5);
  v47 = *(v25 + 1);
  v89 = v46;
  v88 = v42;
  if (!v47 || (, v48._countAndFlagsBits = v42, v48._object = v47, v111 = Tag.init(_:)(v48), v111.is_nil))
  {
    v49 = v98;
    v50 = v99;
    v51 = v97;
LABEL_45:
    sub_100073984(v88, v47, v43);

    (*(v51 + 56))(v50, 1, 1, v49);
    goto LABEL_46;
  }

  value = v111.value;
  v87 = v47;
  v84[3] = v45;
  v85 = v44;
  v86 = v43;
  v66 = *(v107 + 16);

  v67 = v105;
  if (!v66)
  {
LABEL_44:

    v41 = v101;
    v49 = v98;
    v50 = v99;
    v51 = v97;
    v43 = v86;
    v47 = v87;
    goto LABEL_45;
  }

  connectionIdentifier = value.connectionIdentifier;
  v90 = HIDWORD(*&value);
  v68 = v107 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
  v69 = *(v95 + 72);
  while (1)
  {
    sub_10006F6C4(v68, v67, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_10006F72C(v67, type metadata accessor for TaskHistory.Running);
LABEL_30:
    v68 += v69;
    if (!--v66)
    {
      goto LABEL_44;
    }
  }

  v70 = *v67;
  v71 = *(v105 + 1);
  v72 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_10006F72C(&v105[*(v72 + 64)], type metadata accessor for ClientCommand);
  v73 = v70 == connectionIdentifier && v71 == v90;
  v67 = v105;
  if (!v73)
  {
    goto LABEL_30;
  }

  v74 = v94;
  sub_10006F6C4(v68, v94, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_51:
    result = sub_10006F72C(v74, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v75 = *v74;
  v77 = *(v74 + 1);
  v76 = *(v74 + 2);
  sub_10006F72C(&v74[*(v72 + 64)], type metadata accessor for ClientCommand);

  v73 = v75 == connectionIdentifier;
  v74 = v98;
  v50 = v99;
  v78 = v87;
  if (!v73)
  {
    __break(1u);
    goto LABEL_50;
  }

  v34 = v102;
  if (v77 != v90)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_100067008(v76, v103, v99);
  sub_100073984(v88, v78, v86);

  v79 = (*(v97 + 48))(v50, 1, v74);
  v41 = v101;
  v52 = MissingMessages;
  if (v79 == 1)
  {
LABEL_46:
    sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
    v38 = &qword_1005CEA10;
    v39 = &qword_1004D16F0;
    v40 = v50;
    return sub_100025F40(v40, v38, v39);
  }

  v80 = v50;
  v81 = v92;
  sub_1000738FC(v80, v92, type metadata accessor for FindMissingMessages.CommandID);
  v82 = v81;
  v83 = v93;
  sub_1000738FC(v82, v93, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
    return sub_10006F72C(v83, type metadata accessor for FindMissingMessages.CommandID);
  }

  sub_10006F72C(v83, type metadata accessor for FindMissingMessages.CommandID);
LABEL_14:
  sub_10000E268(v41, v12, &unk_1005D91B0, &unk_1004CF400);
  v53 = MessageIdentifierSet.startIndex.getter(v29);
  v55 = v54;
LABEL_16:
  while (v53 != MessageIdentifierSet.endIndex.getter(v29) || v55 != v56)
  {
    MessageIdentifierSet.subscript.getter(v55, v29, &v110);
    v57 = v110;
    MessageIdentifierSet.index(_:offsetBy:)(v53, v55, 1);
    v53 = v58;
    v55 = v59;
    v60 = *(v34 + *(v52 + 44));
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = (v60 + 36);
      while (v57 < *(v62 - 1) || *v62 < v57)
      {
        v62 += 3;
        if (!--v61)
        {
          goto LABEL_16;
        }
      }

      v108 = v57;
      MessageIdentifierSet.insert(_:)(v109, &v108, v29);
    }
  }

  v64 = &v12[*(v100 + 36)];
  *v64 = v53;
  v64[1] = v55;
  sub_100025F40(v12, &qword_1005CDA38, &unk_1004D14C0);
  v38 = &unk_1005D91B0;
  v39 = &unk_1004CF400;
  v40 = v101;
  return sub_100025F40(v40, v38, v39);
}

uint64_t sub_100068F50(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  __chkstk_darwin(Missing);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000112D4(a7, a2, a3, a4, a5);
  if (!v8)
  {
    sub_10006F6C4(v20, v16, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = type metadata accessor for FindMissingMessages(0);
      v18 = v7 + *(result + 72);
      if (*(v18 + 24))
      {
        if (v16[8])
        {
          *(v18 + 16) = 0;
          *(v18 + 20) = 1;
        }

        else if (*(v18 + 20))
        {
          *(v18 + 16) = 1;
          *(v18 + 20) = 0;
        }
      }
    }

    else
    {
      return sub_10006F72C(v16, type metadata accessor for FindMissingMessages.CommandID);
    }
  }

  return result;
}

uint64_t sub_1000690B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v33 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v19 = (v6 + *(MissingMessages + 72));
  v20 = v19[3];
  if (v20 && (v21 = sub_100075DEC(*(v6 + 64), *(v6 + 72), a1, a2, a3, a4, a6, *v19, v19[1] & 0xFFFFFFFF00000101, v19[2] | ((HIDWORD(v19[2]) & 1) << 32), v20), (~v22 & 0xF000000000000007) != 0))
  {
    v26 = v22;
    v27 = v21;
    if ((sub_100070294(0, 1, a1, a2, a4, sub_10001FB54) & 1) == 0)
    {
      return v27;
    }

    sub_1000739C8(v27, v26);
  }

  else if ((sub_10007222C(1, a1, a2, a4, sub_100072034) & 1) == 0 && (sub_10001FB6C(0, 1, a2, a4) & 1) == 0)
  {
    v23 = v6 + *(MissingMessages + 44);
    v24 = *v23;
    v25 = *(v23 + 13);
    LOBYTE(v23) = *(v23 + 20);
    v35 = v25;
    v34 = v23;
    sub_10007A65C(v24, v14);
    if ((*(v33 + 48))(v14, 1, v15) != 1)
    {
      sub_100025FDC(v14, v17, &qword_1005CD1D0, &unk_1004CF2C0);
      v29 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v30 = *(v29 + 48);
      v31 = *(v6 + 72);
      *v32 = *(v6 + 64);
      v32[1] = v31;
      sub_100025FDC(v17, v32 + v30, &qword_1005CD1D0, &unk_1004CF2C0);

      return 0;
    }

    sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
  }

  return 0;
}

void sub_100069400(unint64_t a1, char a2)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  if ((a2 & 1) == 0)
  {
    v8 = v2 + *(type metadata accessor for FindMissingMessages(0) + 72);
    v9 = *(v8 + 24);
    if (v9)
    {
      if ((a1 & 0x8000000000000000) == 0 && v9[2] > a1)
      {
        sub_100016D2C();
        sub_1004A7114();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001398E0(v9);
        }

        if (v9[2] <= a1)
        {
          __break(1u);
        }

        else
        {
          _s20GrowWindowOfInterestV6ResultVMa(0);
          sub_100077584(v7);
          sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
          *(v8 + 24) = v9;
        }
      }
    }
  }
}

uint64_t sub_100069580(const void *a1, uint64_t a2)
{
  v3 = v2;
  v107 = a1;
  v108 = a2;
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v4 - 8);
  v92 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v104 = &v85[-v7];
  __chkstk_darwin(v8);
  v103 = &v85[-v9];
  v10 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v10 - 8);
  v101 = &v85[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _s15MissingMessagesO10NewMissingVMa(0);
  __chkstk_darwin(v12 - 8);
  v102 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v105);
  v15 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = v15;
  __chkstk_darwin(v16);
  v18 = &v85[-v17];
  v99 = &v85[-v17];
  __chkstk_darwin(v19);
  v21 = &v85[-v20];
  v100 = &v85[-v20];
  __chkstk_darwin(v22);
  v24 = &v85[-v23];
  v25 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v85[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  __chkstk_darwin(Missing);
  v106 = &v85[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v91 = &v85[-v30];
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v86 = *(v3 + MissingMessages[14]);
  v87 = MissingMessages[9];
  v88 = v27;
  sub_10006F6C4(v3 + v87, v27, type metadata accessor for MessageBatches);
  v32 = MissingMessages[16];
  v90 = v24;
  sub_10000E268(v3 + v32, v24, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + v32, v21, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + MissingMessages[17], v18, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v3 + MissingMessages[15], v15, &unk_1005D91B0, &unk_1004CF400);
  v33 = v3 + MissingMessages[13];
  v97 = *v33;
  v96 = *(v33 + 8);
  v34 = MissingMessages[11];
  v35 = v3 + MissingMessages[10];
  v95 = *v35;
  LODWORD(v21) = *(v35 + 8);
  v36 = *(v3 + v34);
  v37 = *(v3 + v34 + 8) | (*(v3 + v34 + 12) << 32);
  LOBYTE(v24) = *(v3 + v34 + 13);
  v38 = *(v3 + v34 + 16);
  v39 = *(v3 + v34 + 20);
  v40 = MissingMessages[18];
  v93 = v3;
  v41 = (v3 + v40);
  v94 = *v41;
  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  v44 = v101;
  sub_10006F6C4(v108, v101, type metadata accessor for MailboxTaskLogger);

  LOBYTE(v110[0]) = v24;
  v109 = v39;
  v45 = v38 | (v39 << 32);
  v46 = v102;
  sub_100069D74(v100, v99, v98, v97, v96, v95, v21, v36, v102, v37 | (v24 << 40), v45, v94, *(&v94 + 1), v43, v42, v44);
  memcpy(v110, v107, sizeof(v110));
  v47 = LOBYTE(v110[3]);
  v48 = BYTE1(v110[3]);
  v49 = v110[4];
  v50 = LOBYTE(v110[5]);
  v52 = v110[6];
  v51 = v110[7];

  sub_100166D28();
  v54 = v53;
  if (v49 == 3 || v49 == 2)
  {

    v55 = 0;
    v56 = v103;
    goto LABEL_27;
  }

  v57 = sub_100166E18(v53);
  v56 = v103;
  if (v48)
  {
    goto LABEL_13;
  }

  if (v49 != 1)
  {
    if (!v49 && v47)
    {
      if (v47 != 1)
      {
        v58 = 0;
        goto LABEL_16;
      }

      goto LABEL_40;
    }

LABEL_13:
    if (v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = 2;
    }

    goto LABEL_16;
  }

  if (!v47)
  {
    goto LABEL_13;
  }

  if (v47 == 1)
  {
    v58 = 2;
    goto LABEL_16;
  }

LABEL_40:
  v58 = 1;
LABEL_16:
  sub_100013AD0(&off_100598658, v51);
  sub_100166E18(v54);
  v59 = sub_100013CF4(v51);

  if (v59 & 1) == 0 && (v48)
  {
    sub_100166E18(v54);
  }

  if (!v50)
  {
    v58 = 2;
  }

  if (v58)
  {
    v60 = 0;
  }

  else
  {
    v60 = v52 < 3989;
  }

  v55 = v60;
LABEL_27:
  MessageIdentifierSet.ranges.getter(v56);
  v61 = sub_1000E4C0C();
  v63 = v62;
  sub_100025F40(v56, &qword_1005CD7A0, &unk_1004CF590);
  v64 = HIDWORD(v61);
  if (v63)
  {
    LODWORD(v64) = 0;
  }

  v65 = v106;
  *v106 = v64;
  *(v65 + 4) = v63 & 1;
  v66 = v104;
  MessageIdentifierSet.ranges.getter(v104);
  v67 = sub_1000E4C0C();
  v69 = v68;
  result = sub_100025F40(v66, &qword_1005CD7A0, &unk_1004CF590);
  v71 = 0;
  if ((v69 & 1) == 0)
  {
    if (HIDWORD(v67) == 0xFFFFFFFF)
    {
      __break(1u);
      return result;
    }

    v71 = HIDWORD(v67) + 1;
    v65 = v106;
  }

  *(v65 + 8) = v71;
  *(v65 + 12) = v69 & 1;
  v72 = Missing;
  sub_10006F6C4(v46, v65 + *(Missing + 24), _s15MissingMessagesO10NewMissingVMa);
  if (v86)
  {
    v73 = 1;
  }

  else
  {
    v73 = 2;
  }

  if (!v55)
  {
    v73 = 0;
  }

  *(v65 + v72[7]) = v73;
  v74 = v65 + v72[8];
  v75 = v88;
  v76 = sub_1000D8054();
  *v74 = v76;
  *(v74 + 4) = BYTE4(v76) & 1;
  v77 = v92;
  v78 = v90;
  MessageIdentifierSet.ranges.getter(v92);
  v79 = sub_1000E4C0C();
  v81 = v80;
  sub_100025F40(v77, &qword_1005CD7A0, &unk_1004CF590);
  sub_10006F72C(v46, _s15MissingMessagesO10NewMissingVMa);
  sub_100025F40(v78, &unk_1005D91B0, &unk_1004CF400);
  sub_10006F72C(v75, type metadata accessor for MessageBatches);
  v82 = HIDWORD(v79);
  if (v81)
  {
    LODWORD(v82) = 0;
  }

  v83 = v65 + v72[9];
  *v83 = v82;
  *(v83 + 4) = v81 & 1;
  v84 = v91;
  sub_1000738FC(v65, v91, type metadata accessor for FindMissingMessages.Completed);
  sub_100073540(v107, *(v93 + 88), *(v93 + 96), *(v93 + v87), v84, v108);
  return sub_10006F72C(v84, type metadata accessor for FindMissingMessages.Completed);
}

uint64_t sub_100069D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v135 = a6;
  v136 = a8;
  v134 = a7;
  LODWORD(v123) = a5;
  v126 = a4;
  v143 = a3;
  v144 = a1;
  v133 = a9;
  v141 = a13;
  v142 = a15;
  v139 = a16;
  v140 = a12;
  v131 = a11;
  v132 = a14;
  v130 = a10;
  v120 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v120);
  v129 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v115 - v19;
  __chkstk_darwin(v20);
  v121 = &v115 - v21;
  __chkstk_darwin(v22);
  v118 = &v115 - v23;
  __chkstk_darwin(v24);
  v119 = &v115 - v25;
  v125 = sub_1004A4A74();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v27 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v115 - v29;
  v31 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v31 - 8);
  v33 = &v115 - v32;
  v34 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v34);
  v127 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v115 - v37;
  __chkstk_darwin(v39);
  v41 = &v115 - v40;
  __chkstk_darwin(v42);
  v44 = &v115 - v43;
  __chkstk_darwin(v45);
  v47 = &v115 - v46;
  __chkstk_darwin(v48);
  v50 = &v115 - v49;
  v137 = a2;
  MessageIdentifierSet.union(_:)(a2, v47);
  MessageIdentifierSet.union(_:)(v143, v50);
  v51 = v142;
  v138 = v47;
  sub_100025F40(v47, &unk_1005D91B0, &unk_1004CF400);
  v128 = v50;
  if (v51)
  {

    v52 = v132;
    sub_1000769D4(v140, v141 & 0xFFFFFFFF00000101, v52 | ((HIDWORD(v52) & 1) << 32), v51);

    sub_100025FDC(v38, v41, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.union(_:)(v41, v44);
    sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v126) = 0;
    v125 = 0;
    v53 = 1;
    v54 = v52;
  }

  else
  {
    v116 = v30;
    v55 = v124;
    v56 = v125;
    v117 = v44;
    v57 = v144;
    v58 = v126;
    if ((v123 & 1) != 0 || MessageIdentifierSet.count.getter() <= v58)
    {
      v83 = v57;
      v44 = v117;
      sub_10000E268(v83, v117, &unk_1005D91B0, &unk_1004CF400);
      v125 = 0;
      LODWORD(v126) = 1;
      v53 = 1;
      v54 = v132;
    }

    else
    {
      v59 = v138;
      MessageIdentifierSet.suffix(_:)(v58, v34, v138);
      MessageIdentifierSet.intersection(_:)(v57, v117);
      sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
      v60 = sub_1000E5314();
      if (v60 & 0x100000000) != 0 || (v61 = v60, MessageIdentifierSet.ranges.getter(v33), v62 = sub_1000E4C0C(), v64 = v63, sub_100025F40(v33, &qword_1005CD7A0, &unk_1004CF590), (v64))
      {
        v65 = v55;
        v66 = *(v55 + 16);
        v67 = v27;
        v68 = v139;
        v69 = v56;
        v66(v27, v139, v56);
        v70 = v121;
        sub_10006F6C4(v68, v121, type metadata accessor for MailboxTaskLogger);
        v71 = v122;
        sub_10006F6C4(v68, v122, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v72 = sub_1004A4A54();
        v73 = sub_1004A6034();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v149 = v119;
          *v74 = 68159491;
          *(v74 + 4) = 2;
          *(v74 + 8) = 256;
          v75 = v120;
          v76 = v71 + *(v120 + 20);
          *(v74 + 10) = *v76;
          *(v74 + 11) = 2082;
          v77 = *(v75 + 20);
          v123 = v67;
          v78 = v70 + v77;
          *(v74 + 13) = sub_10015BA6C(*(v70 + v77 + 8), *(v70 + v77 + 16), &v149);
          *(v74 + 21) = 1040;
          *(v74 + 23) = 2;
          *(v74 + 27) = 512;
          LOWORD(v76) = *(v76 + 24);
          sub_10006F72C(v71, type metadata accessor for MailboxTaskLogger);
          *(v74 + 29) = v76;
          *(v74 + 31) = 2160;
          *(v74 + 33) = 0x786F626C69616DLL;
          *(v74 + 41) = 2085;
          v79 = *(v78 + 32);
          LODWORD(v78) = *(v78 + 40);

          sub_10006F72C(v70, type metadata accessor for MailboxTaskLogger);
          v147 = v79;
          v148 = v78;
          v80 = sub_1004A5824();
          v82 = sub_10015BA6C(v80, v81, &v149);

          *(v74 + 43) = v82;
          *(v74 + 51) = 2048;
          *(v74 + 53) = v126;
          _os_log_impl(&_mh_execute_header, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs.", v74, 0x3Du);
          swift_arrayDestroy();

          (*(v124 + 8))(v123, v125);
        }

        else
        {
          sub_10006F72C(v71, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v70, type metadata accessor for MailboxTaskLogger);
          (*(v65 + 8))(v67, v69);
        }
      }

      else
      {
        v123 = v62;
        v90 = v55;
        v91 = *(v55 + 16);
        v92 = v116;
        v93 = v139;
        v94 = v56;
        v91(v116, v139, v56);
        v95 = v119;
        sub_10006F6C4(v93, v119, type metadata accessor for MailboxTaskLogger);
        v96 = v118;
        sub_10006F6C4(v93, v118, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v97 = sub_1004A4A54();
        v98 = sub_1004A6034();
        if (os_log_type_enabled(v97, v98))
        {
          v121 = HIDWORD(v123);
          v99 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v149 = v123;
          *v99 = 68159747;
          LODWORD(v122) = v98;
          *(v99 + 4) = 2;
          *(v99 + 8) = 256;
          v100 = v120;
          v101 = v96 + *(v120 + 20);
          *(v99 + 10) = *v101;
          *(v99 + 11) = 2082;
          v102 = v95 + *(v100 + 20);
          *(v99 + 13) = sub_10015BA6C(*(v102 + 8), *(v102 + 16), &v149);
          *(v99 + 21) = 1040;
          *(v99 + 23) = 2;
          *(v99 + 27) = 512;
          LOWORD(v101) = *(v101 + 24);
          sub_10006F72C(v96, type metadata accessor for MailboxTaskLogger);
          *(v99 + 29) = v101;
          *(v99 + 31) = 2160;
          *(v99 + 33) = 0x786F626C69616DLL;
          *(v99 + 41) = 2085;
          v103 = *(v102 + 32);
          LODWORD(v102) = *(v102 + 40);

          sub_10006F72C(v95, type metadata accessor for MailboxTaskLogger);
          v147 = v103;
          v148 = v102;
          v104 = sub_1004A5824();
          v106 = sub_10015BA6C(v104, v105, &v149);

          *(v99 + 43) = v106;
          *(v99 + 51) = 2048;
          *(v99 + 53) = v126;
          *(v99 + 61) = 2082;
          v145 = v121;
          v146 = v61;
          sub_100016948();
          static MessageIdentifier.... infix(_:_:)(&v146, &v145, &type metadata for UID, &v147);
          sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v107 = MessageIdentifierRange.debugDescription.getter();
          v109 = sub_10015BA6C(v107, v108, &v149);

          *(v99 + 63) = v109;
          _os_log_impl(&_mh_execute_header, v97, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs in range %{public}s.", v99, 0x47u);
          swift_arrayDestroy();

          (*(v124 + 8))(v116, v125);
        }

        else
        {
          sub_10006F72C(v96, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v95, type metadata accessor for MailboxTaskLogger);
          (*(v90 + 8))(v92, v94);
        }
      }

      v54 = v132;
      v44 = v117;
      v110 = MessageIdentifierSet.startIndex.getter(v34);
      v112 = v111;
      if (v110 == MessageIdentifierSet.endIndex.getter(v34) && v112 == v113)
      {
        LODWORD(v126) = 0;
        v125 = 0;
        v53 = 1;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v112, v34, &v147);
        LODWORD(v126) = 0;
        v53 = 0;
        v125 = v147;
      }
    }
  }

  v84 = v138;
  sub_10000E268(v44, v138, &unk_1005D91B0, &unk_1004CF400);
  v85 = v137;
  v86 = v127;
  sub_10000E268(v137, v127, &unk_1005D91B0, &unk_1004CF400);
  v87 = v139;
  v88 = v129;
  sub_10006F6C4(v139, v129, type metadata accessor for MailboxTaskLogger);
  LOBYTE(v147) = BYTE5(v130) & 1;
  LOBYTE(v149) = BYTE4(v131) & 1;
  v114 = v131 | ((BYTE4(v131) & 1) << 32);
  sub_10006CF1C(v84, v125 | (v53 << 32), v126, v86, v135, v134 & 1, v136, v130 & 0xFFFFFFFFFFLL | (((v130 >> 40) & 1) << 40), v133, v114, SBYTE4(v114), v140, v141, v54, SBYTE4(v54), v142, v88);
  sub_10006F72C(v87, type metadata accessor for MailboxTaskLogger);
  sub_100025F40(v143, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v85, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v144, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025F40(v128, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_10006AB1C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v124 = a5;
  v132 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v132);
  v131 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v116[-v10];
  __chkstk_darwin(v12);
  v14 = &v116[-v13];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v134 = Missing;
  __chkstk_darwin(Missing);
  v17 = &v116[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v129);
  v122 = &v116[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v123 = &v116[-v20];
  __chkstk_darwin(v21);
  v125 = &v116[-v22];
  __chkstk_darwin(v23);
  v126 = &v116[-v24];
  __chkstk_darwin(v25);
  v127 = &v116[-v26];
  __chkstk_darwin(v27);
  v128 = &v116[-v28];
  __chkstk_darwin(v29);
  v31 = &v116[-v30];
  __chkstk_darwin(v32);
  v34 = &v116[-v33];
  v35 = *(Missing + 24);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v130 = v35;
  v36 = sub_1004A70C4();
  v133 = a3;
  if ((v36 & 1) == 0)
  {
    sub_10006F6C4(a4, v34, type metadata accessor for MailboxTaskLogger);
    sub_10006F6C4(a4, v31, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10006F6C4(a3, v17, type metadata accessor for FindMissingMessages.Completed);
    v37 = sub_1004A4A54();
    v38 = sub_1004A6034();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v137[0] = v120;
      *v39 = 68159491;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v129;
      v41 = *(v129 + 20);
      v119 = v38;
      v42 = &v31[v41];
      *(v39 + 10) = v31[v41];
      *(v39 + 11) = 2082;
      v43 = *(v40 + 20);
      v118 = v37;
      v44 = &v34[v43];
      *(v39 + 13) = sub_10015BA6C(*&v34[v43 + 8], *&v34[v43 + 16], v137);
      *(v39 + 21) = 1040;
      *(v39 + 23) = 2;
      *(v39 + 27) = 512;
      v121 = a4;
      v45 = a1;
      v46 = v14;
      v47 = *(v42 + 12);
      sub_10006F72C(v31, type metadata accessor for MailboxTaskLogger);
      *(v39 + 29) = v47;
      *(v39 + 31) = 2160;
      *(v39 + 33) = 0x786F626C69616DLL;
      *(v39 + 41) = 2085;
      v48 = *(v44 + 4);
      v49 = *(v44 + 10);

      sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);
      v135 = v48;
      v136 = v49;
      v14 = v46;
      a1 = v45;
      a4 = v121;
      v50 = sub_1004A5824();
      v52 = sub_10015BA6C(v50, v51, v137);

      *(v39 + 43) = v52;
      *(v39 + 51) = 2048;
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v53 = MessageIdentifierSet.count.getter();
      sub_10006F72C(v17, type metadata accessor for FindMissingMessages.Completed);
      *(v39 + 53) = v53;
      v54 = v118;
      _os_log_impl(&_mh_execute_header, v118, v119, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld new UID(s).", v39, 0x3Du);
      swift_arrayDestroy();

      a3 = v133;
    }

    else
    {
      sub_10006F72C(v17, type metadata accessor for FindMissingMessages.Completed);
      sub_10006F72C(v31, type metadata accessor for MailboxTaskLogger);

      sub_10006F72C(v34, type metadata accessor for MailboxTaskLogger);
    }
  }

  v55 = type metadata accessor for MailboxSyncState(0);
  v56 = *(v55 + 68);
  sub_10006F6C4(a1 + v56, v14, _s15MissingMessagesOMa);
  sub_1000E3CF8(&v130[a3]);
  sub_10006F6C4(a1 + v56, v11, _s15MissingMessagesOMa);
  v57 = sub_1000E8854(v11, v14);
  sub_10006F72C(v11, _s15MissingMessagesOMa);
  v58 = a4;
  sub_10006B9F0(a4, a1 + v56);
  if ((*(a3 + 12) & 1) == 0)
  {
    v59 = *(a3 + 8);
    if (*(a1 + 12))
    {
      goto LABEL_10;
    }

    v60 = *(a1 + 8);
    v61 = v60 >= v59;
    if (v60 > v59)
    {
      v59 = *(a1 + 8);
    }

    if (!v61)
    {
LABEL_10:
      v119 = v57;
      v120 = v56;
      *(a1 + 8) = v59;
      *(a1 + 12) = 0;
      v62 = v128;
      sub_10006F6C4(v58, v128, type metadata accessor for MailboxTaskLogger);
      v63 = v127;
      sub_10006F6C4(v58, v127, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v64 = sub_1004A4A54();
      v65 = sub_1004A6034();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v130 = v14;
        v118 = v67;
        v137[0] = v67;
        *v66 = 68159491;
        v121 = v55;
        *(v66 + 4) = 2;
        *(v66 + 8) = 256;
        v68 = v129;
        v69 = v62;
        v70 = &v63[*(v129 + 20)];
        *(v66 + 10) = *v70;
        *(v66 + 11) = 2082;
        v71 = *(v68 + 20);
        v117 = v65;
        v72 = v69 + v71;
        *(v66 + 13) = sub_10015BA6C(*(v69 + v71 + 8), *(v69 + v71 + 16), v137);
        *(v66 + 21) = 1040;
        *(v66 + 23) = 2;
        *(v66 + 27) = 512;
        LOWORD(v70) = *(v70 + 12);
        sub_10006F72C(v63, type metadata accessor for MailboxTaskLogger);
        *(v66 + 29) = v70;
        *(v66 + 31) = 2160;
        *(v66 + 33) = 0x786F626C69616DLL;
        *(v66 + 41) = 2085;
        v73 = *(v72 + 32);
        LODWORD(v72) = *(v72 + 40);

        sub_10006F72C(v69, type metadata accessor for MailboxTaskLogger);
        v135 = v73;
        v136 = v72;
        v74 = sub_1004A5824();
        v76 = sub_10015BA6C(v74, v75, v137);
        v55 = v121;

        *(v66 + 43) = v76;
        *(v66 + 51) = 1024;
        *(v66 + 53) = v59;
        _os_log_impl(&_mh_execute_header, v64, v117, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating sync state next UID to %u.", v66, 0x39u);
        swift_arrayDestroy();
        v14 = v130;
      }

      else
      {
        sub_10006F72C(v63, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v62, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v133;
      v56 = v120;
      LOBYTE(v57) = v119;
    }
  }

  v77 = v134;
  if (*(a3 + *(v134 + 28)))
  {
    v78 = v58;
    if (*(a3 + *(v134 + 28)) == 1)
    {
      v79 = v58;
      v80 = v126;
      sub_10006F6C4(v79, v126, type metadata accessor for MailboxTaskLogger);
      v81 = v125;
      sub_10006F6C4(v78, v125, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v82 = sub_1004A4A54();
      v83 = sub_1004A6034();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v137[0] = v128;
        *v84 = 68159235;
        v130 = v14;
        *(v84 + 4) = 2;
        *(v84 + 8) = 256;
        v85 = v129;
        v86 = *(v129 + 20);
        v121 = v55;
        v87 = &v81[v86];
        *(v84 + 10) = v81[v86];
        *(v84 + 11) = 2082;
        v88 = &v80[*(v85 + 20)];
        *(v84 + 13) = sub_10015BA6C(*(v88 + 1), *(v88 + 2), v137);
        *(v84 + 21) = 1040;
        *(v84 + 23) = 2;
        *(v84 + 27) = 512;
        LOWORD(v87) = *(v87 + 12);
        sub_10006F72C(v81, type metadata accessor for MailboxTaskLogger);
        *(v84 + 29) = v87;
        *(v84 + 31) = 2160;
        *(v84 + 33) = 0x786F626C69616DLL;
        *(v84 + 41) = 2085;
        v89 = *(v88 + 4);
        LODWORD(v88) = *(v88 + 10);

        sub_10006F72C(v80, type metadata accessor for MailboxTaskLogger);
        v135 = v89;
        v136 = v88;
        v90 = sub_1004A5824();
        v92 = sub_10015BA6C(v90, v91, v137);
        v14 = v130;
        v77 = v134;

        *(v84 + 43) = v92;
        v55 = v121;
        _os_log_impl(&_mh_execute_header, v82, v83, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run after initial run.", v84, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10006F72C(v81, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v80, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v133;
      sub_10013FC9C(0xCu);
      sub_100088568(&v135, 12);
    }

    else if ((v57 & 1) == 0)
    {
      v93 = (a3 + *(v134 + 32));
      v94 = *v93;
      LOBYTE(v135) = *(v93 + 4);
      if (sub_1000E5918(v124, v94 | (v135 << 32)))
      {
        v95 = v123;
        sub_10006F6C4(v58, v123, type metadata accessor for MailboxTaskLogger);
        v96 = v58;
        v97 = v122;
        sub_10006F6C4(v96, v122, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v98 = sub_1004A4A54();
        v99 = sub_1004A6034();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v137[0] = v128;
          *v100 = 68159235;
          v130 = v14;
          *(v100 + 4) = 2;
          *(v100 + 8) = 256;
          v101 = v129;
          v102 = *(v129 + 20);
          v121 = v55;
          v103 = &v97[v102];
          *(v100 + 10) = v97[v102];
          *(v100 + 11) = 2082;
          v104 = &v95[*(v101 + 20)];
          *(v100 + 13) = sub_10015BA6C(*(v104 + 1), *(v104 + 2), v137);
          *(v100 + 21) = 1040;
          *(v100 + 23) = 2;
          *(v100 + 27) = 512;
          LOWORD(v103) = *(v103 + 12);
          sub_10006F72C(v97, type metadata accessor for MailboxTaskLogger);
          *(v100 + 29) = v103;
          *(v100 + 31) = 2160;
          *(v100 + 33) = 0x786F626C69616DLL;
          *(v100 + 41) = 2085;
          v105 = *(v104 + 4);
          LODWORD(v104) = *(v104 + 10);

          sub_10006F72C(v95, type metadata accessor for MailboxTaskLogger);
          v135 = v105;
          v136 = v104;
          v106 = sub_1004A5824();
          v108 = sub_10015BA6C(v106, v107, v137);
          v14 = v130;
          v77 = v134;

          *(v100 + 43) = v108;
          v55 = v121;
          _os_log_impl(&_mh_execute_header, v98, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run.", v100, 0x33u);
          swift_arrayDestroy();
        }

        else
        {
          sub_10006F72C(v97, type metadata accessor for MailboxTaskLogger);

          sub_10006F72C(v95, type metadata accessor for MailboxTaskLogger);
        }

        sub_10013FC9C(0xCu);
        sub_100088568(&v135, 12);
        a3 = v133;
      }
    }
  }

  v109 = v131;
  sub_10006F6C4(a1 + v56, v131, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10006F72C(v109, _s15MissingMessagesOMa);
  if (EnumCaseMultiPayload == 1)
  {
    sub_10013FC9C(1u);
    sub_100088568(&v135, 1);
  }

  v111 = (a3 + *(v77 + 36));
  if ((v111[1] & 1) == 0)
  {
    v112 = *v111;
    v113 = *(v55 + 60);
    v114 = type metadata accessor for MessageBatches(0);
    if (!(*(*(v114 - 8) + 48))(a1 + v113, 1, v114))
    {
      LOBYTE(v135) = 0;
      sub_1000D7F2C(v112);
    }
  }

  return sub_10006F72C(v14, _s15MissingMessagesOMa);
}

uint64_t sub_10006B9F0(char *a1, uint64_t a2)
{
  v175 = a1;
  v164 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v164);
  v162 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v168 = &v156 - v5;
  __chkstk_darwin(v6);
  v173 = &v156 - v7;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v8 - 8);
  v170 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v171);
  v172 = &v156 - v10;
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v11 - 8);
  v163 = &v156 - v12;
  v169 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v169);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v161 = &v156 - v16;
  __chkstk_darwin(v17);
  v19 = &v156 - v18;
  __chkstk_darwin(v20);
  v158 = &v156 - v21;
  __chkstk_darwin(v22);
  v24 = &v156 - v23;
  __chkstk_darwin(v25);
  v160 = &v156 - v26;
  __chkstk_darwin(v27);
  v29 = &v156 - v28;
  __chkstk_darwin(v30);
  v157 = &v156 - v31;
  v174 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v174);
  v167 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v165 = &v156 - v34;
  __chkstk_darwin(v35);
  v159 = &v156 - v36;
  __chkstk_darwin(v37);
  v166 = &v156 - v38;
  __chkstk_darwin(v39);
  v41 = &v156 - v40;
  __chkstk_darwin(v42);
  v44 = &v156 - v43;
  __chkstk_darwin(v45);
  v47 = &v156 - v46;
  v48 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v48);
  v50 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006F6C4(a2, v50, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1000738FC(v50, v47, _s15MissingMessagesO10IncompleteVMa);
      v52 = &v47[*(v174 + 20)];
      if (v52[4])
      {
        v53 = v175;
        v54 = v160;
        sub_10006F6C4(v175, v160, type metadata accessor for MailboxTaskLogger);
        sub_10006F6C4(v53, v24, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v55 = v159;
        sub_10006F6C4(v47, v159, _s15MissingMessagesO10IncompleteVMa);
        v56 = v165;
        sub_10006F6C4(v47, v165, _s15MissingMessagesO10IncompleteVMa);
        v57 = v167;
        sub_10006F6C4(v47, v167, _s15MissingMessagesO10IncompleteVMa);
        v58 = sub_1004A4A54();
        v59 = sub_1004A6034();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v175 = v47;
          v61 = v60;
          v173 = swift_slowAlloc();
          v178[0] = v173;
          *v61 = 68160003;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          v62 = v169;
          v63 = &v24[*(v169 + 20)];
          *(v61 + 10) = *v63;
          *(v61 + 11) = 2082;
          v64 = v55;
          v65 = v54 + *(v62 + 20);
          *(v61 + 13) = sub_10015BA6C(*(v65 + 8), *(v65 + 16), v178);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          LOWORD(v63) = *(v63 + 12);
          sub_10006F72C(v24, type metadata accessor for MailboxTaskLogger);
          *(v61 + 29) = v63;
          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          v66 = *(v65 + 32);
          LODWORD(v63) = *(v65 + 40);

          sub_10006F72C(v54, type metadata accessor for MailboxTaskLogger);
          v176 = v66;
          v177 = v63;
          v67 = sub_1004A5824();
          v69 = sub_10015BA6C(v67, v68, v178);

          *(v61 + 43) = v69;
          *(v61 + 51) = 2048;
          v70 = v163;
          sub_10000E268(v64, v163, &qword_1005CD1D0, &unk_1004CF2C0);
          v71 = MessageIdentifierSet.count.getter();
          sub_100025F40(v70, &unk_1005D91B0, &unk_1004CF400);
          v72 = _s15MissingMessagesO10IncompleteVMa;
          sub_10006F72C(v64, _s15MissingMessagesO10IncompleteVMa);
          *(v61 + 53) = v71;
          *(v61 + 61) = 2048;
          _s15MissingMessagesO8ProgressVMa(0);
          v73 = v165;
          v74 = MessageIdentifierSet.count.getter();
          sub_10006F72C(v73, _s15MissingMessagesO10IncompleteVMa);
          *(v61 + 63) = v74;
          *(v61 + 71) = 2082;
          v75 = v167;
          v76 = v170;
          sub_10006F6C4(v167 + *(v174 + 24), v170, _s15MissingMessagesO11QueriedUIDsVMa);
          v77 = v172;
          sub_100025FDC(v76, v172, &unk_1005D91B0, &unk_1004CF400);
          v78 = MessageIdentifierSet.debugDescription.getter();
          v80 = v79;
          sub_100025F40(v77, &unk_1005D91B0, &unk_1004CF400);
          sub_10006F72C(v75, _s15MissingMessagesO10IncompleteVMa);
          v81 = sub_10015BA6C(v78, v80, v178);

          *(v61 + 73) = v81;
          _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: nil, queriedUIDs: %{public}s", v61, 0x51u);
          swift_arrayDestroy();

          v82 = v175;
LABEL_19:
          v105 = v72;
          return sub_10006F72C(v82, v105);
        }

        sub_10006F72C(v56, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v55, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v24, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v57, _s15MissingMessagesO10IncompleteVMa);
        v154 = v54;
        goto LABEL_15;
      }

      LODWORD(v173) = *v52;
      v106 = v175;
      v107 = v157;
      sub_10006F6C4(v175, v157, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v106, v29, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10006F6C4(v47, v44, _s15MissingMessagesO10IncompleteVMa);
      sub_10006F6C4(v47, v41, _s15MissingMessagesO10IncompleteVMa);
      v108 = v166;
      sub_10006F6C4(v47, v166, _s15MissingMessagesO10IncompleteVMa);
      v109 = sub_1004A4A54();
      v110 = sub_1004A6034();
      if (!os_log_type_enabled(v109, v110))
      {
        sub_10006F72C(v41, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v44, _s15MissingMessagesO10IncompleteVMa);
        sub_10006F72C(v29, type metadata accessor for MailboxTaskLogger);

        sub_10006F72C(v108, _s15MissingMessagesO10IncompleteVMa);
        v154 = v107;
LABEL_15:
        sub_10006F72C(v154, type metadata accessor for MailboxTaskLogger);
        v82 = v47;
        v105 = _s15MissingMessagesO10IncompleteVMa;
        return sub_10006F72C(v82, v105);
      }

      v111 = v41;
      v112 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v178[0] = v168;
      *v112 = 68160259;
      LODWORD(v167) = v110;
      *(v112 + 4) = 2;
      *(v112 + 8) = 256;
      v113 = v169;
      v114 = &v29[*(v169 + 20)];
      *(v112 + 10) = *v114;
      *(v112 + 11) = 2082;
      v115 = v107;
      v116 = v107 + *(v113 + 20);
      *(v112 + 13) = sub_10015BA6C(*(v116 + 8), *(v116 + 16), v178);
      *(v112 + 21) = 1040;
      *(v112 + 23) = 2;
      *(v112 + 27) = 512;
      LOWORD(v114) = *(v114 + 12);
      sub_10006F72C(v29, type metadata accessor for MailboxTaskLogger);
      *(v112 + 29) = v114;
      *(v112 + 31) = 2160;
      *(v112 + 33) = 0x786F626C69616DLL;
      *(v112 + 41) = 2085;
      v117 = *(v116 + 32);
      LODWORD(v116) = *(v116 + 40);

      sub_10006F72C(v115, type metadata accessor for MailboxTaskLogger);
      v176 = v117;
      v177 = v116;
      v118 = sub_1004A5824();
      v120 = sub_10015BA6C(v118, v119, v178);

      *(v112 + 43) = v120;
      *(v112 + 51) = 2048;
      v121 = v163;
      sub_10000E268(v44, v163, &qword_1005CD1D0, &unk_1004CF2C0);
      v175 = v47;
      v122 = MessageIdentifierSet.count.getter();
      sub_100025F40(v121, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v44, _s15MissingMessagesO10IncompleteVMa);
      *(v112 + 53) = v122;
      *(v112 + 61) = 2048;
      _s15MissingMessagesO8ProgressVMa(0);
      v123 = MessageIdentifierSet.count.getter();
      sub_10006F72C(v111, _s15MissingMessagesO10IncompleteVMa);
      *(v112 + 63) = v123;
      *(v112 + 71) = 1024;
      *(v112 + 73) = v173;
      *(v112 + 77) = 2082;
      v124 = v166;
      v125 = v170;
      sub_10006F6C4(v166 + *(v174 + 24), v170, _s15MissingMessagesO11QueriedUIDsVMa);
      v126 = v172;
      sub_100025FDC(v125, v172, &unk_1005D91B0, &unk_1004CF400);
      v127 = MessageIdentifierSet.debugDescription.getter();
      v129 = v128;
      sub_100025F40(v126, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v124, _s15MissingMessagesO10IncompleteVMa);
      v130 = sub_10015BA6C(v127, v129, v178);

      *(v112 + 79) = v130;
      _os_log_impl(&_mh_execute_header, v109, v167, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: %u, queriedUIDs: %{public}s", v112, 0x57u);
      swift_arrayDestroy();

      v82 = v175;
      v105 = _s15MissingMessagesO10IncompleteVMa;
      return sub_10006F72C(v82, v105);
    }

    v83 = v173;
    sub_1000738FC(v50, v173, _s15MissingMessagesO8CompleteVMa);
    if (*(v83 + 4))
    {
      v84 = v175;
      v85 = v161;
      sub_10006F6C4(v175, v161, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v84, v14, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v86 = v162;
      sub_10006F6C4(v83, v162, _s15MissingMessagesO8CompleteVMa);
      v87 = sub_1004A4A54();
      v88 = sub_1004A6034();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v178[0] = v175;
        *v89 = 68159491;
        *(v89 + 4) = 2;
        *(v89 + 8) = 256;
        v90 = v169;
        v91 = &v14[*(v169 + 20)];
        *(v89 + 10) = *v91;
        *(v89 + 11) = 2082;
        v92 = v85 + *(v90 + 20);
        *(v89 + 13) = sub_10015BA6C(*(v92 + 8), *(v92 + 16), v178);
        *(v89 + 21) = 1040;
        *(v89 + 23) = 2;
        *(v89 + 27) = 512;
        LOWORD(v91) = *(v91 + 12);
        sub_10006F72C(v14, type metadata accessor for MailboxTaskLogger);
        *(v89 + 29) = v91;
        *(v89 + 31) = 2160;
        *(v89 + 33) = 0x786F626C69616DLL;
        *(v89 + 41) = 2085;
        v93 = *(v92 + 32);
        v94 = *(v92 + 40);

        sub_10006F72C(v85, type metadata accessor for MailboxTaskLogger);
        v176 = v93;
        v177 = v94;
        v95 = sub_1004A5824();
        v97 = sub_10015BA6C(v95, v96, v178);

        *(v89 + 43) = v97;
        *(v89 + 51) = 2082;
        v98 = v170;
        sub_10006F6C4(v86 + *(v164 + 20), v170, _s15MissingMessagesO11QueriedUIDsVMa);
        v99 = v98;
        v100 = v172;
        sub_100025FDC(v99, v172, &unk_1005D91B0, &unk_1004CF400);
        v101 = MessageIdentifierSet.debugDescription.getter();
        v103 = v102;
        sub_100025F40(v100, &unk_1005D91B0, &unk_1004CF400);
        sub_10006F72C(v86, _s15MissingMessagesO8CompleteVMa);
        v104 = sub_10015BA6C(v101, v103, v178);

        *(v89 + 53) = v104;
        _os_log_impl(&_mh_execute_header, v87, v88, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched-window upper bound: nil, queriedUIDs: %{public}s", v89, 0x3Du);
        swift_arrayDestroy();

        v82 = v83;
        v105 = _s15MissingMessagesO8CompleteVMa;
        return sub_10006F72C(v82, v105);
      }

      sub_10006F72C(v14, type metadata accessor for MailboxTaskLogger);

      v72 = _s15MissingMessagesO8CompleteVMa;
      sub_10006F72C(v86, _s15MissingMessagesO8CompleteVMa);
      v155 = v85;
    }

    else
    {
      v131 = *v83;
      v132 = v175;
      v133 = v158;
      sub_10006F6C4(v175, v158, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(v132, v19, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v134 = v168;
      sub_10006F6C4(v83, v168, _s15MissingMessagesO8CompleteVMa);
      v135 = sub_1004A4A54();
      v136 = sub_1004A6034();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v178[0] = swift_slowAlloc();
        *v137 = 68159747;
        *(v137 + 4) = 2;
        *(v137 + 8) = 256;
        v138 = v169;
        v139 = &v19[*(v169 + 20)];
        *(v137 + 10) = *v139;
        *(v137 + 11) = 2082;
        v140 = v133 + *(v138 + 20);
        *(v137 + 13) = sub_10015BA6C(*(v140 + 8), *(v140 + 16), v178);
        *(v137 + 21) = 1040;
        *(v137 + 23) = 2;
        *(v137 + 27) = 512;
        LOWORD(v139) = *(v139 + 12);
        sub_10006F72C(v19, type metadata accessor for MailboxTaskLogger);
        *(v137 + 29) = v139;
        *(v137 + 31) = 2160;
        *(v137 + 33) = 0x786F626C69616DLL;
        *(v137 + 41) = 2085;
        v141 = v133;
        v142 = *(v140 + 32);
        LODWORD(v140) = *(v140 + 40);

        sub_10006F72C(v141, type metadata accessor for MailboxTaskLogger);
        v176 = v142;
        v177 = v140;
        v143 = sub_1004A5824();
        v145 = sub_10015BA6C(v143, v144, v178);

        *(v137 + 43) = v145;
        *(v137 + 51) = 1024;
        *(v137 + 53) = v131;
        *(v137 + 57) = 2082;
        v146 = v168;
        v147 = v170;
        sub_10006F6C4(v168 + *(v164 + 20), v170, _s15MissingMessagesO11QueriedUIDsVMa);
        v148 = v147;
        v149 = v172;
        sub_100025FDC(v148, v172, &unk_1005D91B0, &unk_1004CF400);
        v150 = MessageIdentifierSet.debugDescription.getter();
        v152 = v151;
        sub_100025F40(v149, &unk_1005D91B0, &unk_1004CF400);
        sub_10006F72C(v146, _s15MissingMessagesO8CompleteVMa);
        v153 = sub_10015BA6C(v150, v152, v178);

        *(v137 + 59) = v153;
        _os_log_impl(&_mh_execute_header, v135, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched window upper bound: %u, queriedUIDs: %{public}s", v137, 0x43u);
        swift_arrayDestroy();

        v82 = v173;
        v105 = _s15MissingMessagesO8CompleteVMa;
        return sub_10006F72C(v82, v105);
      }

      sub_10006F72C(v19, type metadata accessor for MailboxTaskLogger);

      v72 = _s15MissingMessagesO8CompleteVMa;
      sub_10006F72C(v134, _s15MissingMessagesO8CompleteVMa);
      v155 = v133;
    }

    sub_10006F72C(v155, type metadata accessor for MailboxTaskLogger);
    v82 = v83;
    goto LABEL_19;
  }

  return result;
}

double sub_10006CDF8()
{
  if (qword_1005CCE40 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10006CE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1000690B8(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  a7[2] = v10;
  return result;
}

uint64_t WatchOSHeaderInfo.from.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10006CF1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  v269 = a8;
  v266 = a7;
  v278 = a6;
  v264 = a5;
  v252 = a3;
  v265 = a2;
  v267 = a9;
  v281 = a17;
  v255 = sub_10000C9C0(&qword_1005CEA08, &unk_1004D14B0);
  __chkstk_darwin(v255);
  v256 = &v238 - v19;
  v20 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v20 - 8);
  v261 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v262 = &v238 - v23;
  __chkstk_darwin(v24);
  v276 = &v238 - v25;
  v259 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v259);
  v258 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v272 = &v238 - v28;
  __chkstk_darwin(v29);
  v242 = &v238 - v30;
  __chkstk_darwin(v31);
  v244 = &v238 - v32;
  __chkstk_darwin(v33);
  v241 = &v238 - v34;
  __chkstk_darwin(v35);
  v243 = &v238 - v36;
  __chkstk_darwin(v37);
  v253 = (&v238 - v38);
  __chkstk_darwin(v39);
  v270 = &v238 - v40;
  v280 = sub_1004A4A74();
  v282 = *(v280 - 8);
  __chkstk_darwin(v280);
  v260 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v251 = &v238 - v43;
  __chkstk_darwin(v44);
  v247 = &v238 - v45;
  __chkstk_darwin(v46);
  v271 = &v238 - v47;
  v48 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v48 - 8);
  v263 = &v238 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v268 = &v238 - v51;
  __chkstk_darwin(v52);
  v245 = &v238 - v53;
  __chkstk_darwin(v54);
  v56 = &v238 - v55;
  v57 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v57);
  v257 = &v238 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v254 = &v238 - v60;
  __chkstk_darwin(v61);
  v273 = &v238 - v62;
  __chkstk_darwin(v63);
  v249 = &v238 - v64;
  __chkstk_darwin(v65);
  v240 = &v238 - v66;
  __chkstk_darwin(v67);
  v239 = &v238 - v68;
  __chkstk_darwin(v69);
  v246 = &v238 - v70;
  __chkstk_darwin(v71);
  v250 = &v238 - v72;
  __chkstk_darwin(v73);
  v248 = &v238 - v74;
  __chkstk_darwin(v75);
  v238 = &v238 - v76;
  __chkstk_darwin(v77);
  v79 = &v238 - v78;
  __chkstk_darwin(v80);
  v82 = &v238 - v81;
  __chkstk_darwin(v83);
  v85 = &v238 - v84;
  MessageIdentifierSet.subtracting(_:)(a4, &v238 - v84);
  MessageIdentifierSet.ranges.getter(v56);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v86 = sub_1004A7044();
  v87 = sub_1004A7074();
  sub_100025F40(v56, &qword_1005CD7A0, &unk_1004CF590);
  v88 = v86 == v87;
  v89 = v281;
  v277 = a1;
  v274 = a4;
  v275 = v85;
  v279 = v57;
  if (!v88)
  {
    v109 = v280;
    MessageIdentifierSet.ranges.getter(v56);
    v110 = sub_1004A7044();
    v111 = sub_1004A7074();
    v112 = sub_1004A7044();
    result = sub_1004A7074();
    if (v110 < v112 || result < v110)
    {
      __break(1u);
    }

    else
    {
      v114 = sub_1004A7044();
      v115 = sub_1004A7074();
      result = sub_100025F40(v56, &qword_1005CD7A0, &unk_1004CF590);
      if (v111 >= v114 && v115 >= v111)
      {
        if (!__OFSUB__(v111, v110))
        {
          v116 = *(v282 + 16);
          if (v111 - v110 > 19)
          {
            v146 = v281;
            v147 = v109;
            v116(v251, v281, v109);
            v148 = v244;
            sub_10006F6C4(v146, v244, type metadata accessor for MailboxTaskLogger);
            v149 = v242;
            sub_10006F6C4(v146, v242, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v150 = v239;
            sub_10000E268(v85, v239, &unk_1005D91B0, &unk_1004CF400);
            v105 = v274;
            v151 = v240;
            sub_10000E268(v274, v240, &unk_1005D91B0, &unk_1004CF400);
            sub_10000E268(v277, v249, &unk_1005D91B0, &unk_1004CF400);
            v152 = sub_1004A4A54();
            v153 = sub_1004A6034();
            v154 = os_log_type_enabled(v152, v153);
            v155 = v264;
            if (v154)
            {
              v156 = swift_slowAlloc();
              v271 = swift_slowAlloc();
              v285 = v271;
              *v156 = 68160003;
              LODWORD(v270) = v153;
              *(v156 + 4) = 2;
              *(v156 + 8) = 256;
              v157 = v259;
              v158 = v149 + *(v259 + 20);
              *(v156 + 10) = *v158;
              *(v156 + 11) = 2082;
              v159 = *(v157 + 20);
              v253 = v152;
              v160 = v149;
              v161 = v148 + v159;
              *(v156 + 13) = sub_10015BA6C(*(v148 + v159 + 8), *(v148 + v159 + 16), &v285);
              *(v156 + 21) = 1040;
              *(v156 + 23) = 2;
              *(v156 + 27) = 512;
              LOWORD(v158) = *(v158 + 24);
              sub_10006F72C(v160, type metadata accessor for MailboxTaskLogger);
              *(v156 + 29) = v158;
              *(v156 + 31) = 2160;
              *(v156 + 33) = 0x786F626C69616DLL;
              *(v156 + 41) = 2085;
              v162 = *(v161 + 32);
              LODWORD(v161) = *(v161 + 40);

              sub_10006F72C(v148, type metadata accessor for MailboxTaskLogger);
              v283 = v162;
              v284 = v161;
              v163 = sub_1004A5824();
              v165 = sub_10015BA6C(v163, v164, &v285);

              *(v156 + 43) = v165;
              *(v156 + 51) = 2048;
              v166 = MessageIdentifierSet.count.getter();
              sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
              *(v156 + 53) = v166;
              *(v156 + 61) = 2048;
              v167 = MessageIdentifierSet.count.getter();
              sub_100025F40(v151, &unk_1005D91B0, &unk_1004CF400);
              *(v156 + 63) = v167;
              *(v156 + 71) = 2048;
              v168 = v249;
              v169 = MessageIdentifierSet.count.getter();
              v105 = v274;
              sub_100025F40(v168, &unk_1005D91B0, &unk_1004CF400);
              *(v156 + 73) = v169;
              v170 = v253;
              _os_log_impl(&_mh_execute_header, v253, v270, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs missing locally. (%ld locally, %ld on server)", v156, 0x51u);
              swift_arrayDestroy();

              v253 = *(v282 + 8);
              (v253)(v251, v147);
            }

            else
            {
              sub_100025F40(v249, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v151, &unk_1005D91B0, &unk_1004CF400);
              sub_100025F40(v150, &unk_1005D91B0, &unk_1004CF400);
              sub_10006F72C(v149, type metadata accessor for MailboxTaskLogger);

              v253 = *(v282 + 8);
              (v253)(v251, v147);
              sub_10006F72C(v148, type metadata accessor for MailboxTaskLogger);
            }

            v171 = v269;
            goto LABEL_22;
          }

          v117 = v247;
          v118 = v281;
          v119 = v109;
          v116(v247, v281, v109);
          v120 = v243;
          sub_10006F6C4(v118, v243, type metadata accessor for MailboxTaskLogger);
          v121 = v241;
          sub_10006F6C4(v118, v241, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v122 = v238;
          sub_10000E268(v85, v238, &unk_1005D91B0, &unk_1004CF400);
          sub_10000E268(v85, v248, &unk_1005D91B0, &unk_1004CF400);
          v105 = v274;
          sub_10000E268(v274, v250, &unk_1005D91B0, &unk_1004CF400);
          v123 = v246;
          sub_10000E268(v277, v246, &unk_1005D91B0, &unk_1004CF400);
          v124 = sub_1004A4A54();
          v125 = sub_1004A6034();
          v271 = v124;
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v270 = swift_slowAlloc();
            v285 = v270;
            *v126 = 68160259;
            *(v126 + 4) = 2;
            *(v126 + 8) = 256;
            v127 = v259;
            v128 = *(v259 + 20);
            LODWORD(v253) = v125;
            v129 = v121 + v128;
            *(v126 + 10) = *(v121 + v128);
            *(v126 + 11) = 2082;
            v130 = v120 + *(v127 + 20);
            *(v126 + 13) = sub_10015BA6C(*(v130 + 8), *(v130 + 16), &v285);
            *(v126 + 21) = 1040;
            *(v126 + 23) = 2;
            *(v126 + 27) = 512;
            LOWORD(v129) = *(v129 + 24);
            sub_10006F72C(v121, type metadata accessor for MailboxTaskLogger);
            *(v126 + 29) = v129;
            *(v126 + 31) = 2160;
            *(v126 + 33) = 0x786F626C69616DLL;
            *(v126 + 41) = 2085;
            v131 = *(v130 + 32);
            LODWORD(v130) = *(v130 + 40);

            sub_10006F72C(v120, type metadata accessor for MailboxTaskLogger);
            v283 = v131;
            v284 = v130;
            v132 = sub_1004A5824();
            v134 = sub_10015BA6C(v132, v133, &v285);

            *(v126 + 43) = v134;
            *(v126 + 51) = 2048;
            v135 = MessageIdentifierSet.count.getter();
            sub_100025F40(v122, &unk_1005D91B0, &unk_1004CF400);
            *(v126 + 53) = v135;
            *(v126 + 61) = 2082;
            v136 = v248;
            v137 = MessageIdentifierSet.debugDescription.getter();
            v139 = v138;
            sub_100025F40(v136, &unk_1005D91B0, &unk_1004CF400);
            v140 = sub_10015BA6C(v137, v139, &v285);
            v119 = v280;

            *(v126 + 63) = v140;
            *(v126 + 71) = 2048;
            v141 = v250;
            v142 = MessageIdentifierSet.count.getter();
            sub_100025F40(v141, &unk_1005D91B0, &unk_1004CF400);
            *(v126 + 73) = v142;
            *(v126 + 81) = 2048;
            v143 = v246;
            v144 = MessageIdentifierSet.count.getter();
            sub_100025F40(v143, &unk_1005D91B0, &unk_1004CF400);
            *(v126 + 83) = v144;
            v145 = v271;
            _os_log_impl(&_mh_execute_header, v271, v253, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs %{public}s to be missing locally. (%ld locally, %ld on server)", v126, 0x5Bu);
            swift_arrayDestroy();
            v105 = v274;

            v106 = *(v282 + 8);
            v107 = v247;
          }

          else
          {
            sub_100025F40(v123, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v250, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v122, &unk_1005D91B0, &unk_1004CF400);
            sub_10006F72C(v121, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v248, &unk_1005D91B0, &unk_1004CF400);
            sub_10006F72C(v120, type metadata accessor for MailboxTaskLogger);
            v106 = *(v282 + 8);
            v107 = v117;
          }

          v108 = v119;
          goto LABEL_18;
        }

LABEL_50:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  (*(v282 + 16))(v271, v281, v280);
  sub_10006F6C4(v89, v270, type metadata accessor for MailboxTaskLogger);
  v90 = v253;
  sub_10006F6C4(v89, v253, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(a4, v82, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(a1, v79, &unk_1005D91B0, &unk_1004CF400);
  v91 = sub_1004A4A54();
  v92 = sub_1004A6034();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v285 = v251;
    *v93 = 68159747;
    *(v93 + 4) = 2;
    *(v93 + 8) = 256;
    v94 = v259;
    v95 = v90 + *(v259 + 20);
    *(v93 + 10) = *v95;
    *(v93 + 11) = 2082;
    v96 = v270;
    v97 = &v270[*(v94 + 20)];
    *(v93 + 13) = sub_10015BA6C(*(v97 + 1), *(v97 + 2), &v285);
    *(v93 + 21) = 1040;
    *(v93 + 23) = 2;
    *(v93 + 27) = 512;
    LOWORD(v95) = *(v95 + 12);
    sub_10006F72C(v90, type metadata accessor for MailboxTaskLogger);
    *(v93 + 29) = v95;
    *(v93 + 31) = 2160;
    *(v93 + 33) = 0x786F626C69616DLL;
    *(v93 + 41) = 2085;
    v98 = *(v97 + 4);
    v99 = *(v97 + 10);

    sub_10006F72C(v96, type metadata accessor for MailboxTaskLogger);
    v283 = v98;
    v284 = v99;
    v100 = sub_1004A5824();
    v102 = sub_10015BA6C(v100, v101, &v285);

    *(v93 + 43) = v102;
    *(v93 + 51) = 2048;
    v103 = MessageIdentifierSet.count.getter();
    sub_100025F40(v82, &unk_1005D91B0, &unk_1004CF400);
    *(v93 + 53) = v103;
    *(v93 + 61) = 2048;
    v104 = MessageIdentifierSet.count.getter();
    v105 = v274;
    sub_100025F40(v79, &unk_1005D91B0, &unk_1004CF400);
    *(v93 + 63) = v104;
    _os_log_impl(&_mh_execute_header, v91, v92, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found no UIDs to be missing locally. (%ld locally, %ld on server)", v93, 0x47u);
    swift_arrayDestroy();

    v106 = *(v282 + 8);
    v107 = v271;
    v108 = v280;
LABEL_18:
    v253 = v106;
    (v106)(v107, v108);
    goto LABEL_19;
  }

  v105 = a4;
  sub_100025F40(v79, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v82, &unk_1005D91B0, &unk_1004CF400);
  sub_10006F72C(v90, type metadata accessor for MailboxTaskLogger);

  v253 = *(v282 + 8);
  (v253)(v271, v280);
  sub_10006F72C(v270, type metadata accessor for MailboxTaskLogger);
LABEL_19:
  v171 = v269;
  v155 = v264;
LABEL_22:
  v172 = v268;
  v264 = a16;
  if ((v171 & 0x10000000000) != 0)
  {
    LODWORD(v270) = 0;
    v271 = 1;
  }

  else
  {
    v271 = HIDWORD(v171) & 1;
    if (v252)
    {
      v173 = v245;
      MessageIdentifierSet.ranges.getter(v245);
      v174 = sub_1000E4C0C();
      v176 = v175;
      sub_100025F40(v173, &qword_1005CD7A0, &unk_1004CF590);
      if (v176)
      {
        if ((v171 & &_mh_execute_header) != 0)
        {
          LODWORD(v177) = 0;
        }

        else
        {
          LODWORD(v177) = v171;
        }
      }

      else
      {
        v271 = 0;
        v177 = HIDWORD(v174);
        if (v171 <= HIDWORD(v174))
        {
          v178 = HIDWORD(v174);
        }

        else
        {
          v178 = v171;
        }

        if ((v171 & &_mh_execute_header) == 0)
        {
          LODWORD(v177) = v178;
        }
      }

      LODWORD(v270) = v177;
    }

    else
    {
      LODWORD(v270) = v171;
    }
  }

  MessageIdentifierSet.ranges.getter(v172);
  v179 = sub_1000E4C0C();
  v181 = v180;
  sub_100025F40(v172, &qword_1005CD7A0, &unk_1004CF590);
  v182 = HIDWORD(v179);
  if (v181)
  {
    LODWORD(v182) = 0;
  }

  LODWORD(v268) = v182;
  v183 = HIDWORD(v155);
  if (v278)
  {
    LODWORD(v183) = 0;
  }

  LODWORD(v269) = v183;
  v184 = v263;
  v185 = v275;
  MessageIdentifierSet.ranges.getter(v263);
  v186 = sub_1000E4C0C();
  v187 = v105;
  v189 = v188;
  sub_100025F40(v184, &qword_1005CD7A0, &unk_1004CF590);
  v190 = HIDWORD(v186);
  LOBYTE(v283) = v189 & 1;
  if (v189)
  {
    v190 = 0;
  }

  LOBYTE(v283) = BYTE5(v171) & 1;
  LOBYTE(v285) = a11 & 1;
  v191 = v276;
  sub_10007AA20(v190 | ((v189 & 1) << 32), v265 | ((HIDWORD(v265) & 1) << 32), v266, a10 | ((a11 & 1) << 32), v276);

  v192 = v264;
  if (v264)
  {
    LODWORD(v266) = v181;
    v193 = v255;
    v194 = *(v255 + 48);
    LOBYTE(v283) = a15 & 1;
    v195 = v256;
    sub_1000769D4(a12, a13 & 0xFFFFFFFF00000101, a14 | ((a15 & 1) << 32), v264);
    LOBYTE(v283) = a15 & 1;
    sub_1000787AC(v192, v195 + v194);

    v196 = *(v193 + 48);
    v197 = v273;
    sub_100025FDC(v195, v273, &unk_1005D91B0, &unk_1004CF400);
    v198 = v262;
    sub_1000738FC(v195 + v196, v262, _s15MissingMessagesO11QueriedUIDsVMa);
    v199 = v281;
    v200 = v260;
    (*(v282 + 16))(v260, v281, v280);
    sub_10006F6C4(v199, v272, type metadata accessor for MailboxTaskLogger);
    v201 = v258;
    v202 = v198;
    sub_10006F6C4(v199, v258, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v203 = v254;
    sub_10000E268(v197, v254, &unk_1005D91B0, &unk_1004CF400);
    v204 = v257;
    sub_10000E268(v197, v257, &unk_1005D91B0, &unk_1004CF400);
    v205 = v261;
    sub_10006F6C4(v202, v261, _s15MissingMessagesO11QueriedUIDsVMa);
    v206 = sub_1004A4A54();
    v207 = sub_1004A6034();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v285 = v265;
      *v208 = 68160003;
      *(v208 + 4) = 2;
      *(v208 + 8) = 256;
      v209 = v259;
      v210 = v201;
      v211 = v201 + *(v259 + 20);
      *(v208 + 10) = *v211;
      *(v208 + 11) = 2082;
      v212 = v272;
      v213 = v272 + *(v209 + 20);
      *(v208 + 13) = sub_10015BA6C(*(v213 + 8), *(v213 + 16), &v285);
      *(v208 + 21) = 1040;
      *(v208 + 23) = 2;
      *(v208 + 27) = 512;
      LOWORD(v211) = *(v211 + 24);
      sub_10006F72C(v210, type metadata accessor for MailboxTaskLogger);
      *(v208 + 29) = v211;
      *(v208 + 31) = 2160;
      *(v208 + 33) = 0x786F626C69616DLL;
      *(v208 + 41) = 2085;
      v214 = *(v213 + 32);
      LODWORD(v213) = *(v213 + 40);

      sub_10006F72C(v212, type metadata accessor for MailboxTaskLogger);
      v283 = v214;
      v284 = v213;
      v215 = sub_1004A5824();
      v217 = sub_10015BA6C(v215, v216, &v285);

      *(v208 + 43) = v217;
      *(v208 + 51) = 2048;
      v218 = MessageIdentifierSet.count.getter();
      sub_100025F40(v203, &unk_1005D91B0, &unk_1004CF400);
      *(v208 + 53) = v218;
      *(v208 + 61) = 2082;
      v219 = MessageIdentifierSet.debugDescription.getter();
      v221 = v220;
      sub_100025F40(v204, &unk_1005D91B0, &unk_1004CF400);
      v222 = sub_10015BA6C(v219, v221, &v285);
      v223 = v262;

      *(v208 + 63) = v222;
      *(v208 + 71) = 2082;
      v224 = v261;
      v225 = MessageIdentifierSet.debugDescription.getter();
      v227 = v226;
      sub_10006F72C(v224, _s15MissingMessagesO11QueriedUIDsVMa);
      v228 = sub_10015BA6C(v225, v227, &v285);

      *(v208 + 73) = v228;
      _os_log_impl(&_mh_execute_header, v206, v207, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld UIDs for temporarily growing window-of-interest: %{public}s (did query %{public}s).", v208, 0x51u);
      swift_arrayDestroy();

      (*(v282 + 8))(v260, v280);
    }

    else
    {
      v223 = v202;
      sub_100025F40(v203, &unk_1005D91B0, &unk_1004CF400);
      sub_10006F72C(v201, type metadata accessor for MailboxTaskLogger);

      sub_10006F72C(v205, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_100025F40(v204, &unk_1005D91B0, &unk_1004CF400);
      (v253)(v200, v280);
      sub_10006F72C(v272, type metadata accessor for MailboxTaskLogger);
    }

    v232 = v267;
    v233 = v273;
    v234 = v275;
    MessageIdentifierSet.union(_:)(v273, v267);
    v235 = _s15MissingMessagesO10NewMissingVMa(0);
    v236 = v276;
    MessageIdentifierSet.union(_:)(v223, v232 + *(v235 + 24));
    sub_10006F72C(v281, type metadata accessor for MailboxTaskLogger);
    sub_100025F40(v274, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v277, &unk_1005D91B0, &unk_1004CF400);
    sub_10006F72C(v223, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_100025F40(v233, &unk_1005D91B0, &unk_1004CF400);
    sub_10006F72C(v236, _s15MissingMessagesO11QueriedUIDsVMa);
    result = sub_100025F40(v234, &unk_1005D91B0, &unk_1004CF400);
    v237 = v232 + *(v235 + 20);
    *v237 = v268;
    *(v237 + 4) = v266 & 1;
    *(v237 + 8) = v269;
    *(v237 + 12) = v278 & 1;
    *(v237 + 16) = v270;
    *(v237 + 20) = v271;
  }

  else
  {
    sub_10006F72C(v281, type metadata accessor for MailboxTaskLogger);
    sub_100025F40(v187, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v277, &unk_1005D91B0, &unk_1004CF400);
    v229 = v267;
    sub_100025FDC(v185, v267, &unk_1005D91B0, &unk_1004CF400);
    v230 = _s15MissingMessagesO10NewMissingVMa(0);
    v231 = v229 + *(v230 + 20);
    *v231 = v268;
    *(v231 + 4) = v181 & 1;
    *(v231 + 8) = v269;
    *(v231 + 12) = v278 & 1;
    *(v231 + 16) = v270;
    *(v231 + 20) = v271;
    return sub_1000738FC(v191, v229 + *(v230 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
  }

  return result;
}

uint64_t sub_10006EC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  __chkstk_darwin(Missing);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10000C9C0(&qword_1005CEA00, &unk_1004D14A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v17 = &v22 + *(v16 + 56) - v14;
  sub_10006F6C4(a1, &v22 - v14, type metadata accessor for FindMissingMessages.CommandID);
  sub_10006F6C4(a2, v17, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10006F6C4(v15, v12, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100025FDC(v17, v6, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v20 = sub_1004A7034();
      sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v12, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10006F72C(v15, type metadata accessor for FindMissingMessages.CommandID);
      return v20 & 1;
    }

    sub_100025F40(v12, &qword_1005CD1D0, &unk_1004CF2C0);
    goto LABEL_10;
  }

  sub_10006F6C4(v15, v9, type metadata accessor for FindMissingMessages.CommandID);
  v18 = *v9;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_100025F40(v15, &qword_1005CEA00, &unk_1004D14A0);
    goto LABEL_11;
  }

  v19 = v17[8];
  if ((v9[8] & 1) == 0)
  {
    if (v18 != *v17)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_7;
    }

LABEL_16:
    sub_10006F72C(v15, type metadata accessor for FindMissingMessages.CommandID);
    v20 = 1;
    return v20 & 1;
  }

  if (v18 != *v17)
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_10006F72C(v15, type metadata accessor for FindMissingMessages.CommandID);
LABEL_11:
  v20 = 0;
  return v20 & 1;
}

BOOL sub_10006EF68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  if ((sub_1000E8460(a1 + Missing[6], a2 + Missing[6]) & 1) == 0 || *(a1 + Missing[7]) != *(a2 + Missing[7]))
  {
    return 0;
  }

  v7 = Missing[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v8)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = Missing[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 4);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 4);
  if ((v14 & 1) == 0)
  {
    if (*v15 != *v13)
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v16 & 1) != 0;
}

uint64_t sub_10006F088(int a1, uint64_t a2)
{
  v2 = (a2 + 32);
  v3 = *(a2 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 4;
    v5 = *v2;
    v2 += 4;
    if (v5 == a1)
    {
      return *(v4 - 1);
    }
  }

  return 0;
}

uint64_t sub_10006F0DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MessageBatches(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10006F220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MessageBatches(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006F370(uint64_t a1)
{
  sub_100073D3C(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      sub_1000576D4(319, &qword_1005CE428, &type metadata for FetchedWindow);
      if (v3 <= 0x3F)
      {
        sub_1000576D4(319, &qword_1005CE8C8, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          sub_100073D3C(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v5 <= 0x3F)
          {
            sub_1000576D4(319, &unk_1005CE8D0, &_s20GrowWindowOfInterestVN);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10006F548()
{
  result = qword_1005CE938;
  if (!qword_1005CE938)
  {
    result = swift_getWitnessTable(byte_1004D1470, &type metadata for FindMissingMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005CE938);
  }

  return result;
}

uint64_t sub_10006F604(uint64_t a1)
{
  result = sub_10006F65C(&qword_1005CE9F8, type metadata accessor for FindMissingMessages, byte_1004D1404);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10006F65C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006F6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006F72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006F7A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 56;
    do
    {
      v6 = (v5 + 32 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (v8 != 1)
        {
          break;
        }

        if (v3)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v7;
        v6 += 32;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3)
      {
        goto LABEL_5;
      }

LABEL_10:
      v9 = *(v6 - 6);
      v11 = *(v6 - 2);
      v10 = *(v6 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v10;
      if ((result & 1) == 0)
      {
        result = sub_100091D08(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091D08((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[4 * v13];
      *(v14 + 8) = v9;
      v14[5] = v11;
      v14[6] = v20;
      *(v14 + 56) = v8;
    }

    while (v4 != v2);
  }

LABEL_15:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100091A28(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 4;
    do
    {
      v18 = _swiftEmptyArrayStorage[v17];
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091A28((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      v17 += 4;
      ++v16;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006F998(int a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for DownloadTask.CommandID(0);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  __chkstk_darwin(v6);
  v38 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v37 = &v32 - v9;
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v14 = *(a2 + 16);
  v15 = _swiftEmptyArrayStorage;
  v32 = v11;
  if (v14)
  {
    v16 = *(v11 + 72);
    v34 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v35 = v6;
    v17 = a2 + v34;
    v18 = v33;
    v36 = v3;
    do
    {
      sub_10000E268(v17, v13, &qword_1005CEA38, &qword_1004D14F0);
      sub_10006F6C4(&v13[*(v6 + 52)], v5, type metadata accessor for DownloadTask.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          if (v18 == 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_10006F72C(v5, type metadata accessor for DownloadTask.CommandID);
          if (v18 == 3)
          {
LABEL_14:
            sub_100025FDC(v13, v37, &qword_1005CEA38, &qword_1004D14F0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100091DC8(0, v15[2] + 1, 1);
              v18 = v33;
              v15 = v39;
            }

            v22 = v15[2];
            v21 = v15[3];
            if (v22 >= v21 >> 1)
            {
              sub_100091DC8((v21 > 1), v22 + 1, 1);
              v18 = v33;
              v15 = v39;
            }

            v15[2] = v22 + 1;
            sub_100025FDC(v37, v15 + v34 + v22 * v16, &qword_1005CEA38, &qword_1004D14F0);
            v6 = v35;
            goto LABEL_5;
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_10006F72C(v5, type metadata accessor for DownloadTask.CommandID);
        if (v18 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_10006F72C(v5, type metadata accessor for DownloadTask.CommandID);
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      sub_100025F40(v13, &qword_1005CEA38, &qword_1004D14F0);
LABEL_5:
      v17 += v16;
      --v14;
    }

    while (v14);
  }

  v23 = v15[2];
  if (v23)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v23, 0);
    v24 = v39;
    v25 = v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v26 = *(v32 + 72);
    do
    {
      v27 = v38;
      sub_10000E268(v25, v38, &qword_1005CEA38, &qword_1004D14F0);
      v28 = *v27;
      sub_100025F40(v27, &qword_1005CEA38, &qword_1004D14F0);
      v39 = v24;
      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        sub_100091A28((v29 > 1), v30 + 1, 1);
        v24 = v39;
      }

      v24[2] = v30 + 1;
      *(v24 + v30 + 8) = v28;
      v25 += v26;
      --v23;
    }

    while (v23);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v24;
}

uint64_t sub_10006FE14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v41 = a2;
  v49 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v39 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v39 - v15;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  result = sub_10001F708(a1 | ((HIDWORD(a1) & 1) << 32), a4);
  v45 = *(result + 16);
  if (v45)
  {
    v46 = v8;
    v47 = result;
    v40 = v6;
    v23 = 0;
    v43 = result + 32;
    do
    {
      if (v23 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v51 = v23;
      v24 = *(v50 + 16);
      if (!v24)
      {
        goto LABEL_3;
      }

      v52 = *(v43 + 4 * v51);
      v25 = v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v26 = *(v44 + 72);
      v27 = v25;
      v28 = v24;
      while (1)
      {
        sub_10006F6C4(v27, v21, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v21, v18, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v18, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v27 += v26;
        if (!--v28)
        {
          goto LABEL_3;
        }
      }

      v29 = *(v18 + 2);
      sub_100020EDC(*v18);
      if (v29 != v52)
      {
        goto LABEL_8;
      }

      v30 = v42;
      while (1)
      {
        sub_10006F6C4(v25, v30, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v30, v13, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v13, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v25 += v26;
        if (!--v24)
        {
LABEL_22:
          v38 = 1;
          goto LABEL_24;
        }
      }

      v31 = *(v13 + 2);
      sub_100020EDC(*v13);
      if (v31 != v52)
      {
        goto LABEL_13;
      }

      v32 = *(v41 + 16);
      if (v32)
      {
        v33 = v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v34 = *(v40 + 72);
        do
        {
          v35 = v48;
          sub_10006F6C4(v33, v48, type metadata accessor for TaskHistory.Running);
          v36 = v46;
          sub_1000738FC(v35, v46, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = *(v36 + 4);
            sub_100020EDC(*(v36 + 8));
            if (v37 == v52)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v36, type metadata accessor for TaskHistory.Running);
          }

          v33 += v34;
          --v32;
        }

        while (v32);
      }

LABEL_3:
      v23 = v51 + 1;
      result = v47;
    }

    while (v51 + 1 != v45);
  }

  v38 = 0;
LABEL_24:

  return v38;
}

uint64_t sub_100070294(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t))
{
  v55 = a4;
  v46 = a3;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v44 - v14;
  v15 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v47 = &v44 - v19;
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v44 - v25;
  result = (a6)(a1, a2 & 1, a5, v24);
  v50 = *(result + 16);
  if (v50)
  {
    v51 = v12;
    v52 = result;
    v45 = v10;
    v28 = 0;
    v48 = result + 32;
    do
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v56 = v28;
      v29 = *(v55 + 16);
      if (!v29)
      {
        goto LABEL_3;
      }

      v57 = *(v48 + 4 * v56);
      v30 = v55 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v31 = *(v49 + 72);
      v32 = v30;
      v33 = v29;
      while (1)
      {
        sub_10006F6C4(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v26, v22, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v22, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = *(v22 + 2);
      sub_100020EDC(*v22);
      if (v34 != v57)
      {
        goto LABEL_8;
      }

      v35 = v47;
      while (1)
      {
        sub_10006F6C4(v30, v35, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v35, v17, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v17, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v30 += v31;
        if (!--v29)
        {
LABEL_22:
          v43 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v17 + 2);
      sub_100020EDC(*v17);
      if (v36 != v57)
      {
        goto LABEL_13;
      }

      v37 = *(v46 + 16);
      if (v37)
      {
        v38 = v46 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v53;
          sub_10006F6C4(v38, v53, type metadata accessor for TaskHistory.Running);
          v41 = v51;
          sub_1000738FC(v40, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = *(v41 + 4);
            sub_100020EDC(*(v41 + 8));
            if (v42 == v57)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v41, type metadata accessor for TaskHistory.Running);
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v28 = v56 + 1;
      result = v52;
    }

    while (v56 + 1 != v50);
  }

  v43 = 0;
LABEL_24:

  return v43;
}

uint64_t sub_100070734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v50 = a2;
  v41 = a1;
  v49 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v39 - v9;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v42 = &v39 - v14;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v39 - v20;
  result = a4(a3, v19);
  v45 = *(result + 16);
  if (v45)
  {
    v40 = v6;
    v23 = 0;
    v43 = result + 32;
    v46 = result;
    do
    {
      if (v23 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v51 = v23;
      v24 = *(v50 + 16);
      if (!v24)
      {
        goto LABEL_3;
      }

      v52 = *(v43 + 4 * v51);
      v25 = v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v26 = *(v44 + 72);
      v27 = v25;
      v28 = v24;
      while (1)
      {
        sub_10006F6C4(v27, v21, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v21, v17, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v17, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v27 += v26;
        if (!--v28)
        {
          goto LABEL_3;
        }
      }

      v29 = *(v17 + 2);
      sub_100020EDC(*v17);
      if (v29 != v52)
      {
        goto LABEL_8;
      }

      v30 = v42;
      while (1)
      {
        sub_10006F6C4(v25, v30, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v30, v12, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v12, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v25 += v26;
        if (!--v24)
        {
LABEL_22:
          v38 = 1;
          goto LABEL_24;
        }
      }

      v31 = *(v12 + 2);
      sub_100020EDC(*v12);
      if (v31 != v52)
      {
        goto LABEL_13;
      }

      v32 = *(v41 + 16);
      if (v32)
      {
        v33 = v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v34 = *(v40 + 72);
        do
        {
          v35 = v47;
          sub_10006F6C4(v33, v47, type metadata accessor for TaskHistory.Running);
          v36 = v48;
          sub_1000738FC(v35, v48, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = *(v36 + 4);
            sub_100020EDC(*(v36 + 8));
            if (v37 == v52)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v36, type metadata accessor for TaskHistory.Running);
          }

          v33 += v34;
          --v32;
        }

        while (v32);
      }

LABEL_3:
      v23 = v51 + 1;
      result = v46;
    }

    while (v51 + 1 != v45);
  }

  v38 = 0;
LABEL_24:

  return v38;
}

void *sub_100070BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v42 = a3;
  v50 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v40 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v43 = &v40 - v16;
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  result = sub_10001FE00(a1, a2, a5);
  v46 = result[2];
  if (v46)
  {
    v41 = v8;
    v24 = 0;
    v44 = result + 4;
    v47 = result;
    do
    {
      if (v24 >= result[2])
      {
        __break(1u);
        return result;
      }

      v52 = v24;
      v25 = *(v51 + 16);
      if (!v25)
      {
        goto LABEL_3;
      }

      v53 = *(v44 + v52);
      v26 = v51 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v27 = *(v45 + 72);
      v28 = v26;
      v29 = v25;
      while (1)
      {
        sub_10006F6C4(v28, v22, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v22, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v28 += v27;
        if (!--v29)
        {
          goto LABEL_3;
        }
      }

      v30 = *(v19 + 2);
      sub_100020EDC(*v19);
      if (v30 != v53)
      {
        goto LABEL_8;
      }

      v31 = v43;
      while (1)
      {
        sub_10006F6C4(v26, v31, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v31, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v26 += v27;
        if (!--v25)
        {
LABEL_22:
          v39 = 1;
          goto LABEL_24;
        }
      }

      v32 = *(v14 + 2);
      sub_100020EDC(*v14);
      if (v32 != v53)
      {
        goto LABEL_13;
      }

      v33 = *(v42 + 16);
      if (v33)
      {
        v34 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v35 = *(v41 + 72);
        do
        {
          v36 = v48;
          sub_10006F6C4(v34, v48, type metadata accessor for TaskHistory.Running);
          v37 = v49;
          sub_1000738FC(v36, v49, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v38 = *(v37 + 4);
            sub_100020EDC(*(v37 + 8));
            if (v38 == v53)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v37, type metadata accessor for TaskHistory.Running);
          }

          v34 += v35;
          --v33;
        }

        while (v33);
      }

LABEL_3:
      v24 = v52 + 1;
      result = v47;
    }

    while (v52 + 1 != v46);
  }

  v39 = 0;
LABEL_24:

  return v39;
}

void *sub_10007105C(int a1, uint64_t a2)
{
  v44 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  __chkstk_darwin(Missing);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  __chkstk_darwin(v6);
  v43 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = *(a2 + 16);
  v17 = _swiftEmptyArrayStorage;
  v39 = v13;
  if (v16)
  {
    v18 = *(v13 + 72);
    v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v41 = v12;
    v19 = a2 + v40;
    v42 = Missing;
    v20 = v12;
    do
    {
      sub_10000E268(v19, v15, &qword_1005CEA18, &qword_1004D14D0);
      sub_10006F6C4(&v15[*(v20 + 52)], v5, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v44 != 2 && ((v5[8] ^ v44) & 1) == 0)
        {
LABEL_11:
          sub_100025FDC(v15, v10, &qword_1005CEA18, &qword_1004D14D0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100091F48(0, v17[2] + 1, 1);
            v17 = v45;
          }

          v28 = v17[2];
          v27 = v17[3];
          if (v28 >= v27 >> 1)
          {
            sub_100091F48((v27 > 1), v28 + 1, 1);
            v17 = v45;
          }

          v17[2] = v28 + 1;
          sub_100025FDC(v10, v17 + v40 + v28 * v18, &qword_1005CEA18, &qword_1004D14D0);
          v20 = v41;
          Missing = v42;
          goto LABEL_4;
        }
      }

      else
      {
        v21 = Missing;
        v22 = v18;
        v23 = v10;
        v24 = v44;
        sub_10006F72C(v5, type metadata accessor for FindMissingMessages.CommandID);
        v25 = v24 == 2;
        v10 = v23;
        v18 = v22;
        Missing = v21;
        if (v25)
        {
          goto LABEL_11;
        }
      }

      sub_100025F40(v15, &qword_1005CEA18, &qword_1004D14D0);
LABEL_4:
      v19 += v18;
      --v16;
    }

    while (v16);
  }

  v29 = v17[2];
  if (v29)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v29, 0);
    v30 = v45;
    v31 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v32 = *(v39 + 72);
    do
    {
      v33 = v43;
      sub_10000E268(v31, v43, &qword_1005CEA18, &qword_1004D14D0);
      v34 = *v33;
      sub_100025F40(v33, &qword_1005CEA18, &qword_1004D14D0);
      v45 = v30;
      v36 = v30[2];
      v35 = v30[3];
      if (v36 >= v35 >> 1)
      {
        sub_100091A28((v35 > 1), v36 + 1, 1);
        v30 = v45;
      }

      v30[2] = v36 + 1;
      *(v30 + v36 + 8) = v34;
      v31 += v32;
      --v29;
    }

    while (v29);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v30;
}

uint64_t sub_100071488(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    while (1)
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v8 = *(v6 - 4);
        result = *(v6 - 1);
        v9 = *v6;
        v10 = *v6 >> 60;
        if (v10 != 11)
        {
          break;
        }

        if (v3 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        result = sub_100073A18(result, v9);
LABEL_6:
        ++v7;
        v6 += 3;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      if (v10 == 15)
      {
        break;
      }

      if (v3 != 1)
      {
        goto LABEL_6;
      }

LABEL_14:
      v11 = *(v6 - 1);
      v12 = *v6;
      sub_100073A30(result, v9);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((result & 1) == 0)
      {
        result = sub_100092188(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v12;
      v16 = v11;
      if (v14 >= v13 >> 1)
      {
        result = sub_100092188((v13 > 1), v14 + 1, 1);
        v16 = v11;
        v15 = v12;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v14];
      *(v17 + 8) = v8;
      v17[5] = v16;
      v17[6] = v15;
      v5 = v23;
      if (v4 == v2)
      {
        goto LABEL_19;
      }
    }

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

LABEL_19:
  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_100091A28(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 4;
    do
    {
      v21 = _swiftEmptyArrayStorage[v20];
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_100091A28((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      v20 += 3;
      ++v19;
      --v18;
    }

    while (v18);
  }

  return _swiftEmptyArrayStorage;
}