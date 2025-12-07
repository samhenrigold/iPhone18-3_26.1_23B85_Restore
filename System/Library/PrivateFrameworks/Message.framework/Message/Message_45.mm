void *sub_1B0ADA33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v22 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = 1;
  if (sub_1B0AEB5AC(0x100000000uLL, a1, a2, a4) & 1) != 0 || (sub_1B0AD4EE4(a1, a2, a3) & 1) != 0 || (v25 = 1, (sub_1B0AEB5AC(0x100000001uLL, a1, a2, a4)))
  {
    v14 = *(v22 + 56);

    return v14(a5, 1, 1, SearchResult);
  }

  else
  {
    result = sub_1B0ADA5B0(&v24);
    v16 = v24;
    v17 = *(v24 + 16);
    if (v17)
    {
      v18 = 0;
      while (v18 < *(v16 + 16))
      {
        sub_1B0ADE3A0(v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        v19 = *v13;
        v23 = 0;
        if ((sub_1B0A9ECD4(v19, a2, a4, v20) & 1) == 0)
        {

          sub_1B0ADE4D8(v13, a5, type metadata accessor for FetchSearchResultMessages.Requests.Search);
          v21 = 0;
          return (*(v22 + 56))(a5, v21, 1, SearchResult);
        }

        ++v18;
        result = sub_1B0ADE408(v13, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        if (v17 == v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:

      v21 = 1;
      return (*(v22 + 56))(a5, v21, 1, SearchResult);
    }
  }

  return result;
}

uint64_t sub_1B0ADA5B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B0ADE3A0(v1 + *(SearchResultMessages + 48), v14, type metadata accessor for FetchSearchResultMessages.Requests);
  sub_1B03B5C80(v1 + *(SearchResultMessages + 52), v5, &qword_1EB6E41C0, &unk_1B0EC4330);
  v16 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_1B0398EFC(v5, &qword_1EB6E41C0, &unk_1B0EC4330);
    v17 = 1;
  }

  else
  {
    sub_1B03B5C80(&v5[*(v16 + 20)], v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v5, type metadata accessor for NewServerMessages);
    v17 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);
  sub_1B0AD8284(v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v20 = (*(*(v19 - 8) + 48))(v8, 1, v19);
  v21 = sub_1B0398EFC(v8, &unk_1EB6E3670, &unk_1B0E9B260);
  v22 = *v14;
  if (v20 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    *&v25[-16] = v14;
    *&v25[-8] = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B15500(sub_1B0ADF228, &v25[-32], v22);
    v22 = v23;
  }

  *a1 = v22;
  sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
  return sub_1B0ADE408(v14, type metadata accessor for FetchSearchResultMessages.Requests);
}

void sub_1B0ADA958(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  if ((a1 & 0x1FFFFFFFFLL) == 0x100000000)
  {
    v9 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    v10 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
    v15 = v9;
    sub_1B03B5C80(v9 + v10, v8, &qword_1EB6E3920, &qword_1B0E9B070);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v13 == 1)
    {
      sub_1B03D06F8();
      sub_1B0E46EE8();
      (*(v12 + 56))(v5, 0, 1, v11);
      sub_1B0ADE468(v5, v15 + v10);
    }
  }
}

uint64_t sub_1B0ADAB2C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v10 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0ADA5B0(&v26);
  v25 = MEMORY[0x1E69E7CD0];
  v13 = *(v26 + 16);
  if (v13)
  {
    v14 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    do
    {
      sub_1B0ADE3A0(v14, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      sub_1B0B01B88(&v24, *v12);
      sub_1B0ADE408(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v14 += v15;
      --v13;
    }

    while (v13);

    v16 = v25;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CD0];
  }

  v17 = v2[2];
  v18 = v2[3];
  sub_1B0B25834(v16, v17, v18);

  sub_1B0ADADD8(v8);
  sub_1B0ADB1D0(v5);
  sub_1B0B259F0(v17, v18, v8, v5);
  sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2[5]);
  v19 = v23;
  *(&v23 - 2) = v2;
  *(&v23 - 1) = v19;
  return sub_1B0B86564(v20, v21, sub_1B0ADF214, (&v23 - 4));
}

uint64_t sub_1B0ADADD8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v18 = v1 + *(SearchResultMessages + 48);
  v19 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_1B03B5C80(v18 + v19 + *(MessagesVMa + 20), v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v1 + *(SearchResultMessages + 52), v6, &qword_1EB6E41C0, &unk_1B0EC4330);
  v21 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
  {
    sub_1B0398EFC(v6, &qword_1EB6E41C0, &unk_1B0EC4330);
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v22 = v24;
    sub_1B03B5C80(&v6[*(v21 + 20)], v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v6, type metadata accessor for NewServerMessages);
    sub_1B03C60A4(v22, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1B03C60A4(v9, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.union(_:)(v13, v25);
  sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0ADB1D0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = v1 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v17 = *(SearchResult + 20);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  sub_1B03B5C80(v15 + v17 + *(MessagesVMa + 24), v7, &qword_1EB6E3920, &qword_1B0E9B070);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v19(v7, 1, v8) != 1)
    {
      sub_1B0398EFC(v7, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v7, v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  sub_1B03B5C80(v15 + *(SearchResult + 28), v4, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v19(v4, 1, v8) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v19(v4, 1, v8) != 1)
    {
      sub_1B0398EFC(v4, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v4, v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.union(_:)(v11, v22);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0ADB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41C0, &unk_1B0EC4330);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  sub_1B03B5C80(a3 + *(SearchResultMessages + 52), v10, &qword_1EB6E41C0, &unk_1B0EC4330);
  v15 = type metadata accessor for NewServerMessages(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E41C0, &unk_1B0EC4330);
    v16 = 1;
  }

  else
  {
    sub_1B03B5C80(&v10[*(v15 + 20)], v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0ADE408(v10, type metadata accessor for NewServerMessages);
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v17 - 8) + 56))(v13, v16, 1, v17);
  sub_1B0AD6808(a1, a2 & 0x101010101FFFF01, v13, (a3 + *(SearchResultMessages + 28)), a4);
  return sub_1B0398EFC(v13, &unk_1EB6E3670, &unk_1B0E9B260);
}

double sub_1B0ADB748()
{
  if (qword_1EB6DD598 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0ADB7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0AD91CC(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_1B0ADB848@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19UserInitiatedSearchVMa(0);
  sub_1B0ADE3A0(a1 + *(v10 + 20), v6, _s19UserInitiatedSearchV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0ADE4D8(v6, v9, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v11 = *a1;
    SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    sub_1B0ADE4D8(v9, a2 + *(SearchResult + 20), _s19UserInitiatedSearchV13FetchMessagesVMa);
    *a2 = v11;
    return (*(*(SearchResult - 8) + 56))(a2, 0, 1, SearchResult);
  }

  else
  {
    sub_1B0ADE408(v6, _s19UserInitiatedSearchV5StateOMa);
    v14 = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_1B0ADBA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v152 = &v143 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v199 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v143 - v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v143 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v143 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v179 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v143 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v159 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v143 - v19;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v184 = *(MessagesVMa - 8);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v200 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = _s19UserInitiatedSearchVMa(0);
  v22 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v167 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D8, &unk_1B0EC4300);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v195 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v143 - v27;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v196 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v161 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v190 = &v143 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E8, &qword_1B0EC4310);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v194 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v143 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v143 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D0, &unk_1B0EC42F0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v193 = &v143 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v145 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v158 = &v143 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v143 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v175 = &v143 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v174 = &v143 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v153 = &v143 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v172 = &v143 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v143 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v143 - v58;
  v61 = MEMORY[0x1EEE9AC00](v60);
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

    sub_1B0ADE3A0(v69 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v68, v191, _s19UserInitiatedSearchVMa);
    v77 = 0;
    v199 = v68 + 1;
LABEL_10:
    v79 = MessagesVMa;
    v80 = 1;
    v81 = v189;
    (*v186)(v76, v77, 1, v189);
    v82 = v76;
    v83 = v195;
    sub_1B03C60A4(v82, v195, &qword_1EB6E41D8, &unk_1B0EC4300);
    v84 = (*v185)(v83, 1, v81);
    v85 = v188;
    if (v84 != 1)
    {
      v86 = v167;
      sub_1B0ADE4D8(v195, v167, _s19UserInitiatedSearchVMa);
      v166(v86);
      sub_1B0ADE408(v86, _s19UserInitiatedSearchVMa);
      v80 = 0;
    }

    v87 = *v197;
    v88 = v80;
    v89 = v198;
    (*v197)(v85, v88, 1, v198);
    v90 = *v196;
    if ((*v196)(v85, 1, v89) == 1)
    {
      sub_1B0398EFC(v85, &qword_1EB6E41E8, &qword_1B0EC4310);
      v91 = 1;
    }

    else
    {
      sub_1B03C60A4(v85, v78, &qword_1EB6E41E0, &unk_1B0EC4580);
      v92 = v165(v78);
      if ((v92 & 1) == 0)
      {
        result = sub_1B0398EFC(v78, &qword_1EB6E41E0, &unk_1B0EC4580);
        MessagesVMa = v79;
        goto LABEL_4;
      }

      sub_1B03C60A4(v78, v187, &qword_1EB6E41E0, &unk_1B0EC4580);
      v91 = 0;
    }

    v93 = 1;
    v94 = v187;
    v95 = v198;
    v87(v187, v91, 1, v198);
    v96 = v194;
    sub_1B03C60A4(v94, v194, &qword_1EB6E41E8, &qword_1B0EC4310);
    if (v90(v96, 1, v95) != 1)
    {
      v97 = v161;
      sub_1B03C60A4(v194, v161, &qword_1EB6E41E0, &unk_1B0EC4580);
      v160(v97);
      sub_1B0398EFC(v97, &qword_1EB6E41E0, &unk_1B0EC4580);
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
      sub_1B0398EFC(&v201, &qword_1EB6E41F0, &qword_1B0EC4318);

      v122 = v153;
      sub_1B03B5C80(v63, v153, &qword_1EB6E3920, &qword_1B0E9B070);
      v123 = *v102;
      if ((*v102)(v122, 1, v179) == 1)
      {
        sub_1B0398EFC(v122, &qword_1EB6E3920, &qword_1B0E9B070);
        v124 = 1;
        v125 = v154;
        v126 = v183;
      }

      else
      {
        v127 = v147;
        sub_1B03C60A4(v122, v147, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v128 = v148;
        sub_1B03B5C80(v127, v148, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v129 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v127, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v129 <= 0)
        {
          sub_1B0398EFC(v128, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v133 = 1;
          v132 = v152;
        }

        else
        {
          v130 = v146;
          sub_1B03C60A4(v128, v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v131 = v130;
          v132 = v152;
          sub_1B03C60A4(v131, v152, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v133 = 0;
        }

        v134 = v151;
        v126 = v183;
        v135 = v149;
        v136 = v150;
        (*(v149 + 56))(v132, v133, 1, v150);
        if ((*(v135 + 48))(v132, 1, v136) == 1)
        {
          v137 = &unk_1EB6E3670;
          v138 = &unk_1B0E9B260;
          v139 = v132;
        }

        else
        {
          sub_1B03C60A4(v132, v134, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v140 = v145;
          sub_1B03B5C80(v126, v145, &qword_1EB6E3920, &qword_1B0E9B070);
          if (v123(v140, 1, v179) != 1)
          {
            v141 = v140;
            v142 = v144;
            sub_1B03C60A4(v141, v144, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v125 = v154;
            sub_1B03C60A4(v134, v154, &unk_1EB6E26C0, &unk_1B0E9DE10);
            sub_1B03C60A4(v142, v125 + *(v100 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03B5C80(v192, v125 + *(v100 + 24), &qword_1EB6E3920, &qword_1B0E9B070);
            v124 = 0;
            goto LABEL_47;
          }

          sub_1B0398EFC(v134, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v137 = &qword_1EB6E3920;
          v138 = &qword_1B0E9B070;
          v139 = v140;
        }

        sub_1B0398EFC(v139, v137, v138);
        v124 = 1;
        v125 = v154;
      }

LABEL_47:
      sub_1B0398EFC(v192, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0398EFC(v126, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0398EFC(v63, &qword_1EB6E3920, &qword_1B0E9B070);
      return v98(v125, v124, 1, v100);
    }

    v103 = v200;
    sub_1B0ADE4D8(v99, v200, _s19UserInitiatedSearchV13FetchMessagesVMa);
    v104 = v172;
    sub_1B03B5C80(v63, v172, &qword_1EB6E3920, &qword_1B0E9B070);
    v105 = *v102;
    v106 = v179;
    v107 = (*v102)(v104, 1, v179);
    sub_1B0398EFC(v104, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v107 == 1)
    {
      sub_1B0398EFC(v63, &qword_1EB6E3920, &qword_1B0E9B070);
      v108 = v163;
      sub_1B03B5C80(v103, v163, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v108, v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (v171)(v63, 0, 1, v106);
    }

    else if (!v105(v63, 1, v106))
    {
      v109 = v163;
      sub_1B03B5C80(v200, v163, &unk_1EB6E26C0, &unk_1B0E9DE10);
      (*v155)(v156, v109, v157);
      sub_1B0E46ED8();
      sub_1B0398EFC(v109, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v110 = v183;
    v111 = v174;
    sub_1B03B5C80(v183, v174, &qword_1EB6E3920, &qword_1B0E9B070);
    v112 = v105(v111, 1, v106);
    sub_1B0398EFC(v111, &qword_1EB6E3920, &qword_1B0E9B070);
    MessagesVMa = v173;
    if (v112 == 1)
    {
      sub_1B0398EFC(v110, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B03B5C80(v200 + *(MessagesVMa + 20), v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
        sub_1B0E46ED8();
      }
    }

    v116 = v175;
    sub_1B03B5C80(v114, v175, &qword_1EB6E3920, &qword_1B0E9B070);
    v117 = v105(v116, 1, v106);
    sub_1B0398EFC(v116, &qword_1EB6E3920, &qword_1B0E9B070);
    v118 = *(MessagesVMa + 24);
    v63 = v181;
    if (v117 == 1)
    {
      v74 = v200;
      v75 = v158;
      sub_1B03B5C80(v200 + v118, v158, &qword_1EB6E3920, &qword_1B0E9B070);
      sub_1B0ADE408(v74, _s19UserInitiatedSearchV13FetchMessagesVMa);
      result = sub_1B0ADE468(v75, v114);
    }

    else
    {
      v119 = v200;
      sub_1B03B5C80(v200 + v118, v113, &qword_1EB6E3920, &qword_1B0E9B070);
      if (v105(v113, 1, v106) == 1)
      {
        sub_1B0ADE408(v119, _s19UserInitiatedSearchV13FetchMessagesVMa);
        result = sub_1B0398EFC(v113, &qword_1EB6E3920, &qword_1B0E9B070);
      }

      else
      {
        sub_1B03C60A4(v113, v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v105(v192, 1, v106))
        {
          sub_1B0398EFC(v159, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v120 = v119;
        }

        else
        {
          v121 = v159;
          (*v155)(v156, v159, v157);
          sub_1B0E46ED8();
          sub_1B0398EFC(v121, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v120 = v200;
        }

        result = sub_1B0ADE408(v120, _s19UserInitiatedSearchV13FetchMessagesVMa);
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

uint64_t sub_1B0ADCFB0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MEMORY[0x1EEE9AC00](MessagesVMa - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  sub_1B0ADE3A0(a1 + *(SearchResult + 20), v14, _s19UserInitiatedSearchV13FetchMessagesVMa);
  v16 = type metadata accessor for FetchSearchResultMessages.Requests(0);
  sub_1B03B5C80(a2 + *(v16 + 28), v7, &qword_1EB6E3920, &qword_1B0E9B070);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1B0398EFC(v7, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03C60A4(v7, v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v18 = sub_1B0ADD260(v11, v21, *(a2 + *(v16 + 24)), *(a2 + *(v16 + 24) + 8));
  sub_1B0ADE408(v14, _s19UserInitiatedSearchV13FetchMessagesVMa);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v18 & 1;
}

uint64_t sub_1B0ADD260(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  v66 = a4;
  v54 = a3;
  v57 = a2;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v54 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v54 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v58 = &v54 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v62 = &v54 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v63 = &v54 - v38;
  sub_1B03B5C80(v5, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v39 = *(MessagesVMa + 20);
  v61 = v5;
  MessageIdentifierSet.subtracting(_:)(v5 + v39, v29);
  sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v57, v8, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1B0398EFC(v8, &unk_1EB6E3670, &unk_1B0E9B260);
    v40 = v56;
    v57 = *(v56 + 56);
    v57(v15, 1, 1, v20);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v40 + 48))(v15, 1, v20) != 1)
    {
      sub_1B0398EFC(v15, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03B5C80(v8, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v40 = v56;
    v57 = *(v56 + 56);
    v57(v15, 0, 1, v20);
    sub_1B03C60A4(v15, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  MessageIdentifierSet.subtracting(_:)(v26, v32);
  sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = v60;
  sub_1B03B5C80(v61 + *(MessagesVMa + 24), v60, &qword_1EB6E3920, &qword_1B0E9B070);
  v42 = *(v40 + 48);
  if (v42(v41, 1, v20) == 1)
  {
    sub_1B03D06F8();
    v43 = v59;
    sub_1B0E46EE8();
    v44 = v42(v41, 1, v20);
    v45 = v62;
    if (v44 != 1)
    {
      sub_1B0398EFC(v41, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v43 = v59;
    sub_1B03C60A4(v41, v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v45 = v62;
  }

  v46 = v58;
  MessageIdentifierSet.subtracting(_:)(v43, v58);
  sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.subtracting(_:)(v64, v45);
  sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v66)
  {
    v47 = v67;
    v57(v67, 1, 1, v20);
    sub_1B03D06F8();
    v48 = v65;
    sub_1B0E46EE8();
    if (v42(v47, 1, v20) != 1)
    {
      sub_1B0398EFC(v47, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    v69 = v54;
    v49 = sub_1B041C1E8();
    v68 = Range<>.init<A>(_:)(&v69, &type metadata for UID, v49);
    sub_1B03D06F8();
    v50 = v67;
    sub_1B0E46F08();
    v57(v50, 0, 1, v20);
    v48 = v65;
    sub_1B03C60A4(v50, v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v51 = v63;
  MessageIdentifierSet.subtracting(_:)(v48, v63);
  sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v52 = sub_1B0E46E98();
  sub_1B0398EFC(v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v52 & 1;
}

uint64_t sub_1B0ADDABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B03B5C80(a1, &v9 - v5, &qword_1EB6E41E0, &unk_1B0EC4580);
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  result = (*(*(SearchResult - 8) + 48))(v6, 1, SearchResult);
  if (result != 1)
  {
    return sub_1B0ADE4D8(v6, a2, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ADDBC4(uint64_t a1, void (*a2)(char *), double a3, uint64_t a4, uint64_t a5)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v9 = MEMORY[0x1EEE9AC00](SearchResult - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 40))(a1, v9);
  a2(v11);
  return sub_1B0ADE408(v11, type metadata accessor for FetchSearchResultMessages.Requests.Search);
}

BOOL sub_1B0ADDC98(_DWORD *a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for FetchSearchResultMessages.Requests.Search(0) + 20);
  v17 = a1 + v16;
  v18 = a2 + v16;
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v20 = *(MessagesVMa + 24);
  v21 = &v17[v20];
  v22 = *(v15 + 48);
  sub_1B03B5C80(v21, v14, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(&v18[v20], &v14[v22], &qword_1EB6E3920, &qword_1B0E9B070);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_1B0398EFC(v14, &qword_1EB6E3920, &qword_1B0E9B070);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1B03B5C80(v14, v10, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_9:
    sub_1B0398EFC(v14, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  sub_1B03C60A4(&v14[v22], v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v25 = sub_1B0E46E08();
  sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v14, &qword_1EB6E3920, &qword_1B0E9B070);
  return (v25 & 1) != 0;
}

BOOL sub_1B0ADE00C(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if ((sub_1B0B64774(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  if (!sub_1B0BC8548(a1 + SearchResult[5], a2 + SearchResult[5]))
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
  sub_1B03B5C80(v21, v13, &qword_1EB6E3920, &qword_1B0E9B070);
  sub_1B03B5C80(a2 + v20, &v13[v22], &qword_1EB6E3920, &qword_1B0E9B070);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_1B03B5C80(v13, v10, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v23(&v13[v22], 1, v4) != 1)
    {
      sub_1B03C60A4(&v13[v22], v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v25 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
      return (v25 & 1) != 0;
    }

    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_14:
    sub_1B0398EFC(v13, &qword_1EB6E41F8, &unk_1B0EC4440);
    return 0;
  }

  if (v23(&v13[v22], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1B0398EFC(v13, &qword_1EB6E3920, &qword_1B0E9B070);
  return 1;
}

uint64_t sub_1B0ADE3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ADE408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0ADE468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0ADE4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0ADE560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_1B0AD4EE4(a2, a3, a4);
  if (result)
  {
    sub_1B0ADE3A0(a1, v14, type metadata accessor for UntaggedResponse);
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
        sub_1B0B5F730(v23, v19, a6);
      }

      return sub_1B0AA4C0C(v23);
    }

    else
    {
      return sub_1B0ADE408(v14, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_1B0ADE70C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v33 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v38 = 1;
  result = sub_1B0AEB5AC(0x100000000uLL, a2, a3, a4);
  if (result)
  {
    v21 = v4;
    v22 = v4 + *(type metadata accessor for FetchSearchResultMessages(0) + 48);
    sub_1B0AD989C(v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v23 = &unk_1EB6E3670;
      v24 = &unk_1B0E9B260;
      v25 = v15;
    }

    else
    {
      sub_1B03C60A4(v15, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xA)
      {
        v26 = swift_projectBox();
        sub_1B03B5C80(v26, v10, &qword_1EB6E3628, &unk_1B0EA2080);
        v27 = *(v8 + 48);
        v28 = *(v8 + 64);
        if (*(v21 + 24) == v10[1])
        {
          v29 = sub_1B04520BC(*(v21 + 16), *v10);

          if (v29)
          {
            v30 = v36;
            sub_1B03C60A4(v10 + v27, v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03D06F8();
            v31 = sub_1B0E46E08();
            sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
            sub_1B0398EFC(v10 + v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
            if (v31)
            {
              v32 = *(type metadata accessor for FetchSearchResultMessages.Requests(0) + 28);
              sub_1B0398EFC(v22 + v32, &qword_1EB6E3920, &qword_1B0E9B070);
              sub_1B03C60A4(v30, v22 + v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              return (*(v34 + 56))(v22 + v32, 0, 1, v35);
            }

            v23 = &unk_1EB6E1AF0;
            v24 = &unk_1B0E9AF40;
            v25 = v30;
            return sub_1B0398EFC(v25, v23, v24);
          }
        }

        else
        {
        }

        sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v10 + v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v23 = &unk_1EB6E1AF0;
        v24 = &unk_1B0E9AF40;
        v25 = v10 + v27;
      }

      else
      {
        v23 = &unk_1EB6E26C0;
        v24 = &unk_1B0E9DE10;
        v25 = v19;
      }
    }

    return sub_1B0398EFC(v25, v23, v24);
  }

  return result;
}

BOOL sub_1B0ADEB60(uint64_t a1)
{
  v2 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19UserInitiatedSearchVMa(0);
  MEMORY[0x1EEE9AC00](v5);
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
    sub_1B0ADE3A0(v10, v8, _s19UserInitiatedSearchVMa);
    sub_1B0ADE4D8(&v8[*(v5 + 20)], v4, _s19UserInitiatedSearchV5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0ADE408(v4, _s19UserInitiatedSearchV5StateOMa);
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

uint64_t sub_1B0ADED3C(uint64_t a1)
{
  result = _s19UserInitiatedSearchV13FetchMessagesVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0ADEDE0(uint64_t a1)
{
  sub_1B0ADF084(319, &qword_1EB6DB470, type metadata accessor for FetchSearchResultMessages.Requests.Search, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    _s19UserInitiatedSearchV13FetchMessagesVMa(319);
    if (v2 <= 0x3F)
    {
      sub_1B0ADEEC4();
      if (v3 <= 0x3F)
      {
        sub_1B0AB44A4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0ADEEC4()
{
  if (!qword_1EB6DCC80)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCC80);
    }
  }
}

void sub_1B0ADEF5C(uint64_t a1)
{
  sub_1B0AA95BC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FetchSearchResultMessages.Requests(319);
      if (v3 <= 0x3F)
      {
        sub_1B0ADF084(319, &qword_1EB6DDAC8, type metadata accessor for NewServerMessages, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0ADF084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B0ADF0EC()
{
  result = qword_1EB6DD590;
  if (!qword_1EB6DD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD590);
  }

  return result;
}

unint64_t sub_1B0ADF140()
{
  result = qword_1EB6DD568;
  if (!qword_1EB6DD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD568);
  }

  return result;
}

unint64_t sub_1B0ADF194(uint64_t a1)
{
  result = sub_1B0ADF1BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0ADF1BC()
{
  result = qword_1EB6DD560;
  if (!qword_1EB6DD560)
  {
    type metadata accessor for FetchSearchResultMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD560);
  }

  return result;
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

uint64_t sub_1B0ADF2A4(uint64_t a1)
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

uint64_t sub_1B0ADF2C0(uint64_t result, int a2)
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

unint64_t sub_1B0ADF2F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (!sub_1B0B63BF8(*a1, *a2))
  {
    return 0;
  }

  sub_1B0B72F70(v2, v5);
  if (v8 & 1) == 0 || ((v3 ^ v6))
  {
    return 0;
  }

  return sub_1B0B732C0(v4, v7);
}

uint64_t sub_1B0ADF390(uint64_t a1, uint64_t a2)
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
  if (sub_1B03B5F54(v24, v25))
  {
    v18 = static RemoteMailbox.__derived_struct_equals(_:_:)(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

__n128 sub_1B0ADF46C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  *(&a1[1] + 8) = v3;
  return result;
}

uint64_t sub_1B0ADF490()
{
  sub_1B0AE15D8(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  v2 = v1;

  return v2;
}

uint64_t sub_1B0ADF500(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0) + 20));
  result = sub_1B03C60A4(v4, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
    sub_1B0AE27F4(v17, a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    a1 = (v23 + 48);
    v20 = 1;
    while (1)
    {
      sub_1B0B3FBB4(v10);
      if ((*a1)(v10, 1, v11) == 1)
      {
        break;
      }

      sub_1B03C60A4(v10, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v13, a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
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

    sub_1B0398EFC(v10, &unk_1EB6E3670, &unk_1B0E9B260);
    a3 = v20 - 1;
LABEL_12:
    a1 = v22;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0ADF790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
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
          v25 = sub_1B03AB888(v81, DWORD2(v81));
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
      sub_1B03A35B8(&v80, &v59);
      sub_1B03BB0B4(&v75, &v59);
      v31 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      v32 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      if (v31)
      {
        if ((v32 & ~v31) == 0)
        {
LABEL_15:
          if ((HIWORD(v75) & v31) != 0)
          {
            sub_1B039E440(&v75);
            sub_1B03A3614(&v80);
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

          sub_1B03A35B8(&v80, v58);
          sub_1B03BB0B4(&v75, v58);
          v33 = MailboxName.isInbox.getter(v21, v22);
          sub_1B039E440(&v75);
          if ((v33 & 1) != 0 || v76 > 7u || ((1 << v76) & 0xDB) == 0 || (v24 & 1) == 0 && ((BYTE12(v86) & 1) != 0 || DWORD2(v86) < v23))
          {
            sub_1B03A3614(&v80);
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

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03A3614(&v80);
          if (*(v56 + 16))
          {
            v34 = sub_1B03B8A9C(v20, *(&v20 + 1));
            v36 = v35;

            if ((v36 & 1) != 0 && (~*(*(v56 + 56) + 2 * v34) & 0x3FFF) != 0)
            {
              goto LABEL_34;
            }

            sub_1B03BB144(&v59);
          }

          else
          {
            sub_1B03BB144(&v59);
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

double sub_1B0ADFB4C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v2 == v4)
  {
LABEL_2:
    sub_1B0AE0378(&v92);
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
      v28 = sub_1B03AB888(v82, DWORD2(v82));
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
      sub_1B03A35B8(&v81, &v92);
      sub_1B03BB0B4(&v76, &v92);
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

        sub_1B03A35B8(&v81, &v92);
        sub_1B03BB0B4(&v76, &v92);
        v36 = MailboxName.isInbox.getter(v24, v25);
        sub_1B039E440(&v76);
        if ((v36 & 1) != 0 || v77 > 7u || ((1 << v77) & 0xDB) == 0 || (v27 & 1) == 0 && ((BYTE12(v87) & 1) != 0 || DWORD2(v87) < v26))
        {
          goto LABEL_30;
        }

        v37 = *(v43 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A3614(&v81);
        if (*(v37 + 16))
        {
          v38 = sub_1B03B8A9C(v23, *(&v23 + 1));
          v40 = v39;

          if ((v40 & 1) != 0 && (~*(*(v37 + 56) + 2 * v38) & 0x3FFF) != 0)
          {
            goto LABEL_31;
          }

          sub_1B03BB144(&v60);
        }

        else
        {
          sub_1B03BB144(&v60);
        }

        goto LABEL_27;
      }

      sub_1B039E440(&v76);
      sub_1B03A3614(&v81);
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
  sub_1B03A3614(&v81);
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
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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

double sub_1B0ADFF18@<D0>(uint64_t a1@<X8>)
{
  sub_1B0ADFB4C(v10);
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

unint64_t sub_1B0ADFF94()
{
  result = qword_1EB6E4218;
  if (!qword_1EB6E4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4218);
  }

  return result;
}

unint64_t sub_1B0ADFFE8(uint64_t a1)
{
  v2 = sub_1B0E46C18();

  return sub_1B0AE03A4(a1, v2);
}

unint64_t sub_1B0AE0058(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0B50244(v4);
  v2 = sub_1B0E46CB8();

  return sub_1B0AE0C74(a1, v2);
}

unint64_t sub_1B0AE00C4(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E46C28();
  v5 = *(*a1 + 96);
  swift_beginAccess();
  sub_1B03BCD68(a1 + v5, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v9);
  sub_1B03BE264(v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  v6 = sub_1B0E46CB8();
  return sub_1B0AE0DD4(a1, v6);
}

unint64_t sub_1B0AE01D0(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0B0ADF0(v6, a1);
  sub_1B0B0ADF0(v6, a2);
  v4 = sub_1B0E46CB8();

  return sub_1B0AE0FB4(a1, a2, v4);
}

unint64_t sub_1B0AE0250(unsigned __int8 *a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*a1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](*(a1 + 4) | (*(a1 + 4) << 32));
  sub_1B0E42F48();
  v2 = sub_1B0E46CB8();

  return sub_1B0AE10B4(a1, v2);
}

uint64_t sub_1B0AE02E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1B0E46C28();
  a3(v10, a1, a2);
  v7 = sub_1B0E46CB8();

  return a4(a1, a2, v7);
}

double sub_1B0AE0378(uint64_t a1)
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

unint64_t sub_1B0AE03A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AE0410(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
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

      sub_1B03B2000(v17, v16);
      v35 = sub_1B0E42A98();
      if (v35)
      {
        v40 = sub_1B0E42AC8();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1B0E42AB8();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_1B0E42A98();
        if (v37)
        {
          v60 = sub_1B0E42AC8();
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

        result = sub_1B0E42AB8();
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

        v37 = sub_1B0E42A98();
        if (v37)
        {
          v41 = sub_1B0E42AC8();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_1B0E42AB8();
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
      sub_1B03B2000(v17, v16);
      v32 = sub_1B0E42A98();
      if (v32)
      {
        v49 = sub_1B0E42AC8();
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

      v46 = sub_1B0E42AB8();
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

    sub_1B03B2000(v17, v16);
    v29 = sub_1B0E42A98();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1B0E42AC8();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_1B0E42AB8();
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
    sub_1B0391D50(v17, v16);
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
    sub_1B03B2000(v17, v16);
    v35 = sub_1B0E42A98();
    if (v35)
    {
      v36 = sub_1B0E42AC8();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1B0E42AB8();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_1B0E42A98();
      if (v37)
      {
        v57 = sub_1B0E42AC8();
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

      result = sub_1B0E42AB8();
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

      v37 = sub_1B0E42A98();
      if (v37)
      {
        v38 = sub_1B0E42AC8();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_1B0E42AB8();
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
        sub_1B0391D50(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1B0391D50(v17, v16);
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
    sub_1B03B2000(v17, v16);
    v32 = sub_1B0E42A98();
    if (v32)
    {
      v44 = sub_1B0E42AC8();
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

    v46 = sub_1B0E42AB8();
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

  sub_1B03B2000(v17, v16);
  v51 = sub_1B0E42A98();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B0E42AC8();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_1B0E42AB8();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1B0E42AB8();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1B0E42AB8();
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

unint64_t sub_1B0AE0C74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1B03BCD68(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v13 = sub_1B0B57E4C(v8, a1);
      sub_1B03BE264(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
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

unint64_t sub_1B0AE0DD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
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
      sub_1B03BCD68(v17 + v18, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03BCD68(v15 + v14, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v19 = sub_1B0B57E4C(v10, v7);
      sub_1B03BE264(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03BE264(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
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

unint64_t sub_1B0AE0FB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0AFE1EC(v10, a1))
      {
        v12 = sub_1B0AFE1EC(v11, a2);

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

unint64_t sub_1B0AE10B4(uint64_t a1, uint64_t a2)
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
      sub_1B0929244(v13, v12);
      v10 = static MoveOrCopy.__derived_struct_equals(_:_:)(v13, a1);
      sub_1B0929338(v13);
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

void *sub_1B0AE1190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 80);
  sub_1B03BCD68(a1, v12, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v18 = *&v12[*(v10 + 28)];
  sub_1B03C60A4(v12, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *&v16[*(v14 + 28)] = v18;
  sub_1B0B3FBB4(v4);
  v54 = v5;
  v55 = v6;
  v19 = *(v6 + 48);
  v52 = v6 + 48;
  v53 = v19;
  v20 = v19(v4, 1, v5);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20 != 1)
  {
    v22 = 0;
    v50 = v17;
    v51 = (v17 + 32) & ~v17;
    v28 = MEMORY[0x1E69E7CC0] + v51;
    v29 = &unk_1EB6E26C0;
    v30 = &unk_1B0E9DE10;
    v31 = MEMORY[0x1E69E7CC0];
    v48 = v4;
    v49 = v8;
    while (1)
    {
      v33 = v29;
      v34 = v30;
      result = sub_1B03C60A4(v4, v8, v29, v30);
      if (v22)
      {
        v21 = v31;
        v26 = __OFSUB__(v22--, 1);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v35 = v31[3];
        if (((v35 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4240, &unk_1B0EC5120);
        v38 = *(v55 + 72);
        v39 = v51;
        v21 = swift_allocObject();
        result = _swift_stdlib_malloc_size_0(v21);
        if (!v38)
        {
          goto LABEL_34;
        }

        v40 = result - v39;
        if ((result - v39) == 0x8000000000000000 && v38 == -1)
        {
          goto LABEL_35;
        }

        v42 = v40 / v38;
        v21[2] = v37;
        v21[3] = 2 * (v40 / v38);
        v43 = v21 + v39;
        v44 = v31[3] >> 1;
        v45 = v44 * v38;
        if (v31[2])
        {
          if (v21 < v31 || v43 >= v31 + v51 + v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31[2] = 0;
        }

        v28 = &v43[v45];
        v47 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

        v4 = v48;
        v8 = v49;
        v26 = __OFSUB__(v47, 1);
        v22 = v47 - 1;
        if (v26)
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

      sub_1B03C60A4(v8, v28, v33, v34);
      v28 += *(v55 + 72);
      sub_1B0B3FBB4(v4);
      v32 = v53(v4, 1, v54);
      v30 = v34;
      v29 = v33;
      v31 = v21;
      if (v32 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v22 = 0;
LABEL_3:
  sub_1B03BE264(v16, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
  result = sub_1B0398EFC(v4, &unk_1EB6E3670, &unk_1B0E9B260);
  v24 = v21[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v26 = __OFSUB__(v25, v22);
    v27 = v25 - v22;
    if (v26)
    {
      goto LABEL_36;
    }

    v21[2] = v27;
  }

  return v21;
}

void sub_1B0AE15D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v66 = v7;
  v62 = MEMORY[0x1E69E7CC0];
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
  v60 = MEMORY[0x1E69E7CC0] + 32;
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
        v21 = sub_1B03AB888(v90, DWORD2(v90));
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
    sub_1B03A35B8(&v89, &v68);
    sub_1B03BB0B4(&v84, &v68);
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
      sub_1B039E440(&v84);
      sub_1B03A3614(&v89);
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

    sub_1B03A35B8(&v89, v67);
    sub_1B03BB0B4(&v84, v67);
    v30 = MailboxName.isInbox.getter(v16, v17);
    sub_1B039E440(&v84);
    if ((v30 & 1) != 0 || v85 > 7u || ((1 << v85) & 0xDB) == 0 || (v19 & 1) == 0 && ((BYTE12(v95) & 1) != 0 || DWORD2(v95) < v18))
    {
      sub_1B03A3614(&v89);
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v89);
    if (!*(v64 + 16))
    {
      sub_1B03BB144(&v68);

LABEL_29:
      v6 = v20;
      v29 = __OFADD__(v8++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_14;
    }

    v31 = sub_1B03B8A9C(v15, *(&v15 + 1));
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v64 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      sub_1B03BB144(&v68);
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
    *(v60 + 32) = v70;
    *(v60 + 48) = v47;
    *v60 = v45;
    *(v60 + 16) = v46;
    v48 = v72;
    v49 = v73;
    v50 = v75;
    *(v60 + 96) = v74;
    *(v60 + 112) = v50;
    *(v60 + 64) = v48;
    *(v60 + 80) = v49;
    v51 = v76;
    v52 = v77;
    v53 = v79;
    *(v60 + 160) = v78;
    *(v60 + 176) = v53;
    *(v60 + 128) = v51;
    *(v60 + 144) = v52;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    *(v60 + 240) = v83;
    *(v60 + 208) = v55;
    *(v60 + 224) = v56;
    *(v60 + 192) = v54;
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4220, &qword_1B0EC4568);
    v38 = swift_allocObject();
    v39 = (_swift_stdlib_malloc_size_0(v38) - 32) / 248;
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

void *sub_1B0AE1AC8(uint64_t *a1)
{
  v100 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v93 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41D8, &unk_1B0EC4300);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E8, &qword_1B0EC4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v74 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41E0, &unk_1B0EC4580);
  v15 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - v21;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v22 = *(SearchResult - 8);
  MEMORY[0x1EEE9AC00](SearchResult);
  v86 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v22 + 80);
  v89 = MEMORY[0x1E69E7CC0];
  v74 = (v75 + 32) & ~v75;
  v87 = (MEMORY[0x1E69E7CC0] + v74);
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
  sub_1B0AE2784(&v106, v105);
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

      result = sub_1B03BCD68(v90 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v31, v103, _s19UserInitiatedSearchVMa);
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
      sub_1B03C60A4(v38, v104, &qword_1EB6E41D8, &unk_1B0EC4300);
      if ((*v98)(v39, 1, v35) != 1)
      {
        v40 = v93;
        sub_1B0AE27F4(v104, v93, _s19UserInitiatedSearchVMa);
        v92(v40);
        sub_1B03BE264(v40, _s19UserInitiatedSearchVMa);
        v36 = 0;
      }

      v41 = *v101;
      v42 = v36;
      v43 = v102;
      (*v101)(v12, v42, 1, v102);
      v44 = *v28;
      if ((*v28)(v12, 1, v43) == 1)
      {
        sub_1B0398EFC(v12, &qword_1EB6E41E8, &qword_1B0EC4310);
        v45 = 1;
        v46 = v81;
        goto LABEL_15;
      }

      sub_1B03C60A4(v12, v19, &qword_1EB6E41E0, &unk_1B0EC4580);
      if (v95(v19))
      {
        break;
      }

      result = sub_1B0398EFC(v19, &qword_1EB6E41E0, &unk_1B0EC4580);
      v29 = v97;
      v32 = v31 >= v97;
      if (v31 == v97)
      {
        goto LABEL_3;
      }
    }

    v46 = v81;
    sub_1B03C60A4(v19, v81, &qword_1EB6E41E0, &unk_1B0EC4580);
    v45 = 0;
    v29 = v97;
LABEL_15:
    v47 = v102;
    v41(v46, v45, 1, v102);
    v48 = v85;
    sub_1B03C60A4(v46, v85, &qword_1EB6E41E8, &qword_1B0EC4310);
    v49 = v44(v48, 1, v47);
    v50 = 1;
    v51 = v89;
    if (v49 != 1)
    {
      v52 = v78;
      sub_1B03C60A4(v85, v78, &qword_1EB6E41E0, &unk_1B0EC4580);
      v77(v52);
      sub_1B0398EFC(v52, &qword_1EB6E41E0, &unk_1B0EC4580);
      v50 = 0;
    }

    v53 = v84;
    v54 = SearchResult;
    (*v80)(v84, v50, 1, SearchResult);
    if ((*v79)(v53, 1, v54) != 1)
    {
      result = sub_1B0AE27F4(v53, v86, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      if (v88)
      {
        v55 = v51;
        v56 = v88 - 1;
        if (!__OFSUB__(v88, 1))
        {
LABEL_39:
          v88 = v56;
          v70 = v87;
          result = sub_1B0AE27F4(v86, v87, type metadata accessor for FetchSearchResultMessages.Requests.Search);
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4238, &unk_1B0EC4590);
        v60 = *(v83 + 72);
        v61 = v74;
        v55 = swift_allocObject();
        result = _swift_stdlib_malloc_size_0(v55);
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

  sub_1B0398EFC(&v106, &qword_1EB6E41F0, &qword_1B0EC4318);

  result = sub_1B0398EFC(v53, &qword_1EB6E41E0, &unk_1B0EC4580);
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

uint64_t sub_1B0AE2440@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B0E42A98();
    if (v10)
    {
      v11 = sub_1B0E42AC8();
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
      result = sub_1B0E42AB8();
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
  v10 = sub_1B0E42A98();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B0E42AC8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B0E42AB8();
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

void *sub_1B0AE2670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4230, &qword_1B0EC4578);
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size_0(v5);
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
  result = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B0AE2784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F0, &qword_1B0EC4318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0AE27F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AE285C(uint64_t *a1, int a2)
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

uint64_t sub_1B0AE28A4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy242_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1B0AE2958(uint64_t *a1, int a2)
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

uint64_t sub_1B0AE29A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AE2A30@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1B03B5C80(v14, v8, &qword_1EB6E4260, &qword_1B0EC47E0);
      if (*v8 == a1)
      {
        break;
      }

      sub_1B0398EFC(v8, &qword_1EB6E4260, &qword_1B0EC47E0);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    sub_1B03C60A4(v8, v12, &qword_1EB6E4260, &qword_1B0EC47E0);
    sub_1B0AEAE5C(&v12[*(v6 + 52)], a3, type metadata accessor for FindMissingMessages.CommandID);
    sub_1B0398EFC(v12, &qword_1EB6E4260, &qword_1B0EC47E0);
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

BOOL sub_1B0AE2C2C(unsigned __int8 *a1, unsigned __int8 *a2)
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

BOOL sub_1B0AE2C70(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0AE2CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC4700;
  *(v0 + 32) = &type metadata for DetectChangesToMessages;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 80) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 128) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 176) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 224) = type metadata accessor for FetchSearchResultMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 272) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v0;
}

uint64_t sub_1B0AE2E4C()
{
  result = sub_1B03D0770(&unk_1F2710E58);
  qword_1EB737D78 = result;
  return result;
}

void sub_1B0AE2E74(uint64_t a1)
{
  v2 = v1;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  MEMORY[0x1EEE9AC00](MissingMessages);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62 - v10;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = v2 + *(MissingMessages + 44);
  v18 = *(v17 + 13);
  v67 = v19;
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
      v73 = 0;
      v74 = 0xE000000000000000;
      LODWORD(v76) = v22;
      sub_1B0E46508();
      v21 = v73;
      v20 = v74;
    }
  }

  v68 = v21;
  sub_1B0AEAE5C(a1, v16, type metadata accessor for MailboxTaskLogger);
  sub_1B0AEAE5C(a1, v13, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v23 = v69;
  sub_1B0AEAE5C(v2, v69, type metadata accessor for FindMissingMessages);
  sub_1B0AEAE5C(v2, v8, type metadata accessor for FindMissingMessages);
  v24 = v70;
  sub_1B0AEAE5C(v2, v70, type metadata accessor for FindMissingMessages);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = sub_1B0E43988();
  v26 = sub_1B0E45908();

  if (os_log_type_enabled(v25, v26))
  {
    v64 = v26;
    v65 = v8;
    v27 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v76 = v63;
    *v27 = 68160259;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v28 = v67;
    v29 = &v13[*(v67 + 20)];
    *(v27 + 10) = *v29;
    v66 = MissingMessages;
    *(v27 + 11) = 2082;
    v30 = &v16[*(v28 + 20)];
    *(v27 + 13) = sub_1B0399D64(*(v30 + 1), *(v30 + 2), &v76);
    *(v27 + 21) = 1040;
    *(v27 + 23) = 2;
    *(v27 + 27) = 512;
    LOWORD(v29) = *(v29 + 12);
    sub_1B0AEAEC4(v13, type metadata accessor for MailboxTaskLogger);
    *(v27 + 29) = v29;
    *(v27 + 31) = 2160;
    *(v27 + 33) = 0x786F626C69616DLL;
    *(v27 + 41) = 2085;
    v31 = *(v30 + 4);
    LODWORD(v30) = *(v30 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AEAEC4(v16, type metadata accessor for MailboxTaskLogger);
    v73 = v31;
    LODWORD(v74) = v30;
    v32 = sub_1B0E44BA8();
    v34 = sub_1B0399D64(v32, v33, &v76);

    *(v27 + 43) = v34;
    *(v27 + 51) = 2082;
    v35 = sub_1B0399D64(v68, v20, &v76);

    *(v27 + 53) = v35;
    v68 = v27;
    *(v27 + 61) = 2082;
    v36 = v66;
    v37 = *(v23 + *(v66 + 44));
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v75 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v38, 0);
      v40 = (v37 + 40);
      v39 = v75;
      v41 = v25;
      do
      {
        v43 = *(v40 - 2);
        v42 = *(v40 - 1);
        if (*v40)
        {
          v73 = 14931;
          v44 = 0xE200000000000000;
        }

        else
        {
          v73 = 978332499;
          v44 = 0xE400000000000000;
        }

        v74 = v44;
        v71 = v43;
        v72 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v45 = sub_1B0E44B88();
        MEMORY[0x1B2726E80](v45);

        v46 = v73;
        v47 = v74;
        v75 = v39;
        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1B041D32C((v48 > 1), v49 + 1, 1);
          v39 = v75;
        }

        *(v39 + 16) = v49 + 1;
        v50 = v39 + 16 * v49;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        v40 += 12;
        --v38;
      }

      while (v38);
      v25 = v41;
      v23 = v69;
      v51 = v70;
      v36 = v66;
    }

    else
    {
      v51 = v70;
    }

    v73 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v52 = sub_1B0E448E8();
    v54 = v53;

    sub_1B0AEAEC4(v23, type metadata accessor for FindMissingMessages);
    v55 = sub_1B0399D64(v52, v54, &v76);

    v56 = v68;
    *(v68 + 63) = v55;
    *(v56 + 71) = 2048;
    v57 = &v65[*(v36 + 52)];
    if (v57[8])
    {
      v58 = 0;
    }

    else
    {
      v58 = *v57;
    }

    sub_1B0AEAEC4(v65, type metadata accessor for FindMissingMessages);
    *(v56 + 73) = v58;
    *(v56 + 81) = 1024;
    v59 = v51 + *(v36 + 72);
    if (*(v59 + 24))
    {
      v60 = *(v59 + 12);
    }

    else
    {
      v60 = 0;
    }

    sub_1B0AEAEC4(v51, type metadata accessor for FindMissingMessages);
    *(v56 + 83) = v60;
    _os_log_impl(&dword_1B0389000, v25, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window-update %{public}s, ranges %{public}s, UID limit: %ld, grow: %u", v56, 0x57u);
    v61 = v63;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v61, -1, -1);
    MEMORY[0x1B272C230](v56, -1, -1);
  }

  else
  {
    sub_1B0AEAEC4(v24, type metadata accessor for FindMissingMessages);
    sub_1B0AEAEC4(v8, type metadata accessor for FindMissingMessages);
    sub_1B0AEAEC4(v13, type metadata accessor for MailboxTaskLogger);

    sub_1B0AEAEC4(v16, type metadata accessor for MailboxTaskLogger);
    sub_1B0AEAEC4(v23, type metadata accessor for FindMissingMessages);
  }
}

uint64_t sub_1B0AE3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v88 = a4;
  v79 = a1;
  v80 = a2;
  v86 = a5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v78 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v76 - v14;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v77 = *(Missing - 8);
  MEMORY[0x1EEE9AC00](Missing);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4268, &qword_1B0EC47E8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = (&v76 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v76 - v35;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v37 = (v6 + MissingMessages[18]);
  v38 = v37[3];
  if (v38)
  {
    sub_1B0AEF704(v79, a3, *v37, v37[1] & 0xFFFFFFFF00000101, v37[2] | ((HIDWORD(v37[2]) & 1) << 32), v38, v27);
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      sub_1B03C60A4(v27, v36, &qword_1EB6E4270, &qword_1B0EC47F0);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
      v40 = *(v39 + 48);
      sub_1B03B5C80(v36, v33, &qword_1EB6E4270, &qword_1B0EC47F0);
      v41 = v33[8];
      v42 = *(v28 + 48);
      v43 = v86;
      *v86 = *v33;
      *(v43 + 8) = v41;
      swift_storeEnumTagMultiPayload();
      v44 = v36;
      v45 = v76;
      sub_1B03C60A4(v44, v76, &qword_1EB6E4270, &qword_1B0EC47F0);
      sub_1B0AEF094(v45 + *(v28 + 48), v43 + v40, type metadata accessor for ClientCommand);
      (*(*(v39 - 8) + 56))(v43, 0, 1, v39);
      return sub_1B0AEAEC4(&v33[v42], type metadata accessor for ClientCommand);
    }
  }

  else
  {
    (*(v29 + 56))(v27, 1, 1, v28);
  }

  v80 = v6;
  sub_1B0398EFC(v27, &qword_1EB6E4268, &qword_1B0EC47E8);
  v47 = sub_1B0AED594(a3);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = *(v77 + 80);
    v79 = v47;
    v50 = v47 + ((v49 + 32) & ~v49);
    v51 = *(v77 + 72);
    v88 = (v78 + 16);
    do
    {
      sub_1B0AEAE5C(v50, v19, type metadata accessor for FindMissingMessages.CommandID);
      sub_1B0AEAE5C(v19, v16, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0AEAEC4(v19, type metadata accessor for FindMissingMessages.CommandID);
        v53 = v16;
      }

      else
      {
        v52 = v89;
        sub_1B03C60A4(v16, v89, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v88)(v90, v52, v91);
        sub_1B0E46ED8();
        sub_1B0398EFC(v52, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v53 = v19;
      }

      sub_1B0AEAEC4(v53, type metadata accessor for FindMissingMessages.CommandID);
      v50 += v51;
      --v48;
    }

    while (v48);
  }

  v54 = v86;
  v55 = v84;
  sub_1B03C60A4(v22, v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
  sub_1B0AF51AC(v55, v80 + v63, v59, v60 | (v61 << 40), v62 | (v58 << 32), v81);
  v65 = v82;
  v64 = v83;
  v66 = (*(v82 + 48))(v56, 1, v83);
  v67 = v85;
  if (v66 == 1)
  {
    sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v56, &unk_1EB6E3670, &unk_1B0E9B260);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
    return (*(*(v68 - 8) + 56))(v54, 1, 1, v68);
  }

  else
  {
    sub_1B03C60A4(v56, v85, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v69 = swift_allocBox();
    v71 = v70;
    sub_1B03B5C80(v67, v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(v65 + 56))(v71, 0, 1, v64);
    v72 = v69 | 0xA000000000000000;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4278, &qword_1B0EC47F8);
    v74 = (v54 + *(v73 + 48));
    sub_1B03B5C80(v67, v54, &unk_1EB6E26C0, &unk_1B0E9DE10);
    swift_storeEnumTagMultiPayload();
    if (*(v57 + MissingMessages[12] + 1) == 1)
    {
      sub_1B0398EFC(v67, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v74 = v72;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      type metadata accessor for SearchReturnOption(0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      sub_1B0398EFC(v67, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v74 = v72;
      v74[1] = v75;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v73 - 8) + 56))(v54, 0, 1, v73);
  }
}

uint64_t sub_1B0AE3FD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v105 = a7;
  v108 = a5;
  v109 = a3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v102);
  v12 = v86 - v11;
  v13 = type metadata accessor for TaskHistory.Running(0);
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = v86 - v18;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v99 = *(Missing - 8);
  v100 = Missing;
  MEMORY[0x1EEE9AC00](Missing);
  v95 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = v86 - v22;
  v23 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v86 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v103 = v86 - v31;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v32 = *(MissingMessages + 72);
  v104 = v7;
  if (*(v7 + v32 + 24))
  {
    sub_1B0AF0444(a1, a2, v109, a4, v108);
  }

  result = sub_1B0AECE68(2, a2, v109, a4, sub_1B0AEC7F4);
  if ((result & 1) == 0)
  {
    return result;
  }

  v109 = a2;
  v105 = a4;
  v34 = v104;
  v35 = (v104 + *(MissingMessages + 48));
  v36 = *v35;
  if (v35[1])
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  sub_1B0B7EA7C(v37 | v36, v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v38 = &qword_1EB6E3920;
    v39 = &qword_1B0E9B070;
    v40 = v28;
    return sub_1B0398EFC(v40, v38, v39);
  }

  v41 = v103;
  sub_1B03C60A4(v28, v103, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAE5C(a1, v25, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0AEAEC4(v25, type metadata accessor for UntaggedResponse);
    v54 = MissingMessages;
    goto LABEL_14;
  }

  v42 = *v25;
  v43 = *(v25 + 2);
  v44 = *(v25 + 3);
  v45 = v25[32];
  v46 = *(v25 + 5);
  v47 = *(v25 + 1);
  v91 = v46;
  v90 = v42;
  if (!v47 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v49 = Tag.init(_:)(v42, v47, v48), (v50 & 1) != 0))
  {
    v51 = v100;
    v52 = v101;
    v53 = v99;
LABEL_45:
    sub_1B0AEF11C(v90, v47);

    (*(v53 + 56))(v52, 1, 1, v51);
    goto LABEL_46;
  }

  v67 = v49;
  v89 = v47;
  v86[3] = v45;
  v87 = v44;
  v88 = v43;
  v68 = *(v109 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v69 = v107;
  if (!v68)
  {
LABEL_44:

    v41 = v103;
    v51 = v100;
    v52 = v101;
    v53 = v99;
    v47 = v89;
    goto LABEL_45;
  }

  v93 = v67;
  v92 = HIDWORD(v67);
  v70 = v109 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v71 = *(v97 + 72);
  while (1)
  {
    sub_1B0AEAE5C(v70, v69, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AEAEC4(v69, type metadata accessor for TaskHistory.Running);
LABEL_30:
    v70 += v71;
    if (!--v68)
    {
      goto LABEL_44;
    }
  }

  v72 = *v69;
  v73 = *(v107 + 1);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AEAEC4(&v107[*(v74 + 64)], type metadata accessor for ClientCommand);
  v75 = v72 == v93 && v73 == v92;
  v69 = v107;
  if (!v75)
  {
    goto LABEL_30;
  }

  v76 = v96;
  sub_1B0AEAE5C(v70, v96, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_51:
    result = sub_1B0AEAEC4(v76, type metadata accessor for TaskHistory.Running);
    __break(1u);
    return result;
  }

  v77 = *v76;
  v79 = *(v76 + 1);
  v78 = *(v76 + 2);
  sub_1B0AEAEC4(&v76[*(v74 + 64)], type metadata accessor for ClientCommand);

  v75 = v77 == v93;
  v76 = v100;
  v52 = v101;
  v80 = v89;
  if (!v75)
  {
    __break(1u);
    goto LABEL_50;
  }

  v34 = v104;
  if (v79 != v92)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1B0AE2A30(v78, v105, v101);
  sub_1B0AEF11C(v90, v80);

  v81 = (*(v99 + 48))(v52, 1, v76);
  v41 = v103;
  v54 = MissingMessages;
  if (v81 == 1)
  {
LABEL_46:
    sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v38 = &qword_1EB6E4258;
    v39 = &qword_1B0EC49F0;
    v40 = v52;
    return sub_1B0398EFC(v40, v38, v39);
  }

  v82 = v52;
  v83 = v94;
  sub_1B0AEF094(v82, v94, type metadata accessor for FindMissingMessages.CommandID);
  v84 = v83;
  v85 = v95;
  sub_1B0AEF094(v84, v95, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return sub_1B0AEAEC4(v85, type metadata accessor for FindMissingMessages.CommandID);
  }

  sub_1B0AEAEC4(v85, type metadata accessor for FindMissingMessages.CommandID);
LABEL_14:
  sub_1B03B5C80(v41, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v55 = MessageIdentifierSet.startIndex.getter(v29);
  v57 = v56;
LABEL_16:
  while (v55 != MessageIdentifierSet.endIndex.getter(v29) || v57 != v58)
  {
    MessageIdentifierSet.subscript.getter(v57, v29, &v112);
    v59 = v112;
    MessageIdentifierSet.index(_:offsetBy:)(v55, v57, 1);
    v55 = v60;
    v57 = v61;
    v62 = *(v34 + *(v54 + 44));
    v63 = *(v62 + 16);
    if (v63)
    {
      v64 = (v62 + 36);
      while (v59 < *(v64 - 1) || *v64 < v59)
      {
        v64 += 3;
        if (!--v63)
        {
          goto LABEL_16;
        }
      }

      v110 = v59;
      MessageIdentifierSet.insert(_:)(v111, &v110, v29);
    }
  }

  v66 = &v12[*(v102 + 36)];
  *v66 = v55;
  v66[1] = v57;
  sub_1B0398EFC(v12, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v38 = &unk_1EB6E1AF0;
  v39 = &unk_1B0E9AF40;
  v40 = v103;
  return sub_1B0398EFC(v40, v38, v39);
}

uint64_t sub_1B0AE4978(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](Missing);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0A92068(a8, a2, a3, a4, a5);
  if (!v9)
  {
    sub_1B0AEAE5C(v21, v17, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = type metadata accessor for FindMissingMessages(0);
      v19 = v8 + *(result + 72);
      if (*(v19 + 24))
      {
        if (v17[8])
        {
          *(v19 + 16) = 0;
          *(v19 + 20) = 1;
        }

        else if (*(v19 + 20))
        {
          *(v19 + 16) = 1;
          *(v19 + 20) = 0;
        }
      }
    }

    else
    {
      return sub_1B0AEAEC4(v17, type metadata accessor for FindMissingMessages.CommandID);
    }
  }

  return result;
}

uint64_t sub_1B0AE4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v19 = (v6 + *(MissingMessages + 72));
  v20 = v19[3];
  if (v20 && (v21 = sub_1B0AF1388(*(v6 + 64), *(v6 + 72), a1, a2, a3, a4, a6, *v19, v19[1] & 0xFFFFFFFF00000101, v19[2] | ((HIDWORD(v19[2]) & 1) << 32), v20), (~v22 & 0xF000000000000007) != 0))
  {
    v27 = v22;
    v28 = v21;
    if ((sub_1B0AEBA2C(0, 1, a1, a2, a4, sub_1B0A9EEE8) & 1) == 0)
    {
      return v28;
    }

    sub_1B0AEF160(v28, v27);
  }

  else if ((sub_1B0AED9C4(1, a1, a2, a4, sub_1B0AED7CC) & 1) == 0 && (sub_1B0A9EF00(0, 1, a2, a4, v23) & 1) == 0)
  {
    v24 = v6 + *(MissingMessages + 44);
    v25 = *v24;
    v26 = *(v24 + 13);
    LOBYTE(v24) = *(v24 + 20);
    v36 = v26;
    v35 = v24;
    sub_1B0AF58C8(v25, v14);
    if ((*(v34 + 48))(v14, 1, v15) != 1)
    {
      sub_1B03C60A4(v14, v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v31 = *(v30 + 48);
      v32 = *(v6 + 72);
      *v33 = *(v6 + 64);
      v33[1] = v32;
      sub_1B03C60A4(v17, v33 + v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
  }

  return 0;
}

void sub_1B0AE4E28(unint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if ((a2 & 1) == 0)
  {
    v8 = v2 + *(type metadata accessor for FindMissingMessages(0) + 72);
    v9 = *(v8 + 24);
    if (v9)
    {
      if ((a1 & 0x8000000000000000) == 0 && v9[2] > a1)
      {
        sub_1B03D06F8();
        sub_1B0E46EE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B8C950(v9);
        }

        if (v9[2] <= a1)
        {
          __break(1u);
        }

        else
        {
          _s20GrowWindowOfInterestV6ResultVMa(0);
          sub_1B0AF2B0C(v7);
          sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v8 + 24) = v9;
        }
      }
    }
  }
}

uint64_t sub_1B0AE4FA8(const void *a1, uint64_t a2)
{
  v3 = v2;
  v107 = a1;
  v108 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v85[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v85[-v9];
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v101 = &v85[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _s15MissingMessagesO10NewMissingVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v105);
  v15 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85[-v17];
  v99 = &v85[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85[-v20];
  v100 = &v85[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85[-v23];
  v25 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v85[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  MEMORY[0x1EEE9AC00](Missing);
  v106 = &v85[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v85[-v30];
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v86 = *(v3 + MissingMessages[14]);
  v87 = MissingMessages[9];
  v88 = v27;
  sub_1B0AEAE5C(v3 + v87, v27, type metadata accessor for MessageBatches);
  v32 = MissingMessages[16];
  v90 = v24;
  sub_1B03B5C80(v3 + v32, v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + v32, v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + MissingMessages[17], v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v3 + MissingMessages[15], v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
  sub_1B0AEAE5C(v108, v101, type metadata accessor for MailboxTaskLogger);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v110[0]) = v24;
  v109 = v39;
  v45 = v38 | (v39 << 32);
  v46 = v102;
  sub_1B0AE579C(v100, v99, v98, v97, v96, v95, v21, v36, v102, v37 | (v24 << 40), v45, v94, *(&v94 + 1), v43, v42, v44);
  memcpy(v110, v107, sizeof(v110));
  v47 = LOBYTE(v110[3]);
  v48 = BYTE1(v110[3]);
  v49 = v110[4];
  v50 = LOBYTE(v110[5]);
  v52 = v110[6];
  v51 = v110[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = sub_1B0397D14();
  v54 = v53;
  if (v49 == 3 || v49 == 2)
  {

    v55 = 0;
    v56 = v103;
    goto LABEL_27;
  }

  v57 = sub_1B0BAE1A4(v53);
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
  sub_1B0397E04(&unk_1F2710548, v51);
  sub_1B0BAE1A4(v54);
  v59 = sub_1B039109C(v51);

  if (v59 & 1) == 0 && (v48)
  {
    sub_1B0BAE1A4(v54);
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
  v61 = sub_1B0B4A3E8();
  v63 = v62;
  sub_1B0398EFC(v56, &unk_1EB6E2780, &unk_1B0E9C5E0);
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
  v67 = sub_1B0B4A3E8();
  v69 = v68;
  result = sub_1B0398EFC(v66, &unk_1EB6E2780, &unk_1B0E9C5E0);
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
  sub_1B0AEAE5C(v46, v65 + *(Missing + 24), _s15MissingMessagesO10NewMissingVMa);
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
  v76 = sub_1B0B3EF14();
  *v74 = v76;
  *(v74 + 4) = BYTE4(v76) & 1;
  v77 = v92;
  v78 = v90;
  MessageIdentifierSet.ranges.getter(v92);
  v79 = sub_1B0B4A3E8();
  v81 = v80;
  sub_1B0398EFC(v77, &unk_1EB6E2780, &unk_1B0E9C5E0);
  sub_1B0AEAEC4(v46, _s15MissingMessagesO10NewMissingVMa);
  sub_1B0398EFC(v78, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAEC4(v75, type metadata accessor for MessageBatches);
  v82 = HIDWORD(v79);
  if (v81)
  {
    LODWORD(v82) = 0;
  }

  v83 = v65 + v72[9];
  *v83 = v82;
  *(v83 + 4) = v81 & 1;
  v84 = v91;
  sub_1B0AEF094(v65, v91, type metadata accessor for FindMissingMessages.Completed);
  sub_1B0AEECD8(v107, *(v93 + 88), *(v93 + 96), *(v93 + v87), v84, v108);
  return sub_1B0AEAEC4(v84, type metadata accessor for FindMissingMessages.Completed);
}

uint64_t sub_1B0AE579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v137 = a6;
  v138 = a8;
  v136 = a7;
  LODWORD(v125) = a5;
  v128 = a4;
  v145 = a3;
  v146 = a1;
  v135 = a9;
  v143 = a13;
  v144 = a15;
  v141 = a16;
  v142 = a12;
  v133 = a11;
  v134 = a14;
  v132 = a10;
  v122 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v122);
  v131 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v117 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v117 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v117 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v117 - v25;
  v127 = sub_1B0E439A8();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v117 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v117 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v117 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v117 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v117 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v117 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v117 - v49;
  v139 = a2;
  MessageIdentifierSet.union(_:)(a2, v47);
  MessageIdentifierSet.union(_:)(v145, v50);
  v51 = v144;
  v140 = v47;
  sub_1B0398EFC(v47, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v130 = v50;
  if (v51)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = v134;
    sub_1B0AF1F70(v142, v143 & 0xFFFFFFFF00000101, v52 | ((HIDWORD(v52) & 1) << 32), v51);

    sub_1B03C60A4(v38, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.union(_:)(v41, v44);
    sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v128) = 0;
    v127 = 0;
    v53 = 1;
    v54 = v52;
  }

  else
  {
    v118 = v30;
    v55 = v126;
    v56 = v127;
    v119 = v44;
    v57 = v146;
    v58 = v128;
    if ((v125 & 1) != 0 || MessageIdentifierSet.count.getter() <= v58)
    {
      v84 = v57;
      v44 = v119;
      sub_1B03B5C80(v84, v119, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v127 = 0;
      LODWORD(v128) = 1;
      v53 = 1;
      v54 = v134;
    }

    else
    {
      v59 = v140;
      MessageIdentifierSet.suffix(_:)(v58, v34, v140);
      MessageIdentifierSet.intersection(_:)(v57, v119);
      sub_1B0398EFC(v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v60 = sub_1B0B4AAF0();
      if (v60 & 0x100000000) != 0 || (v61 = v60, MessageIdentifierSet.ranges.getter(v33), v62 = sub_1B0B4A3E8(), v64 = v63, sub_1B0398EFC(v33, &unk_1EB6E2780, &unk_1B0E9C5E0), (v64))
      {
        v65 = v55;
        v66 = *(v55 + 16);
        v67 = v27;
        v68 = v141;
        v69 = v56;
        v66(v27, v141, v56);
        v70 = v123;
        sub_1B0AEAE5C(v68, v123, type metadata accessor for MailboxTaskLogger);
        v71 = v124;
        sub_1B0AEAE5C(v68, v124, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v72 = sub_1B0E43988();
        v73 = sub_1B0E45908();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v151 = v121;
          *v74 = 68159491;
          *(v74 + 4) = 2;
          *(v74 + 8) = 256;
          v75 = v122;
          v76 = v71 + *(v122 + 20);
          *(v74 + 10) = *v76;
          *(v74 + 11) = 2082;
          v77 = *(v75 + 20);
          v125 = v67;
          v78 = v70 + v77;
          *(v74 + 13) = sub_1B0399D64(*(v70 + v77 + 8), *(v70 + v77 + 16), &v151);
          *(v74 + 21) = 1040;
          *(v74 + 23) = 2;
          *(v74 + 27) = 512;
          LOWORD(v76) = *(v76 + 24);
          sub_1B0AEAEC4(v71, type metadata accessor for MailboxTaskLogger);
          *(v74 + 29) = v76;
          *(v74 + 31) = 2160;
          *(v74 + 33) = 0x786F626C69616DLL;
          *(v74 + 41) = 2085;
          v79 = *(v78 + 32);
          LODWORD(v78) = *(v78 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v70, type metadata accessor for MailboxTaskLogger);
          v149 = v79;
          v150 = v78;
          v80 = sub_1B0E44BA8();
          v82 = sub_1B0399D64(v80, v81, &v151);

          *(v74 + 43) = v82;
          *(v74 + 51) = 2048;
          *(v74 + 53) = v128;
          _os_log_impl(&dword_1B0389000, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs.", v74, 0x3Du);
          v83 = v121;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v83, -1, -1);
          MEMORY[0x1B272C230](v74, -1, -1);

          (*(v126 + 8))(v125, v127);
        }

        else
        {
          sub_1B0AEAEC4(v71, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v70, type metadata accessor for MailboxTaskLogger);
          (*(v65 + 8))(v67, v69);
        }
      }

      else
      {
        v125 = v62;
        v91 = v55;
        v92 = *(v55 + 16);
        v93 = v118;
        v94 = v141;
        v95 = v56;
        v92(v118, v141, v56);
        v96 = v121;
        sub_1B0AEAE5C(v94, v121, type metadata accessor for MailboxTaskLogger);
        v97 = v120;
        sub_1B0AEAE5C(v94, v120, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v98 = sub_1B0E43988();
        v99 = sub_1B0E45908();
        if (os_log_type_enabled(v98, v99))
        {
          v123 = HIDWORD(v125);
          v100 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v151 = v125;
          *v100 = 68159747;
          LODWORD(v124) = v99;
          *(v100 + 4) = 2;
          *(v100 + 8) = 256;
          v101 = v122;
          v102 = v97 + *(v122 + 20);
          *(v100 + 10) = *v102;
          *(v100 + 11) = 2082;
          v103 = v96 + *(v101 + 20);
          *(v100 + 13) = sub_1B0399D64(*(v103 + 8), *(v103 + 16), &v151);
          *(v100 + 21) = 1040;
          *(v100 + 23) = 2;
          *(v100 + 27) = 512;
          LOWORD(v102) = *(v102 + 24);
          sub_1B0AEAEC4(v97, type metadata accessor for MailboxTaskLogger);
          *(v100 + 29) = v102;
          *(v100 + 31) = 2160;
          *(v100 + 33) = 0x786F626C69616DLL;
          *(v100 + 41) = 2085;
          v104 = *(v103 + 32);
          LODWORD(v103) = *(v103 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);
          v149 = v104;
          v150 = v103;
          v105 = sub_1B0E44BA8();
          v107 = sub_1B0399D64(v105, v106, &v151);

          *(v100 + 43) = v107;
          *(v100 + 51) = 2048;
          *(v100 + 53) = v128;
          *(v100 + 61) = 2082;
          v147 = v123;
          v148 = v61;
          sub_1B041C1E8();
          static MessageIdentifier.... infix(_:_:)(&v148, &v147, &type metadata for UID, &v149);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v108 = MessageIdentifierRange.debugDescription.getter();
          v110 = sub_1B0399D64(v108, v109, &v151);

          *(v100 + 63) = v110;
          _os_log_impl(&dword_1B0389000, v98, v124, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Limiting server UIDs to %ld UIDs in range %{public}s.", v100, 0x47u);
          v111 = v125;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v111, -1, -1);
          MEMORY[0x1B272C230](v100, -1, -1);

          (*(v126 + 8))(v118, v127);
        }

        else
        {
          sub_1B0AEAEC4(v97, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);
          (*(v91 + 8))(v93, v95);
        }
      }

      v54 = v134;
      v44 = v119;
      v112 = MessageIdentifierSet.startIndex.getter(v34);
      v114 = v113;
      if (v112 == MessageIdentifierSet.endIndex.getter(v34) && v114 == v115)
      {
        LODWORD(v128) = 0;
        v127 = 0;
        v53 = 1;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v114, v34, &v149);
        LODWORD(v128) = 0;
        v53 = 0;
        v127 = v149;
      }
    }
  }

  v85 = v140;
  sub_1B03B5C80(v44, v140, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v86 = v139;
  v87 = v129;
  sub_1B03B5C80(v139, v129, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v88 = v141;
  v89 = v131;
  sub_1B0AEAE5C(v141, v131, type metadata accessor for MailboxTaskLogger);
  LOBYTE(v149) = BYTE5(v132) & 1;
  LOBYTE(v151) = BYTE4(v133) & 1;
  v116 = v133 | ((BYTE4(v133) & 1) << 32);
  sub_1B0AE8914(v85, v127 | (v53 << 32), v128, v87, v137, v136 & 1, v138, v132 & 0xFFFFFFFFFFLL | (((v132 >> 40) & 1) << 40), v135, v116, SBYTE4(v116), v142, v143, v54, SBYTE4(v54), v144, v89);
  sub_1B0AEAEC4(v88, type metadata accessor for MailboxTaskLogger);
  sub_1B0398EFC(v145, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B0398EFC(v130, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AE6544(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v129 = a5;
  v137 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v121[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v121[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v121[-v13];
  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  v139 = Missing;
  MEMORY[0x1EEE9AC00](Missing);
  v17 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v134);
  v127 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v121[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v121[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v121[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v121[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v121[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v121[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v121[-v33];
  v35 = *(Missing + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v135 = v35;
  v36 = sub_1B0E46E98();
  v138 = a3;
  if ((v36 & 1) == 0)
  {
    sub_1B0AEAE5C(a4, v34, type metadata accessor for MailboxTaskLogger);
    sub_1B0AEAE5C(a4, v31, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AEAE5C(a3, v17, type metadata accessor for FindMissingMessages.Completed);
    v37 = sub_1B0E43988();
    v38 = sub_1B0E45908();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v142[0] = v125;
      *v39 = 68159491;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v134;
      v41 = *(v134 + 20);
      v124 = v38;
      v42 = &v31[v41];
      *(v39 + 10) = v31[v41];
      *(v39 + 11) = 2082;
      v43 = *(v40 + 20);
      v123 = v37;
      v44 = &v34[v43];
      *(v39 + 13) = sub_1B0399D64(*&v34[v43 + 8], *&v34[v43 + 16], v142);
      *(v39 + 21) = 1040;
      *(v39 + 23) = 2;
      *(v39 + 27) = 512;
      v126 = a4;
      v45 = a1;
      v46 = v14;
      v47 = *(v42 + 12);
      sub_1B0AEAEC4(v31, type metadata accessor for MailboxTaskLogger);
      *(v39 + 29) = v47;
      *(v39 + 31) = 2160;
      *(v39 + 33) = 0x786F626C69616DLL;
      *(v39 + 41) = 2085;
      v48 = *(v44 + 4);
      v49 = *(v44 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);
      v140 = v48;
      v141 = v49;
      v14 = v46;
      a1 = v45;
      a4 = v126;
      v50 = sub_1B0E44BA8();
      v52 = sub_1B0399D64(v50, v51, v142);

      *(v39 + 43) = v52;
      *(v39 + 51) = 2048;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v53 = MessageIdentifierSet.count.getter();
      sub_1B0AEAEC4(v17, type metadata accessor for FindMissingMessages.Completed);
      *(v39 + 53) = v53;
      v54 = v123;
      _os_log_impl(&dword_1B0389000, v123, v124, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld new UID(s).", v39, 0x3Du);
      v55 = v125;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v55, -1, -1);
      v56 = v39;
      a3 = v138;
      MEMORY[0x1B272C230](v56, -1, -1);
    }

    else
    {
      sub_1B0AEAEC4(v17, type metadata accessor for FindMissingMessages.Completed);
      sub_1B0AEAEC4(v31, type metadata accessor for MailboxTaskLogger);

      sub_1B0AEAEC4(v34, type metadata accessor for MailboxTaskLogger);
    }
  }

  v57 = type metadata accessor for MailboxSyncState(0);
  v58 = *(v57 + 68);
  sub_1B0AEAE5C(a1 + v58, v14, _s15MissingMessagesOMa);
  sub_1B0B494D4(&v135[a3]);
  sub_1B0AEAE5C(a1 + v58, v11, _s15MissingMessagesOMa);
  v59 = sub_1B03D3850(v11, v14);
  sub_1B0AEAEC4(v11, _s15MissingMessagesOMa);
  v60 = a4;
  sub_1B0AE7418(a4, a1 + v58);
  if ((*(a3 + 12) & 1) == 0)
  {
    v61 = *(a3 + 8);
    if (*(a1 + 12))
    {
      goto LABEL_10;
    }

    v62 = *(a1 + 8);
    v63 = v62 >= v61;
    if (v62 > v61)
    {
      v61 = *(a1 + 8);
    }

    if (!v63)
    {
LABEL_10:
      v124 = v59;
      v125 = v58;
      *(a1 + 8) = v61;
      *(a1 + 12) = 0;
      v64 = v133;
      sub_1B0AEAE5C(v60, v133, type metadata accessor for MailboxTaskLogger);
      v65 = v132;
      sub_1B0AEAE5C(v60, v132, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v66 = sub_1B0E43988();
      v67 = sub_1B0E45908();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v135 = v14;
        v123 = v69;
        v142[0] = v69;
        *v68 = 68159491;
        v126 = v57;
        *(v68 + 4) = 2;
        *(v68 + 8) = 256;
        v70 = v134;
        v71 = v64;
        v72 = &v65[*(v134 + 20)];
        *(v68 + 10) = *v72;
        *(v68 + 11) = 2082;
        v73 = *(v70 + 20);
        v122 = v67;
        v74 = v71 + v73;
        *(v68 + 13) = sub_1B0399D64(*(v71 + v73 + 8), *(v71 + v73 + 16), v142);
        *(v68 + 21) = 1040;
        *(v68 + 23) = 2;
        *(v68 + 27) = 512;
        LOWORD(v72) = *(v72 + 12);
        sub_1B0AEAEC4(v65, type metadata accessor for MailboxTaskLogger);
        *(v68 + 29) = v72;
        *(v68 + 31) = 2160;
        *(v68 + 33) = 0x786F626C69616DLL;
        *(v68 + 41) = 2085;
        v75 = *(v74 + 32);
        LODWORD(v74) = *(v74 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v71, type metadata accessor for MailboxTaskLogger);
        v140 = v75;
        v141 = v74;
        v76 = sub_1B0E44BA8();
        v78 = sub_1B0399D64(v76, v77, v142);
        v57 = v126;

        *(v68 + 43) = v78;
        *(v68 + 51) = 1024;
        *(v68 + 53) = v61;
        _os_log_impl(&dword_1B0389000, v66, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating sync state next UID to %u.", v68, 0x39u);
        v79 = v123;
        swift_arrayDestroy();
        v14 = v135;
        MEMORY[0x1B272C230](v79, -1, -1);
        MEMORY[0x1B272C230](v68, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v65, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v64, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v138;
      v58 = v125;
      LOBYTE(v59) = v124;
    }
  }

  v80 = v139;
  if (*(a3 + *(v139 + 28)))
  {
    v81 = v60;
    if (*(a3 + *(v139 + 28)) == 1)
    {
      v82 = v60;
      v83 = v131;
      sub_1B0AEAE5C(v82, v131, type metadata accessor for MailboxTaskLogger);
      v84 = v130;
      sub_1B0AEAE5C(v81, v130, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v85 = sub_1B0E43988();
      v86 = sub_1B0E45908();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v142[0] = v133;
        *v87 = 68159235;
        v135 = v14;
        *(v87 + 4) = 2;
        *(v87 + 8) = 256;
        v88 = v134;
        v89 = *(v134 + 20);
        v126 = v57;
        v90 = &v84[v89];
        *(v87 + 10) = v84[v89];
        *(v87 + 11) = 2082;
        v91 = &v83[*(v88 + 20)];
        *(v87 + 13) = sub_1B0399D64(*(v91 + 1), *(v91 + 2), v142);
        *(v87 + 21) = 1040;
        *(v87 + 23) = 2;
        *(v87 + 27) = 512;
        LOWORD(v90) = *(v90 + 12);
        sub_1B0AEAEC4(v84, type metadata accessor for MailboxTaskLogger);
        *(v87 + 29) = v90;
        *(v87 + 31) = 2160;
        *(v87 + 33) = 0x786F626C69616DLL;
        *(v87 + 41) = 2085;
        v92 = *(v91 + 4);
        LODWORD(v91) = *(v91 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v83, type metadata accessor for MailboxTaskLogger);
        v140 = v92;
        v141 = v91;
        v93 = sub_1B0E44BA8();
        v95 = sub_1B0399D64(v93, v94, v142);
        v14 = v135;
        v80 = v139;

        *(v87 + 43) = v95;
        v57 = v126;
        _os_log_impl(&dword_1B0389000, v85, v86, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run after initial run.", v87, 0x33u);
        v96 = v133;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v96, -1, -1);
        MEMORY[0x1B272C230](v87, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v84, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v83, type metadata accessor for MailboxTaskLogger);
      }

      a3 = v138;
      sub_1B03BDE74(0xCu);
      sub_1B03BDD7C(&v140, 12);
    }

    else if ((v59 & 1) == 0)
    {
      v97 = (a3 + *(v139 + 32));
      v98 = *v97;
      LOBYTE(v140) = *(v97 + 4);
      if (sub_1B0B4B0F4(v129, v98 | (v140 << 32)))
      {
        v99 = v128;
        sub_1B0AEAE5C(v60, v128, type metadata accessor for MailboxTaskLogger);
        v100 = v60;
        v101 = v127;
        sub_1B0AEAE5C(v100, v127, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v102 = sub_1B0E43988();
        v103 = sub_1B0E45908();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v142[0] = v133;
          *v104 = 68159235;
          v135 = v14;
          *(v104 + 4) = 2;
          *(v104 + 8) = 256;
          v105 = v134;
          v106 = *(v134 + 20);
          v126 = v57;
          v107 = &v101[v106];
          *(v104 + 10) = v101[v106];
          *(v104 + 11) = 2082;
          v108 = &v99[*(v105 + 20)];
          *(v104 + 13) = sub_1B0399D64(*(v108 + 1), *(v108 + 2), v142);
          *(v104 + 21) = 1040;
          *(v104 + 23) = 2;
          *(v104 + 27) = 512;
          LOWORD(v107) = *(v107 + 12);
          sub_1B0AEAEC4(v101, type metadata accessor for MailboxTaskLogger);
          *(v104 + 29) = v107;
          *(v104 + 31) = 2160;
          *(v104 + 33) = 0x786F626C69616DLL;
          *(v104 + 41) = 2085;
          v109 = *(v108 + 4);
          LODWORD(v108) = *(v108 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v99, type metadata accessor for MailboxTaskLogger);
          v140 = v109;
          v141 = v108;
          v110 = sub_1B0E44BA8();
          v112 = sub_1B0399D64(v110, v111, v142);
          v14 = v135;
          v80 = v139;

          *(v104 + 43) = v112;
          v57 = v126;
          _os_log_impl(&dword_1B0389000, v102, v103, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting re-run.", v104, 0x33u);
          v113 = v133;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v113, -1, -1);
          MEMORY[0x1B272C230](v104, -1, -1);
        }

        else
        {
          sub_1B0AEAEC4(v101, type metadata accessor for MailboxTaskLogger);

          sub_1B0AEAEC4(v99, type metadata accessor for MailboxTaskLogger);
        }

        sub_1B03BDE74(0xCu);
        sub_1B03BDD7C(&v140, 12);
        a3 = v138;
      }
    }
  }

  v114 = v136;
  sub_1B0AEAE5C(a1 + v58, v136, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B0AEAEC4(v114, _s15MissingMessagesOMa);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03BDE74(1u);
    sub_1B03BDD7C(&v140, 1);
  }

  v116 = (a3 + *(v80 + 36));
  if ((v116[1] & 1) == 0)
  {
    v117 = *v116;
    v118 = *(v57 + 60);
    v119 = type metadata accessor for MessageBatches(0);
    if (!(*(*(v119 - 8) + 48))(a1 + v118, 1, v119))
    {
      LOBYTE(v140) = 0;
      sub_1B0B3EDEC(v117);
    }
  }

  return sub_1B0AEAEC4(v14, _s15MissingMessagesOMa);
}

uint64_t sub_1B0AE7418(char *a1, uint64_t a2)
{
  v179 = a1;
  v168 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v172 = &v160 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v160 - v7;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v174 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v160 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v160 - v12;
  v173 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v173);
  v14 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v165 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v160 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v160 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v160 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v160 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v160 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v161 = &v160 - v31;
  v178 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v178);
  v171 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v169 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v163 = &v160 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v170 = &v160 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v160 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v160 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v160 - v46;
  v48 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0AEAE5C(a2, v50, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B0AEF094(v50, v47, _s15MissingMessagesO10IncompleteVMa);
      v52 = &v47[*(v178 + 20)];
      if (v52[4])
      {
        v53 = v179;
        v54 = v164;
        sub_1B0AEAE5C(v179, v164, type metadata accessor for MailboxTaskLogger);
        sub_1B0AEAE5C(v53, v24, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v55 = v163;
        sub_1B0AEAE5C(v47, v163, _s15MissingMessagesO10IncompleteVMa);
        v56 = v169;
        sub_1B0AEAE5C(v47, v169, _s15MissingMessagesO10IncompleteVMa);
        v57 = v171;
        sub_1B0AEAE5C(v47, v171, _s15MissingMessagesO10IncompleteVMa);
        v58 = sub_1B0E43988();
        v59 = sub_1B0E45908();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v179 = v47;
          v61 = v60;
          v177 = swift_slowAlloc();
          v182[0] = v177;
          *v61 = 68160003;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          v62 = v173;
          v63 = &v24[*(v173 + 20)];
          *(v61 + 10) = *v63;
          *(v61 + 11) = 2082;
          v64 = v55;
          v65 = v54 + *(v62 + 20);
          *(v61 + 13) = sub_1B0399D64(*(v65 + 8), *(v65 + 16), v182);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          LOWORD(v63) = *(v63 + 12);
          sub_1B0AEAEC4(v24, type metadata accessor for MailboxTaskLogger);
          *(v61 + 29) = v63;
          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          v66 = *(v65 + 32);
          LODWORD(v63) = *(v65 + 40);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AEAEC4(v54, type metadata accessor for MailboxTaskLogger);
          v180 = v66;
          v181 = v63;
          v67 = sub_1B0E44BA8();
          v69 = sub_1B0399D64(v67, v68, v182);

          *(v61 + 43) = v69;
          *(v61 + 51) = 2048;
          v70 = v167;
          sub_1B03B5C80(v64, v167, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v71 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v70, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v72 = _s15MissingMessagesO10IncompleteVMa;
          sub_1B0AEAEC4(v64, _s15MissingMessagesO10IncompleteVMa);
          *(v61 + 53) = v71;
          *(v61 + 61) = 2048;
          _s15MissingMessagesO8ProgressVMa(0);
          v73 = v169;
          v74 = MessageIdentifierSet.count.getter();
          sub_1B0AEAEC4(v73, _s15MissingMessagesO10IncompleteVMa);
          *(v61 + 63) = v74;
          *(v61 + 71) = 2082;
          v75 = v171;
          v76 = v174;
          sub_1B0AEAE5C(v171 + *(v178 + 24), v174, _s15MissingMessagesO11QueriedUIDsVMa);
          v77 = v176;
          sub_1B03C60A4(v76, v176, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v78 = MessageIdentifierSet.debugDescription.getter();
          v80 = v79;
          sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0AEAEC4(v75, _s15MissingMessagesO10IncompleteVMa);
          v81 = sub_1B0399D64(v78, v80, v182);

          *(v61 + 73) = v81;
          _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: nil, queriedUIDs: %{public}s", v61, 0x51u);
          v82 = v177;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v82, -1, -1);
          MEMORY[0x1B272C230](v61, -1, -1);

          v83 = v179;
LABEL_19:
          v107 = v72;
          return sub_1B0AEAEC4(v83, v107);
        }

        sub_1B0AEAEC4(v56, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v55, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v24, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v57, _s15MissingMessagesO10IncompleteVMa);
        v158 = v54;
        goto LABEL_15;
      }

      LODWORD(v177) = *v52;
      v108 = v179;
      v109 = v161;
      sub_1B0AEAE5C(v179, v161, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v108, v29, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0AEAE5C(v47, v44, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0AEAE5C(v47, v41, _s15MissingMessagesO10IncompleteVMa);
      v110 = v170;
      sub_1B0AEAE5C(v47, v170, _s15MissingMessagesO10IncompleteVMa);
      v111 = sub_1B0E43988();
      v112 = sub_1B0E45908();
      if (!os_log_type_enabled(v111, v112))
      {
        sub_1B0AEAEC4(v41, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v44, _s15MissingMessagesO10IncompleteVMa);
        sub_1B0AEAEC4(v29, type metadata accessor for MailboxTaskLogger);

        sub_1B0AEAEC4(v110, _s15MissingMessagesO10IncompleteVMa);
        v158 = v109;
LABEL_15:
        sub_1B0AEAEC4(v158, type metadata accessor for MailboxTaskLogger);
        v83 = v47;
        v107 = _s15MissingMessagesO10IncompleteVMa;
        return sub_1B0AEAEC4(v83, v107);
      }

      v113 = v41;
      v114 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v182[0] = v172;
      *v114 = 68160259;
      LODWORD(v171) = v112;
      *(v114 + 4) = 2;
      *(v114 + 8) = 256;
      v115 = v173;
      v116 = &v29[*(v173 + 20)];
      *(v114 + 10) = *v116;
      *(v114 + 11) = 2082;
      v117 = v109;
      v118 = v109 + *(v115 + 20);
      *(v114 + 13) = sub_1B0399D64(*(v118 + 8), *(v118 + 16), v182);
      *(v114 + 21) = 1040;
      *(v114 + 23) = 2;
      *(v114 + 27) = 512;
      LOWORD(v116) = *(v116 + 12);
      sub_1B0AEAEC4(v29, type metadata accessor for MailboxTaskLogger);
      *(v114 + 29) = v116;
      *(v114 + 31) = 2160;
      *(v114 + 33) = 0x786F626C69616DLL;
      *(v114 + 41) = 2085;
      v119 = *(v118 + 32);
      LODWORD(v118) = *(v118 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v117, type metadata accessor for MailboxTaskLogger);
      v180 = v119;
      v181 = v118;
      v120 = sub_1B0E44BA8();
      v122 = sub_1B0399D64(v120, v121, v182);

      *(v114 + 43) = v122;
      *(v114 + 51) = 2048;
      v123 = v167;
      sub_1B03B5C80(v44, v167, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v179 = v47;
      v124 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v123, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v44, _s15MissingMessagesO10IncompleteVMa);
      *(v114 + 53) = v124;
      *(v114 + 61) = 2048;
      _s15MissingMessagesO8ProgressVMa(0);
      v125 = MessageIdentifierSet.count.getter();
      sub_1B0AEAEC4(v113, _s15MissingMessagesO10IncompleteVMa);
      *(v114 + 63) = v125;
      *(v114 + 71) = 1024;
      *(v114 + 73) = v177;
      *(v114 + 77) = 2082;
      v126 = v170;
      v127 = v174;
      sub_1B0AEAE5C(v170 + *(v178 + 24), v174, _s15MissingMessagesO11QueriedUIDsVMa);
      v128 = v176;
      sub_1B03C60A4(v127, v176, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v129 = MessageIdentifierSet.debugDescription.getter();
      v131 = v130;
      sub_1B0398EFC(v128, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v126, _s15MissingMessagesO10IncompleteVMa);
      v132 = sub_1B0399D64(v129, v131, v182);

      *(v114 + 79) = v132;
      _os_log_impl(&dword_1B0389000, v111, v171, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Total missing message count: %ld; %ld done; fetched-window upper bound: %u, queriedUIDs: %{public}s", v114, 0x57u);
      v133 = v172;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v133, -1, -1);
      MEMORY[0x1B272C230](v114, -1, -1);

      v83 = v179;
      v107 = _s15MissingMessagesO10IncompleteVMa;
      return sub_1B0AEAEC4(v83, v107);
    }

    v84 = v177;
    sub_1B0AEF094(v50, v177, _s15MissingMessagesO8CompleteVMa);
    if (*(v84 + 4))
    {
      v85 = v179;
      v86 = v165;
      sub_1B0AEAE5C(v179, v165, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v85, v14, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v87 = v166;
      sub_1B0AEAE5C(v84, v166, _s15MissingMessagesO8CompleteVMa);
      v88 = sub_1B0E43988();
      v89 = sub_1B0E45908();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v182[0] = v179;
        *v90 = 68159491;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v91 = v173;
        v92 = &v14[*(v173 + 20)];
        *(v90 + 10) = *v92;
        *(v90 + 11) = 2082;
        v93 = v86 + *(v91 + 20);
        *(v90 + 13) = sub_1B0399D64(*(v93 + 8), *(v93 + 16), v182);
        *(v90 + 21) = 1040;
        *(v90 + 23) = 2;
        *(v90 + 27) = 512;
        LOWORD(v92) = *(v92 + 12);
        sub_1B0AEAEC4(v14, type metadata accessor for MailboxTaskLogger);
        *(v90 + 29) = v92;
        *(v90 + 31) = 2160;
        *(v90 + 33) = 0x786F626C69616DLL;
        *(v90 + 41) = 2085;
        v94 = *(v93 + 32);
        v95 = *(v93 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v86, type metadata accessor for MailboxTaskLogger);
        v180 = v94;
        v181 = v95;
        v96 = sub_1B0E44BA8();
        v98 = sub_1B0399D64(v96, v97, v182);

        *(v90 + 43) = v98;
        *(v90 + 51) = 2082;
        v99 = v174;
        sub_1B0AEAE5C(v87 + *(v168 + 20), v174, _s15MissingMessagesO11QueriedUIDsVMa);
        v100 = v99;
        v101 = v176;
        sub_1B03C60A4(v100, v176, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v102 = MessageIdentifierSet.debugDescription.getter();
        v104 = v103;
        sub_1B0398EFC(v101, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AEAEC4(v87, _s15MissingMessagesO8CompleteVMa);
        v105 = sub_1B0399D64(v102, v104, v182);

        *(v90 + 53) = v105;
        _os_log_impl(&dword_1B0389000, v88, v89, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched-window upper bound: nil, queriedUIDs: %{public}s", v90, 0x3Du);
        v106 = v179;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v106, -1, -1);
        MEMORY[0x1B272C230](v90, -1, -1);

        v83 = v84;
        v107 = _s15MissingMessagesO8CompleteVMa;
        return sub_1B0AEAEC4(v83, v107);
      }

      sub_1B0AEAEC4(v14, type metadata accessor for MailboxTaskLogger);

      v72 = _s15MissingMessagesO8CompleteVMa;
      sub_1B0AEAEC4(v87, _s15MissingMessagesO8CompleteVMa);
      v159 = v86;
    }

    else
    {
      v134 = *v84;
      v135 = v179;
      v136 = v162;
      sub_1B0AEAE5C(v179, v162, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(v135, v19, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v137 = v172;
      sub_1B0AEAE5C(v84, v172, _s15MissingMessagesO8CompleteVMa);
      v138 = sub_1B0E43988();
      v139 = sub_1B0E45908();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v182[0] = v141;
        *v140 = 68159747;
        *(v140 + 4) = 2;
        *(v140 + 8) = 256;
        v142 = v173;
        v143 = &v19[*(v173 + 20)];
        *(v140 + 10) = *v143;
        *(v140 + 11) = 2082;
        v144 = v136 + *(v142 + 20);
        *(v140 + 13) = sub_1B0399D64(*(v144 + 8), *(v144 + 16), v182);
        *(v140 + 21) = 1040;
        *(v140 + 23) = 2;
        *(v140 + 27) = 512;
        LOWORD(v143) = *(v143 + 12);
        sub_1B0AEAEC4(v19, type metadata accessor for MailboxTaskLogger);
        *(v140 + 29) = v143;
        *(v140 + 31) = 2160;
        *(v140 + 33) = 0x786F626C69616DLL;
        *(v140 + 41) = 2085;
        v145 = v136;
        v146 = *(v144 + 32);
        LODWORD(v144) = *(v144 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v145, type metadata accessor for MailboxTaskLogger);
        v180 = v146;
        v181 = v144;
        v147 = sub_1B0E44BA8();
        v149 = sub_1B0399D64(v147, v148, v182);

        *(v140 + 43) = v149;
        *(v140 + 51) = 1024;
        *(v140 + 53) = v134;
        *(v140 + 57) = 2082;
        v150 = v172;
        v151 = v174;
        sub_1B0AEAE5C(v172 + *(v168 + 20), v174, _s15MissingMessagesO11QueriedUIDsVMa);
        v152 = v151;
        v153 = v176;
        sub_1B03C60A4(v152, v176, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v154 = MessageIdentifierSet.debugDescription.getter();
        v156 = v155;
        sub_1B0398EFC(v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AEAEC4(v150, _s15MissingMessagesO8CompleteVMa);
        v157 = sub_1B0399D64(v154, v156, v182);

        *(v140 + 59) = v157;
        _os_log_impl(&dword_1B0389000, v138, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No missing message; fetched window upper bound: %u, queriedUIDs: %{public}s", v140, 0x43u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v141, -1, -1);
        MEMORY[0x1B272C230](v140, -1, -1);

        v83 = v177;
        v107 = _s15MissingMessagesO8CompleteVMa;
        return sub_1B0AEAEC4(v83, v107);
      }

      sub_1B0AEAEC4(v19, type metadata accessor for MailboxTaskLogger);

      v72 = _s15MissingMessagesO8CompleteVMa;
      sub_1B0AEAEC4(v137, _s15MissingMessagesO8CompleteVMa);
      v159 = v136;
    }

    sub_1B0AEAEC4(v159, type metadata accessor for MailboxTaskLogger);
    v83 = v84;
    goto LABEL_19;
  }

  return result;
}

double sub_1B0AE8820()
{
  if (qword_1EB6DDA00 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0AE8894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0AE4AE0(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  a7[2] = v10;
  return result;
}

uint64_t sub_1B0AE8914@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  v273 = a8;
  v270 = a7;
  v282 = a6;
  v268 = a5;
  v256 = a3;
  v269 = a2;
  v271 = a9;
  v285 = a17;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4250, &unk_1B0EC47D0);
  MEMORY[0x1EEE9AC00](v259);
  v260 = &v242 - v19;
  v20 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v265 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v266 = &v242 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v280 = &v242 - v25;
  v263 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v263);
  v262 = &v242 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v276 = &v242 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v246 = &v242 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v248 = &v242 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v245 = &v242 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v242 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v257 = (&v242 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v274 = &v242 - v40;
  v284 = sub_1B0E439A8();
  v286 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v264 = &v242 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v255 = &v242 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v251 = &v242 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v275 = &v242 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v267 = &v242 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v272 = &v242 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v249 = &v242 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v242 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v57);
  v261 = &v242 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v258 = &v242 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v277 = &v242 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v253 = &v242 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v244 = &v242 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v243 = &v242 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v250 = &v242 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v254 = &v242 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v252 = &v242 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v242 = &v242 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v242 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v242 - v81;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v242 - v84;
  MessageIdentifierSet.subtracting(_:)(a4, &v242 - v84);
  MessageIdentifierSet.ranges.getter(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v86 = sub_1B0E46E18();
  v87 = sub_1B0E46E28();
  sub_1B0398EFC(v56, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v88 = v86 == v87;
  v89 = v285;
  v281 = a1;
  v278 = a4;
  v279 = v85;
  v283 = v57;
  if (!v88)
  {
    v110 = v284;
    MessageIdentifierSet.ranges.getter(v56);
    v111 = sub_1B0E46E18();
    v112 = sub_1B0E46E28();
    v113 = sub_1B0E46E18();
    result = sub_1B0E46E28();
    if (v111 < v113 || result < v111)
    {
      __break(1u);
    }

    else
    {
      v115 = sub_1B0E46E18();
      v116 = sub_1B0E46E28();
      result = sub_1B0398EFC(v56, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v112 >= v115 && v116 >= v112)
      {
        if (!__OFSUB__(v112, v111))
        {
          v117 = *(v286 + 16);
          if (v112 - v111 > 19)
          {
            v148 = v285;
            v149 = v110;
            v117(v255, v285, v110);
            v150 = v248;
            sub_1B0AEAE5C(v148, v248, type metadata accessor for MailboxTaskLogger);
            v151 = v246;
            sub_1B0AEAE5C(v148, v246, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v152 = v243;
            sub_1B03B5C80(v85, v243, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v105 = v278;
            v153 = v244;
            sub_1B03B5C80(v278, v244, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B03B5C80(v281, v253, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v154 = sub_1B0E43988();
            v155 = sub_1B0E45908();
            v156 = os_log_type_enabled(v154, v155);
            v157 = v268;
            if (v156)
            {
              v158 = swift_slowAlloc();
              v275 = swift_slowAlloc();
              v289 = v275;
              *v158 = 68160003;
              LODWORD(v274) = v155;
              *(v158 + 4) = 2;
              *(v158 + 8) = 256;
              v159 = v263;
              v160 = v151 + *(v263 + 20);
              *(v158 + 10) = *v160;
              *(v158 + 11) = 2082;
              v161 = *(v159 + 20);
              v257 = v154;
              v162 = v151;
              v163 = v150 + v161;
              *(v158 + 13) = sub_1B0399D64(*(v150 + v161 + 8), *(v150 + v161 + 16), &v289);
              *(v158 + 21) = 1040;
              *(v158 + 23) = 2;
              *(v158 + 27) = 512;
              LOWORD(v160) = *(v160 + 24);
              sub_1B0AEAEC4(v162, type metadata accessor for MailboxTaskLogger);
              *(v158 + 29) = v160;
              *(v158 + 31) = 2160;
              *(v158 + 33) = 0x786F626C69616DLL;
              *(v158 + 41) = 2085;
              v164 = *(v163 + 32);
              LODWORD(v163) = *(v163 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AEAEC4(v150, type metadata accessor for MailboxTaskLogger);
              v287 = v164;
              v288 = v163;
              v165 = sub_1B0E44BA8();
              v167 = sub_1B0399D64(v165, v166, &v289);

              *(v158 + 43) = v167;
              *(v158 + 51) = 2048;
              v168 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v152, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v158 + 53) = v168;
              *(v158 + 61) = 2048;
              v169 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v158 + 63) = v169;
              *(v158 + 71) = 2048;
              v170 = v253;
              v171 = MessageIdentifierSet.count.getter();
              v105 = v278;
              sub_1B0398EFC(v170, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v158 + 73) = v171;
              v172 = v257;
              _os_log_impl(&dword_1B0389000, v257, v274, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld new UIDs missing locally. (%ld locally, %ld on server)", v158, 0x51u);
              v173 = v275;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v173, -1, -1);
              MEMORY[0x1B272C230](v158, -1, -1);

              v257 = *(v286 + 8);
              (v257)(v255, v149);
            }

            else
            {
              sub_1B0398EFC(v253, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0398EFC(v152, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AEAEC4(v151, type metadata accessor for MailboxTaskLogger);

              v257 = *(v286 + 8);
              (v257)(v255, v149);
              sub_1B0AEAEC4(v150, type metadata accessor for MailboxTaskLogger);
            }

            v174 = v273;
            goto LABEL_22;
          }

          v118 = v251;
          v119 = v285;
          v120 = v110;
          v117(v251, v285, v110);
          v121 = v247;
          sub_1B0AEAE5C(v119, v247, type metadata accessor for MailboxTaskLogger);
          v122 = v245;
          sub_1B0AEAE5C(v119, v245, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v123 = v242;
          sub_1B03B5C80(v85, v242, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B03B5C80(v85, v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v105 = v278;
          sub_1B03B5C80(v278, v254, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v124 = v250;
          sub_1B03B5C80(v281, v250, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v125 = sub_1B0E43988();
          v126 = sub_1B0E45908();
          v275 = v125;
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v274 = swift_slowAlloc();
            v289 = v274;
            *v127 = 68160259;
            *(v127 + 4) = 2;
            *(v127 + 8) = 256;
            v128 = v263;
            v129 = *(v263 + 20);
            LODWORD(v257) = v126;
            v130 = v122 + v129;
            *(v127 + 10) = *(v122 + v129);
            *(v127 + 11) = 2082;
            v131 = v121 + *(v128 + 20);
            *(v127 + 13) = sub_1B0399D64(*(v131 + 8), *(v131 + 16), &v289);
            *(v127 + 21) = 1040;
            *(v127 + 23) = 2;
            *(v127 + 27) = 512;
            LOWORD(v130) = *(v130 + 24);
            sub_1B0AEAEC4(v122, type metadata accessor for MailboxTaskLogger);
            *(v127 + 29) = v130;
            *(v127 + 31) = 2160;
            *(v127 + 33) = 0x786F626C69616DLL;
            *(v127 + 41) = 2085;
            v132 = *(v131 + 32);
            LODWORD(v131) = *(v131 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0AEAEC4(v121, type metadata accessor for MailboxTaskLogger);
            v287 = v132;
            v288 = v131;
            v133 = sub_1B0E44BA8();
            v135 = sub_1B0399D64(v133, v134, &v289);

            *(v127 + 43) = v135;
            *(v127 + 51) = 2048;
            v136 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v123, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v127 + 53) = v136;
            *(v127 + 61) = 2082;
            v137 = v252;
            v138 = MessageIdentifierSet.debugDescription.getter();
            v140 = v139;
            sub_1B0398EFC(v137, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v141 = sub_1B0399D64(v138, v140, &v289);
            v120 = v284;

            *(v127 + 63) = v141;
            *(v127 + 71) = 2048;
            v142 = v254;
            v143 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v142, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v127 + 73) = v143;
            *(v127 + 81) = 2048;
            v144 = v250;
            v145 = MessageIdentifierSet.count.getter();
            sub_1B0398EFC(v144, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            *(v127 + 83) = v145;
            v146 = v275;
            _os_log_impl(&dword_1B0389000, v275, v257, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld UIDs %{public}s to be missing locally. (%ld locally, %ld on server)", v127, 0x5Bu);
            v147 = v274;
            swift_arrayDestroy();
            v105 = v278;
            MEMORY[0x1B272C230](v147, -1, -1);
            MEMORY[0x1B272C230](v127, -1, -1);

            v107 = *(v286 + 8);
            v108 = v251;
          }

          else
          {
            sub_1B0398EFC(v124, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v254, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v123, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AEAEC4(v122, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AEAEC4(v121, type metadata accessor for MailboxTaskLogger);
            v107 = *(v286 + 8);
            v108 = v118;
          }

          v109 = v120;
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

  (*(v286 + 16))(v275, v285, v284);
  sub_1B0AEAE5C(v89, v274, type metadata accessor for MailboxTaskLogger);
  v90 = v257;
  sub_1B0AEAE5C(v89, v257, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(a4, v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(a1, v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v91 = sub_1B0E43988();
  v92 = sub_1B0E45908();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v289 = v255;
    *v93 = 68159747;
    *(v93 + 4) = 2;
    *(v93 + 8) = 256;
    v94 = v263;
    v95 = v90 + *(v263 + 20);
    *(v93 + 10) = *v95;
    *(v93 + 11) = 2082;
    v96 = v274;
    v97 = &v274[*(v94 + 20)];
    *(v93 + 13) = sub_1B0399D64(*(v97 + 1), *(v97 + 2), &v289);
    *(v93 + 21) = 1040;
    *(v93 + 23) = 2;
    *(v93 + 27) = 512;
    LOWORD(v95) = *(v95 + 12);
    sub_1B0AEAEC4(v90, type metadata accessor for MailboxTaskLogger);
    *(v93 + 29) = v95;
    *(v93 + 31) = 2160;
    *(v93 + 33) = 0x786F626C69616DLL;
    *(v93 + 41) = 2085;
    v98 = *(v97 + 4);
    v99 = *(v97 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AEAEC4(v96, type metadata accessor for MailboxTaskLogger);
    v287 = v98;
    v288 = v99;
    v100 = sub_1B0E44BA8();
    v102 = sub_1B0399D64(v100, v101, &v289);

    *(v93 + 43) = v102;
    *(v93 + 51) = 2048;
    v103 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v93 + 53) = v103;
    *(v93 + 61) = 2048;
    v104 = MessageIdentifierSet.count.getter();
    v105 = v278;
    sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v93 + 63) = v104;
    _os_log_impl(&dword_1B0389000, v91, v92, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found no UIDs to be missing locally. (%ld locally, %ld on server)", v93, 0x47u);
    v106 = v255;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v106, -1, -1);
    MEMORY[0x1B272C230](v93, -1, -1);

    v107 = *(v286 + 8);
    v108 = v275;
    v109 = v284;
LABEL_18:
    v257 = v107;
    (v107)(v108, v109);
    goto LABEL_19;
  }

  v105 = a4;
  sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AEAEC4(v90, type metadata accessor for MailboxTaskLogger);

  v257 = *(v286 + 8);
  (v257)(v275, v284);
  sub_1B0AEAEC4(v274, type metadata accessor for MailboxTaskLogger);
LABEL_19:
  v174 = v273;
  v157 = v268;
LABEL_22:
  v175 = v272;
  v268 = a16;
  if ((v174 & 0x10000000000) != 0)
  {
    LODWORD(v274) = 0;
    v275 = 1;
  }

  else
  {
    v275 = HIDWORD(v174) & 1;
    if (v256)
    {
      v176 = v249;
      MessageIdentifierSet.ranges.getter(v249);
      v177 = sub_1B0B4A3E8();
      v179 = v178;
      sub_1B0398EFC(v176, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v179)
      {
        if ((v174 & 0x100000000) != 0)
        {
          LODWORD(v180) = 0;
        }

        else
        {
          LODWORD(v180) = v174;
        }
      }

      else
      {
        v275 = 0;
        v180 = HIDWORD(v177);
        if (v174 <= HIDWORD(v177))
        {
          v181 = HIDWORD(v177);
        }

        else
        {
          v181 = v174;
        }

        if ((v174 & 0x100000000) == 0)
        {
          LODWORD(v180) = v181;
        }
      }

      LODWORD(v274) = v180;
    }

    else
    {
      LODWORD(v274) = v174;
    }
  }

  MessageIdentifierSet.ranges.getter(v175);
  v182 = sub_1B0B4A3E8();
  v184 = v183;
  sub_1B0398EFC(v175, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v185 = HIDWORD(v182);
  if (v184)
  {
    LODWORD(v185) = 0;
  }

  LODWORD(v272) = v185;
  v186 = HIDWORD(v157);
  if (v282)
  {
    LODWORD(v186) = 0;
  }

  LODWORD(v273) = v186;
  v187 = v267;
  v188 = v279;
  MessageIdentifierSet.ranges.getter(v267);
  v189 = sub_1B0B4A3E8();
  v190 = v105;
  v192 = v191;
  sub_1B0398EFC(v187, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v193 = HIDWORD(v189);
  LOBYTE(v287) = v192 & 1;
  if (v192)
  {
    v193 = 0;
  }

  LOBYTE(v287) = BYTE5(v174) & 1;
  LOBYTE(v289) = a11 & 1;
  v194 = v280;
  sub_1B0AF5C8C(v193 | ((v192 & 1) << 32), v269 | ((HIDWORD(v269) & 1) << 32), v270, a10 | ((a11 & 1) << 32), v280);

  v195 = v268;
  if (v268)
  {
    LODWORD(v270) = v184;
    v196 = v259;
    v197 = *(v259 + 48);
    LOBYTE(v287) = a15 & 1;
    v198 = v260;
    sub_1B0AF1F70(a12, a13 & 0xFFFFFFFF00000101, a14 | ((a15 & 1) << 32), v268);
    LOBYTE(v287) = a15 & 1;
    sub_1B0AF3D34(v195, v198 + v197);

    v199 = *(v196 + 48);
    v200 = v277;
    sub_1B03C60A4(v198, v277, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v201 = v266;
    sub_1B0AEF094(v198 + v199, v266, _s15MissingMessagesO11QueriedUIDsVMa);
    v202 = v285;
    v203 = v264;
    (*(v286 + 16))(v264, v285, v284);
    sub_1B0AEAE5C(v202, v276, type metadata accessor for MailboxTaskLogger);
    v204 = v262;
    v205 = v201;
    sub_1B0AEAE5C(v202, v262, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v206 = v258;
    sub_1B03B5C80(v200, v258, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v207 = v261;
    sub_1B03B5C80(v200, v261, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v208 = v265;
    sub_1B0AEAE5C(v205, v265, _s15MissingMessagesO11QueriedUIDsVMa);
    v209 = sub_1B0E43988();
    v210 = sub_1B0E45908();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      v289 = v269;
      *v211 = 68160003;
      *(v211 + 4) = 2;
      *(v211 + 8) = 256;
      v212 = v263;
      v213 = v204;
      v214 = v204 + *(v263 + 20);
      *(v211 + 10) = *v214;
      *(v211 + 11) = 2082;
      v215 = v276;
      v216 = v276 + *(v212 + 20);
      *(v211 + 13) = sub_1B0399D64(*(v216 + 8), *(v216 + 16), &v289);
      *(v211 + 21) = 1040;
      *(v211 + 23) = 2;
      *(v211 + 27) = 512;
      LOWORD(v214) = *(v214 + 24);
      sub_1B0AEAEC4(v213, type metadata accessor for MailboxTaskLogger);
      *(v211 + 29) = v214;
      *(v211 + 31) = 2160;
      *(v211 + 33) = 0x786F626C69616DLL;
      *(v211 + 41) = 2085;
      v217 = *(v216 + 32);
      LODWORD(v216) = *(v216 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AEAEC4(v215, type metadata accessor for MailboxTaskLogger);
      v287 = v217;
      v288 = v216;
      v218 = sub_1B0E44BA8();
      v220 = sub_1B0399D64(v218, v219, &v289);

      *(v211 + 43) = v220;
      *(v211 + 51) = 2048;
      v221 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v206, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v211 + 53) = v221;
      *(v211 + 61) = 2082;
      v222 = MessageIdentifierSet.debugDescription.getter();
      v224 = v223;
      sub_1B0398EFC(v207, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v225 = sub_1B0399D64(v222, v224, &v289);
      v226 = v266;

      *(v211 + 63) = v225;
      *(v211 + 71) = 2082;
      v227 = v265;
      v228 = MessageIdentifierSet.debugDescription.getter();
      v230 = v229;
      sub_1B0AEAEC4(v227, _s15MissingMessagesO11QueriedUIDsVMa);
      v231 = sub_1B0399D64(v228, v230, &v289);

      *(v211 + 73) = v231;
      _os_log_impl(&dword_1B0389000, v209, v210, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld UIDs for temporarily growing window-of-interest: %{public}s (did query %{public}s).", v211, 0x51u);
      v232 = v269;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v232, -1, -1);
      MEMORY[0x1B272C230](v211, -1, -1);

      (*(v286 + 8))(v264, v284);
    }

    else
    {
      v226 = v205;
      sub_1B0398EFC(v206, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AEAEC4(v204, type metadata accessor for MailboxTaskLogger);

      sub_1B0AEAEC4(v208, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B0398EFC(v207, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      (v257)(v203, v284);
      sub_1B0AEAEC4(v276, type metadata accessor for MailboxTaskLogger);
    }

    v236 = v271;
    v237 = v277;
    v238 = v279;
    MessageIdentifierSet.union(_:)(v277, v271);
    v239 = _s15MissingMessagesO10NewMissingVMa(0);
    v240 = v280;
    MessageIdentifierSet.union(_:)(v226, v236 + *(v239 + 24));
    sub_1B0AEAEC4(v285, type metadata accessor for MailboxTaskLogger);
    sub_1B0398EFC(v278, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v281, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AEAEC4(v226, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_1B0398EFC(v237, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AEAEC4(v240, _s15MissingMessagesO11QueriedUIDsVMa);
    result = sub_1B0398EFC(v238, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v241 = v236 + *(v239 + 20);
    *v241 = v272;
    *(v241 + 4) = v270 & 1;
    *(v241 + 8) = v273;
    *(v241 + 12) = v282 & 1;
    *(v241 + 16) = v274;
    *(v241 + 20) = v275;
  }

  else
  {
    sub_1B0AEAEC4(v285, type metadata accessor for MailboxTaskLogger);
    sub_1B0398EFC(v190, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v281, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v233 = v271;
    sub_1B03C60A4(v188, v271, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v234 = _s15MissingMessagesO10NewMissingVMa(0);
    v235 = v233 + *(v234 + 20);
    *v235 = v272;
    *(v235 + 4) = v184 & 1;
    *(v235 + 8) = v273;
    *(v235 + 12) = v282 & 1;
    *(v235 + 16) = v274;
    *(v235 + 20) = v275;
    return sub_1B0AEF094(v194, v233 + *(v234 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
  }

  return result;
}

uint64_t sub_1B0AEA630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](Missing);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4248, &unk_1B0EC47C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v17 = &v22 + *(v16 + 56) - v14;
  sub_1B0AEAE5C(a1, &v22 - v14, type metadata accessor for FindMissingMessages.CommandID);
  sub_1B0AEAE5C(a2, v17, type metadata accessor for FindMissingMessages.CommandID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0AEAE5C(v15, v12, type metadata accessor for FindMissingMessages.CommandID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B03C60A4(v17, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v20 = sub_1B0E46E08();
      sub_1B0398EFC(v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0AEAEC4(v15, type metadata accessor for FindMissingMessages.CommandID);
      return v20 & 1;
    }

    sub_1B0398EFC(v12, &unk_1EB6E26C0, &unk_1B0E9DE10);
    goto LABEL_10;
  }

  sub_1B0AEAE5C(v15, v9, type metadata accessor for FindMissingMessages.CommandID);
  v18 = *v9;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_1B0398EFC(v15, &qword_1EB6E4248, &unk_1B0EC47C0);
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
    sub_1B0AEAEC4(v15, type metadata accessor for FindMissingMessages.CommandID);
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
  sub_1B0AEAEC4(v15, type metadata accessor for FindMissingMessages.CommandID);
LABEL_11:
  v20 = 0;
  return v20 & 1;
}

BOOL sub_1B0AEA960(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 4);
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
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 12);
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
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  Missing = type metadata accessor for FindMissingMessages.Completed(0);
  if ((sub_1B0B4DB74(a1 + Missing[6], a2 + Missing[6]) & 1) == 0 || *(a1 + Missing[7]) != *(a2 + Missing[7]))
  {
    return 0;
  }

  v8 = Missing[8];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v9)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = Missing[9];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if ((v15 & 1) == 0)
  {
    if (*v16 != *v14)
    {
      v17 = 1;
    }

    return (v17 & 1) == 0;
  }

  return (v17 & 1) != 0;
}

uint64_t sub_1B0AEAA80(int a1, uint64_t a2)
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

void sub_1B0AEAB08(uint64_t a1)
{
  sub_1B043CC04(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v2 <= 0x3F)
    {
      sub_1B0AD434C(319, &qword_1EB6DCC80, &type metadata for FetchedWindow);
      if (v3 <= 0x3F)
      {
        sub_1B0AD434C(319, &qword_1EB6DACD0, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          sub_1B043CC04(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v5 <= 0x3F)
          {
            sub_1B0AD434C(319, &qword_1EB6DDA08, &_s20GrowWindowOfInterestVN);
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

unint64_t sub_1B0AEACE0()
{
  result = qword_1EB6DD9F8;
  if (!qword_1EB6DD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9F8);
  }

  return result;
}

uint64_t sub_1B0AEAD9C(uint64_t a1)
{
  result = sub_1B0AEADF4(&qword_1EB6DD9C8, type metadata accessor for FindMissingMessages, &unk_1B0EC4724);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0AEADF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0AEAE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AEAEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AEAF3C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 56;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 32 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        v10 = *v8;
        if (v10 != 1)
        {
          break;
        }

        if (v4)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v9;
        v8 += 32;
        if (v5 == v2)
        {
          goto LABEL_17;
        }
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_10:
      v11 = *(v8 - 6);
      v13 = *(v8 - 2);
      v12 = *(v8 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12;
      if ((result & 1) == 0)
      {
        result = sub_1B0B09FA4(0, *(v7 + 16) + 1, 1);
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B0B09FA4((v14 > 1), v15 + 1, 1);
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 32 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      *(v16 + 48) = v22;
      *(v16 + 56) = v10;
      if (v5 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v17 = *(v7 + 16);
  if (v17)
  {
    sub_1B0B09D44(0, v17, 0);
    v18 = *(v3 + 16);
    v19 = 32;
    do
    {
      v20 = *(v7 + v19);
      v21 = *(v3 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09D44((v21 > 1), v18 + 1, 1);
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + 4 * v18 + 32) = v20;
      v19 += 32;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0AEB130(int a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for DownloadTask.CommandID(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  MEMORY[0x1EEE9AC00](v6);
  v38 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
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
      sub_1B03B5C80(v17, v13, &qword_1EB6E4280, &qword_1B0EC4800);
      sub_1B0AEAE5C(&v13[*(v6 + 52)], v5, type metadata accessor for DownloadTask.CommandID);
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
          sub_1B0AEAEC4(v5, type metadata accessor for DownloadTask.CommandID);
          if (v18 == 3)
          {
LABEL_14:
            sub_1B03C60A4(v13, v37, &qword_1EB6E4280, &qword_1B0EC4800);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B0B0A064(0, *(v15 + 16) + 1, 1);
              v18 = v33;
              v15 = v39;
            }

            v22 = *(v15 + 16);
            v21 = *(v15 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_1B0B0A064((v21 > 1), v22 + 1, 1);
              v18 = v33;
              v15 = v39;
            }

            *(v15 + 16) = v22 + 1;
            sub_1B03C60A4(v37, v15 + v34 + v22 * v16, &qword_1EB6E4280, &qword_1B0EC4800);
            v6 = v35;
            goto LABEL_5;
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_1B0AEAEC4(v5, type metadata accessor for DownloadTask.CommandID);
        if (v18 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B0AEAEC4(v5, type metadata accessor for DownloadTask.CommandID);
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      sub_1B0398EFC(v13, &qword_1EB6E4280, &qword_1B0EC4800);
LABEL_5:
      v17 += v16;
      --v14;
    }

    while (v14);
  }

  v23 = *(v15 + 16);
  if (v23)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v23, 0);
    v24 = v39;
    v25 = v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v26 = *(v32 + 72);
    do
    {
      v27 = v38;
      sub_1B03B5C80(v25, v38, &qword_1EB6E4280, &qword_1B0EC4800);
      v28 = *v27;
      sub_1B0398EFC(v27, &qword_1EB6E4280, &qword_1B0EC4800);
      v39 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B0B09D44((v29 > 1), v30 + 1, 1);
        v24 = v39;
      }

      *(v24 + 16) = v30 + 1;
      *(v24 + 4 * v30 + 32) = v28;
      v25 += v26;
      --v23;
    }

    while (v23);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

uint64_t sub_1B0AEB5AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v41 = a2;
  v49 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  result = sub_1B0A9EA9C(a1 | ((HIDWORD(a1) & 1) << 32), a4);
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
        sub_1B0AEAE5C(v27, v21, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v21, v18, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v18, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v27 += v26;
        if (!--v28)
        {
          goto LABEL_3;
        }
      }

      v29 = *(v18 + 2);
      sub_1B03E1BE8(*v18);
      if (v29 != v52)
      {
        goto LABEL_8;
      }

      v30 = v42;
      while (1)
      {
        sub_1B0AEAE5C(v25, v30, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v30, v13, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v13, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v13);
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
          sub_1B0AEAE5C(v33, v48, type metadata accessor for TaskHistory.Running);
          v36 = v46;
          sub_1B0AEF094(v35, v46, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = *(v36 + 4);
            sub_1B03E1BE8(*(v36 + 8));
            if (v37 == v52)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v36, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEBA2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, double))
{
  v55 = a4;
  v46 = a3;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v44 - v14;
  v15 = type metadata accessor for TaskHistory.Previous(0);
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - v25;
  result = a6(a1, a2 & 1, a5, v24);
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
        sub_1B0AEAE5C(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v26, v22, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v22, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = *(v22 + 2);
      sub_1B03E1BE8(*v22);
      if (v34 != v57)
      {
        goto LABEL_8;
      }

      v35 = v47;
      while (1)
      {
        sub_1B0AEAE5C(v30, v35, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v35, v17, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v17, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v17);
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
          sub_1B0AEAE5C(v38, v53, type metadata accessor for TaskHistory.Running);
          v41 = v51;
          sub_1B0AEF094(v40, v51, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = *(v41 + 4);
            sub_1B03E1BE8(*(v41 + 8));
            if (v42 == v57)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v41, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v50 = a2;
  v41 = a1;
  v49 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - v9;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
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
        sub_1B0AEAE5C(v27, v21, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v21, v17, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v17, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v27 += v26;
        if (!--v28)
        {
          goto LABEL_3;
        }
      }

      v29 = *(v17 + 2);
      sub_1B03E1BE8(*v17);
      if (v29 != v52)
      {
        goto LABEL_8;
      }

      v30 = v42;
      while (1)
      {
        sub_1B0AEAE5C(v25, v30, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v30, v12, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v12, type metadata accessor for TaskHistory.Previous);
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
      sub_1B03E1BE8(*v12);
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
          sub_1B0AEAE5C(v33, v47, type metadata accessor for TaskHistory.Running);
          v36 = v48;
          sub_1B0AEF094(v35, v48, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = *(v36 + 4);
            sub_1B03E1BE8(*(v36 + 8));
            if (v37 == v52)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v36, type metadata accessor for TaskHistory.Running);
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

uint64_t sub_1B0AEC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v43 = a3;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  result = sub_1B0A9F194(a1, a2, a5, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v8;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_1B0AEAE5C(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_1B03E1BE8(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_1B0AEAE5C(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_1B03E1BE8(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_1B0AEAE5C(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1B0AEF094(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_1B03E1BE8(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_1B0AEC7F4(int a1, uint64_t a2)
{
  v44 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](Missing);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
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
      sub_1B03B5C80(v19, v15, &qword_1EB6E4260, &qword_1B0EC47E0);
      sub_1B0AEAE5C(&v15[*(v20 + 52)], v5, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v44 != 2 && ((v5[8] ^ v44) & 1) == 0)
        {
LABEL_11:
          sub_1B03C60A4(v15, v10, &qword_1EB6E4260, &qword_1B0EC47E0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B0A1E4(0, *(v17 + 16) + 1, 1);
            v17 = v45;
          }

          v28 = *(v17 + 16);
          v27 = *(v17 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1B0B0A1E4((v27 > 1), v28 + 1, 1);
            v17 = v45;
          }

          *(v17 + 16) = v28 + 1;
          sub_1B03C60A4(v10, v17 + v40 + v28 * v18, &qword_1EB6E4260, &qword_1B0EC47E0);
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
        sub_1B0AEAEC4(v5, type metadata accessor for FindMissingMessages.CommandID);
        v25 = v24 == 2;
        v10 = v23;
        v18 = v22;
        Missing = v21;
        if (v25)
        {
          goto LABEL_11;
        }
      }

      sub_1B0398EFC(v15, &qword_1EB6E4260, &qword_1B0EC47E0);
LABEL_4:
      v19 += v18;
      --v16;
    }

    while (v16);
  }

  v29 = *(v17 + 16);
  if (v29)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v29, 0);
    v30 = v45;
    v31 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v32 = *(v39 + 72);
    do
    {
      v33 = v43;
      sub_1B03B5C80(v31, v43, &qword_1EB6E4260, &qword_1B0EC47E0);
      v34 = *v33;
      sub_1B0398EFC(v33, &qword_1EB6E4260, &qword_1B0EC47E0);
      v45 = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B0B09D44((v35 > 1), v36 + 1, 1);
        v30 = v45;
      }

      *(v30 + 16) = v36 + 1;
      *(v30 + 4 * v36 + 32) = v34;
      v31 += v32;
      --v29;
    }

    while (v29);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v30;
}

uint64_t sub_1B0AECC20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        v10 = *(v8 - 4);
        result = *(v8 - 1);
        v11 = *v8;
        v12 = *v8 >> 60;
        if (v12 != 11)
        {
          break;
        }

        if (v4 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        result = sub_1B05072A8(result, v11);
LABEL_6:
        ++v9;
        v8 += 3;
        if (v5 == v2)
        {
          goto LABEL_21;
        }
      }

      if (v12 == 15)
      {
        break;
      }

      if (v4 != 1)
      {
        goto LABEL_6;
      }

LABEL_14:
      v13 = *(v8 - 1);
      v14 = *v8;
      sub_1B0AEF1B0(result, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A424(0, *(v7 + 16) + 1, 1);
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v14;
      v18 = v13;
      if (v16 >= v15 >> 1)
      {
        result = sub_1B0B0A424((v15 > 1), v16 + 1, 1);
        v18 = v13;
        v17 = v14;
      }

      *(v7 + 16) = v16 + 1;
      v19 = v7 + 24 * v16;
      *(v19 + 32) = v10;
      *(v19 + 40) = v18;
      *(v19 + 48) = v17;
      v3 = MEMORY[0x1E69E7CC0];
      v6 = v26;
      if (v5 == v2)
      {
        goto LABEL_21;
      }
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v20 = *(v7 + 16);
  if (v20)
  {
    sub_1B0B09D44(0, v20, 0);
    v21 = v3;
    v22 = *(v3 + 16);
    v23 = 32;
    do
    {
      v24 = *(v7 + v23);
      v25 = *(v21 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09D44((v25 > 1), v22 + 1, 1);
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 4 * v22 + 32) = v24;
      v23 += 24;
      ++v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1B0AECE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v57 = a3;
  v49 = a2;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v46 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  result = a5(a1, a4, v23);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v10;
    v54 = result;
    v46 = v8;
    v47 = v18;
    v27 = 0;
    v50 = result + 32;
    v48 = v15;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v27;
      v28 = *(v57 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v59 = *(v50 + 4 * v58);
      v29 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v30 = *(v51 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_1B0AEAE5C(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AEAEC4(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v34 = *&v21[*(v33 + 48)];
      sub_1B0AEAEC4(v21, type metadata accessor for ClientCommand);
      if (v34 != v59)
      {
        goto LABEL_8;
      }

      v36 = v47;
      v35 = v48;
      while (1)
      {
        sub_1B0AEAE5C(v29, v36, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v36, v35, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AEAEC4(v35, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v45 = 1;
          goto LABEL_24;
        }
      }

      v37 = *(v35 + *(v33 + 48));
      sub_1B0AEAEC4(v35, type metadata accessor for ClientCommand);
      if (v37 != v59)
      {
        goto LABEL_13;
      }

      v38 = *(v49 + 16);
      if (v38)
      {
        v39 = v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v40 = *(v46 + 72);
        do
        {
          v41 = v55;
          sub_1B0AEAE5C(v39, v55, type metadata accessor for TaskHistory.Running);
          v42 = v53;
          sub_1B0AEF094(v41, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AEAEC4(v42, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v43 = *(v42 + 8);
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AEAEC4(v42 + *(v44 + 64), type metadata accessor for ClientCommand);
            if (v43 == v59)
            {
              goto LABEL_22;
            }
          }

          v39 += v40;
          --v38;
        }

        while (v38);
      }

LABEL_3:
      v27 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v45 = 0;
LABEL_24:

  return v45;
}

uint64_t sub_1B0AED35C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = type metadata accessor for DownloadTask.CommandID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A084(0, v10, 0);
    v11 = v18;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v12, v5, &qword_1EB6E4280, &qword_1B0EC4800);
      sub_1B0AEF094(&v5[*(v2 + 52)], v9, type metadata accessor for DownloadTask.CommandID);
      v18 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B0B0A084((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      *(v11 + 16) = v15 + 1;
      sub_1B0AEF094(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DownloadTask.CommandID);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1B0AED594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v7 = *(Missing - 8);
  MEMORY[0x1EEE9AC00](Missing - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A1C4(0, v10, 0);
    v11 = v18;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v12, v5, &qword_1EB6E4260, &qword_1B0EC47E0);
      sub_1B0AEF094(&v5[*(v2 + 52)], v9, type metadata accessor for FindMissingMessages.CommandID);
      v18 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B0B0A1C4((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      *(v11 + 16) = v15 + 1;
      sub_1B0AEF094(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for FindMissingMessages.CommandID);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1B0AED7CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        v10 = *v8;
        if (*v8)
        {
          break;
        }

        if (v4)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v9;
        v8 += 24;
        if (v5 == v2)
        {
          goto LABEL_17;
        }
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_10:
      v11 = *(v8 - 4);
      v12 = *(v8 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A204(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B0B0A204((v13 > 1), v14 + 1, 1);
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      *(v15 + 48) = v10;
      if (v5 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v16 = *(v7 + 16);
  if (v16)
  {
    sub_1B0B09DC4(0, v16, 0);
    v17 = *(v3 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v3 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09DC4((v20 > 1), v17 + 1, 1);
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 4 * v17 + 32) = v19;
      v18 += 24;
      ++v17;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0AED9C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, double))
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  result = a5(a1 & 1, a4, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v8;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_1B0AEAE5C(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_1B03E1BE8(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_1B0AEAE5C(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_1B03E1BE8(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_1B0AEAE5C(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1B0AEF094(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_1B03E1BE8(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_1B0AEDE44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        v10 = *(v8 - 4);
        result = *(v8 - 1);
        v11 = *v8;
        v12 = (*v8 >> 60) & 3;
        if (!v12)
        {
          if (!v4)
          {
            goto LABEL_14;
          }

          goto LABEL_5;
        }

        if (v12 != 1)
        {
          break;
        }

        if (v4 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        ++v9;
        v8 += 3;
        if (v5 == v2)
        {
          goto LABEL_21;
        }
      }

      if (v4 != 1)
      {
        result = sub_1B0AEF194(result, v11);
        goto LABEL_5;
      }

LABEL_14:
      v13 = *(v8 - 1);
      v14 = *v8;
      sub_1B0AEF178(result, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A404(0, *(v7 + 16) + 1, 1);
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v14;
      v18 = v13;
      if (v16 >= v15 >> 1)
      {
        result = sub_1B0B0A404((v15 > 1), v16 + 1, 1);
        v18 = v13;
        v17 = v14;
      }

      *(v7 + 16) = v16 + 1;
      v19 = v7 + 24 * v16;
      *(v19 + 32) = v10;
      *(v19 + 40) = v18;
      *(v19 + 48) = v17;
      v3 = MEMORY[0x1E69E7CC0];
      v6 = v26;
      if (v5 == v2)
      {
        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v20 = *(v7 + 16);
  if (v20)
  {
    sub_1B0B09DC4(0, v20, 0);
    v21 = v3;
    v22 = *(v3 + 16);
    v23 = 32;
    do
    {
      v24 = *(v7 + v23);
      v25 = *(v21 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09DC4((v25 > 1), v22 + 1, 1);
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 4 * v22 + 32) = v24;
      v23 += 24;
      ++v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1B0AEE08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  result = a5(a1, a4, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v8;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_1B0AEAE5C(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_1B03E1BE8(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_1B0AEAE5C(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_1B03E1BE8(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_1B0AEAE5C(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1B0AEF094(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_1B03E1BE8(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_1B0AEE50C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v70 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  MEMORY[0x1EEE9AC00](v63);
  v60 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v54 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v59 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = *(v4 + 72);
  v61 = *(v4 + 64);
  v62 = v27;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v28 = v4 + *(MissingMessages + 72);
  if (*(v28 + 24) && ((v70 >> 59) & 0x1E | (v70 >> 2) & 1) == 0xA)
  {
    v55 = v18;
    v56 = v8;
    v57 = v6;
    v58 = v5;
    v29 = swift_projectBox();
    sub_1B03B5C80(v29, v15, &qword_1EB6E3628, &unk_1B0EA2080);
    v30 = *(v63 + 48);
    v31 = *(v63 + 64);
    if (v62 == v15[1])
    {
      v32 = sub_1B04520BC(v61, *v15);

      if (v32)
      {
        sub_1B03C60A4(v15 + v30, v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v33 = sub_1B03C60A4(v15 + v31, v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v34 = *(v28 + 24);
        MEMORY[0x1EEE9AC00](v33);
        *(&v54 - 2) = v21;
        v35 = sub_1B0BA7094(sub_1B0AEF0FC, (&v54 - 4), v34);
        v5 = v58;
        if ((v36 & 1) == 0)
        {
          v37 = v35;
          if (sub_1B0AEBA2C(v35, 0, v67, v68, v69, sub_1B0A9EEE8))
          {
            v38 = v34;
            result = swift_isUniquelyReferenced_nonNull_native();
            v8 = v56;
            v6 = v57;
            if (result)
            {
              if ((v37 & 0x8000000000000000) == 0)
              {
                goto LABEL_9;
              }
            }

            else
            {
              result = sub_1B0B8C950(v38);
              v38 = result;
              if ((v37 & 0x8000000000000000) == 0)
              {
LABEL_9:
                v54 = v4;
                if (v37 < v38[2])
                {
                  _s20GrowWindowOfInterestV6ResultVMa(0);
                  sub_1B0AF2B0C(v26);
                  sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  *(v28 + 24) = v38;
                  sub_1B0398EFC(v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
                  v4 = v54;
LABEL_14:
                  v18 = v55;
                  goto LABEL_15;
                }

LABEL_32:
                __break(1u);
                return result;
              }
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_13:
        v8 = v56;
        v6 = v57;
        goto LABEL_14;
      }
    }

    else
    {
    }

    sub_1B0398EFC(v15 + v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v15 + v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v5 = v58;
    goto LABEL_13;
  }

LABEL_15:
  result = sub_1B0AEBA2C(0, 1, v67, v68, v69, sub_1B0A9EEE8);
  if ((result & 1) == 0)
  {
    return result;
  }

  v40 = v4 + *(MissingMessages + 44);
  v41 = *v40;
  v42 = *(v40 + 13);
  LOBYTE(v40) = *(v40 + 20);
  v72 = v42;
  v71 = v40;
  sub_1B0AF58C8(v41, v11);
  if ((*(v64 + 48))(v11, 1, v65) == 1)
  {
    v43 = &unk_1EB6E3670;
    v44 = &unk_1B0E9B260;
    v45 = v11;
  }

  else
  {
    sub_1B03C60A4(v11, v18, &unk_1EB6E26C0, &unk_1B0E9DE10);
    if (((v70 >> 59) & 0x1E | (v70 >> 2) & 1) == 0xA)
    {
      v46 = v18;
      v47 = swift_projectBox();
      v48 = v60;
      sub_1B03B5C80(v47, v60, &qword_1EB6E3628, &unk_1B0EA2080);
      v49 = *(v63 + 48);
      v50 = *(v63 + 64);
      if (v62 == v48[1])
      {
        v51 = sub_1B04520BC(v61, *v48);

        if (v51)
        {
          v52 = v59;
          sub_1B03C60A4(v48 + v49, v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B03D06F8();
          v53 = sub_1B0E46E08();
          sub_1B0398EFC(v48 + v50, &unk_1EB6E26C0, &unk_1B0E9DE10);
          if (v53)
          {
            (*(v6 + 16))(v8, v52, v5);
            sub_1B0E46ED8();
          }

          sub_1B0398EFC(v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v43 = &unk_1EB6E26C0;
          v44 = &unk_1B0E9DE10;
          v45 = v46;
          return sub_1B0398EFC(v45, v43, v44);
        }
      }

      else
      {
      }

      sub_1B0398EFC(v46, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v48 + v50, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v43 = &unk_1EB6E1AF0;
      v44 = &unk_1B0E9AF40;
      v45 = v48 + v49;
    }

    else
    {
      v43 = &unk_1EB6E26C0;
      v44 = &unk_1B0E9DE10;
      v45 = v18;
    }
  }

  return sub_1B0398EFC(v45, v43, v44);
}

uint64_t sub_1B0AEECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v11 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  if ((a5[1] & 1) == 0)
  {
    v18 = *a5;
    v37 = a4;
    v15 = sub_1B0B6C188(a2, a3, v18);
    a4 = v37;
    if ((v15 & 0x100000000) == 0)
    {
      v36 = v15;
      sub_1B0AEAE5C(a6, v17, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(a6, v13, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v19 = sub_1B0E43988();
      v20 = sub_1B0E458D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v20;
        v22 = v21;
        v35 = swift_slowAlloc();
        v40 = v35;
        *v22 = 68159491;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v32 = &v13[*(v11 + 20)];
        v33 = v19;
        *(v22 + 10) = *v32;
        *(v22 + 11) = 2082;
        v23 = &v17[*(v11 + 20)];
        *(v22 + 13) = sub_1B0399D64(*(v23 + 1), *(v23 + 2), &v40);
        *(v22 + 21) = 1040;
        *(v22 + 23) = 2;
        *(v22 + 27) = 512;
        LODWORD(v32) = *(v32 + 12);
        sub_1B0AEAEC4(v13, type metadata accessor for MailboxTaskLogger);
        *(v22 + 29) = v32;
        *(v22 + 31) = 2160;
        *(v22 + 33) = 0x786F626C69616DLL;
        *(v22 + 41) = 2085;
        v24 = *(v23 + 4);
        LODWORD(v23) = *(v23 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v17, type metadata accessor for MailboxTaskLogger);
        v38 = v24;
        v39 = v23;
        v25 = sub_1B0E44BA8();
        v27 = sub_1B0399D64(v25, v26, &v40);

        *(v22 + 43) = v27;
        *(v22 + 51) = 1024;
        *(v22 + 53) = v36;
        v28 = v33;
        _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating server next UID to %u.", v22, 0x39u);
        v29 = v35;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v29, -1, -1);
        MEMORY[0x1B272C230](v22, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v13, type metadata accessor for MailboxTaskLogger);

        v15 = sub_1B0AEAEC4(v17, type metadata accessor for MailboxTaskLogger);
      }

      a4 = v37;
    }
  }

  MEMORY[0x1EEE9AC00](v15);
  *(&v31 - 4) = a5;
  *(&v31 - 3) = a6;
  *(&v31 - 2) = a4;
  return sub_1B0B86564(a2, a3, sub_1B0AEF07C, (&v31 - 6));
}